//C++
#include <map>
#include <cmath>
#include <chrono>
#include <vector>
#include <random>
#include <memory>
#include <iostream>
#include <filesystem>
// self
#include "pipeline.h"


namespace {
    void run(const std::function<void()>& work=[]{}, const std::string message="") {
        auto start = std::chrono::steady_clock::now();
        work();
        auto finish = std::chrono::steady_clock::now();
        auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(finish - start);
        std::cout << message << " " << duration.count() << " ms" <<  std::endl;
    }

    void cv_info(const cv::Mat& one_image) {
        std::cout << "高  :  " << one_image.rows << "\n宽  :  " << one_image.cols << "\n通道 :  " << one_image.channels() << std::endl;
        std::cout << "步长 :  " << one_image.step << std::endl;
    }

    void cv_show(const cv::Mat& one_image, const char* info="") {
        cv::imshow(info, one_image);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

    bool cv_write(const cv::Mat& source, const std::string save_path) {
        return cv::imwrite(save_path, source, std::vector<int>({cv::IMWRITE_PNG_COMPRESSION, 0}));
    }

    cv::Mat cv_resize(cv::Mat& one_image, const int height, const int width, const int _interpolation=cv::INTER_LINEAR) {
		cv::Mat result;
		cv::resize(one_image, result, cv::Size(width, height), 0, 0, _interpolation);
		return result;
	}

	cv::Mat make_pad(const cv::Mat& one_image, const int pad_H, const int pad_W) {
		cv::Mat padded_image;
		cv::copyMakeBorder(one_image, padded_image, pad_H, pad_H, pad_W, pad_W, cv::BORDER_REPLICATE);
		return padded_image;
	}

	cv::Mat cv_concat(std::vector<cv::Mat> sequence) {
        cv::Mat result;
        cv::hconcat(sequence, result);
        return result;
    }
}




namespace pipeline {

    using list_type = std::vector<std::pair<std::string, int> >;

    std::map<std::string, list_type> get_images_for_classification(
            const std::filesystem::path dataset_path, const std::vector<std::string> categories={}, const std::pair<float, float>& ratios={0.8, 0.1}) {
        // 遍历 dataset_path 文件夹下指定的类别
        list_type all_images_list;
        const int categories_num = categories.size();
        for(int i = 0;i < categories_num; ++i) {
            const auto images_dir = dataset_path / categories[i];
            assert(std::filesystem::exists(images_dir) and std::string(images_dir.string() + " 路径不存在!").c_str());
            auto walker = std::filesystem::directory_iterator(images_dir);
            for(const auto& iter : walker)
                all_images_list.emplace_back(iter.path().string(), i);
        }
        // 打乱图像列表
        std::shuffle(all_images_list.begin(), all_images_list.end(), std::default_random_engine(212));
        // 将数据集划分成三部分
        const int total_size = all_images_list.size();
        assert(ratios.first > 0 and ratios.second > 0 and ratios.first + ratios.second < 1);
        const int train_size = int(total_size * ratios.first);
        const int test_size = int(total_size * ratios.second);
        std::map<std::string, list_type> results;
        results.emplace("train", list_type(all_images_list.begin(), all_images_list.begin() + train_size));
        results.emplace("test", list_type(all_images_list.begin() + train_size, all_images_list.begin() + train_size + test_size));
        results.emplace("valid", list_type(all_images_list.begin() + train_size + test_size, all_images_list.end()));
        std::cout << "train  :  " << results["train"].size() << "\n" << "test   :  " << results["test"].size() << "\n" << "valid  :  " << results["valid"].size() << "\n";
        return results;
    }

    using data_type = float;
    class Tensor3D {
    public:
        const int C, H, W;
        data_type* data;
        Tensor3D() = default;
        Tensor3D(uchar* const img_ptr, const int _C, const int _H, const int _W)
            : C(_C), H(_H), W(_W), data(new data_type[_C * _H * _W]) {
            // 从 img_ptr 数据中获取图像内容
            const int length = H * W;
            const int length_2 = 2 * length;
            for(int i = 0;i < length; ++i) { // OpenCV 的内存排列顺序真恶心
                const int p = 3 * i;
                this->data[i] = img_ptr[p] * 1.f / 255;
                this->data[length + i] = img_ptr[p + 1] * 1.f / 255;
                this->data[length_2 + i] = img_ptr[p + 2] * 1.f / 255;
            }
        }
        cv::Mat opecv_mat() const {
            cv::Mat origin(H, W, CV_8UC3);
            const int length = H * W;
            for(int i = 0;i < length; ++i) {
                const int p = 3 * i;
                origin.data[p] = cv::saturate_cast<uchar>(255 * data[i]);
                origin.data[p + 1] = cv::saturate_cast<uchar>(255 * data[i + length]);
                origin.data[p + 2] = cv::saturate_cast<uchar>(255 * data[i + length + length]);
            }
            return origin;
        }
        void print_shape() const {
            std::cout << this->C << " x " << this->H << " x " << this->W << "\n";
        }
        void normalize(const std::vector<float>& mean) {}
        ~Tensor3D() noexcept {
            if(this->data != nullptr) {
                delete this->data;
                this->data = nullptr;
                std::cout << "销毁一次\n";
            }
        };
    };
    using tensor = std::shared_ptr<Tensor3D>;

    class DataLoader {
        using batch_type = std::vector< std::pair<tensor, int> >;
    private:
        list_type images_list;
        int images_num;
        const int batch_size;
        const bool augment;
        const bool shuffle;
        const int seed;
        int iter = -1;
        // 缓冲区, 不用每次分配
    public:
        explicit DataLoader(const list_type& _images_list, const int _bs=1, const bool _aug=false, const bool _shuffle=true, const int _seed=212)
                : images_list(_images_list), batch_size(_bs), augment(_aug), shuffle(_shuffle), seed(_seed) {
            this->images_num = this->images_list.size();
        }
        int length() const {return this->images_num;}
        batch_type generate_batch() {
            // 我要开始算有几个 batch, 然后将 batch 组合在一起
            batch_type one_batch;
            one_batch.reserve(this->batch_size);
            for(int i = 0;i < this->batch_size; ++i)
                one_batch.emplace_back(this->__getitem__());
            return one_batch;
        }
    private:
        std::pair<tensor, int> __getitem__() {
            // 获取图像序号
            ++this->iter;
            if(this->iter == this->images_num) {
                this->iter = 0; // 重新开始取, 然后再一次打乱列表
                if(this->shuffle) std::shuffle(this->images_list.begin(), this->images_list.end(), std::default_random_engine(this->seed));
            }
            // 读取图像
            const auto& image_path = this->images_list[this->iter].first;
            const int image_label = this->images_list[this->iter].second;
            cv::Mat origin = cv::imread(image_path);
            // resize
            cv::resize(origin, origin, {224, 224});
            // 对图像做数据增强
            // 将图像转化成 float 数据, 且是 Tensor 形式, C x H x W;
            // 这种方式还是差了一点, 因为每个 batch 都要销毁 tensor, 效率上还是慢了
            return std::pair<tensor, int>(new Tensor3D(origin.data, origin.channels(), origin.rows, origin.cols), image_label);
        }
    };
}



int main() {
    std::cout << "opencv  :  " << CV_VERSION << std::endl;

    // 指定类别
    std::vector<std::string> categories({"dog", "panda", "bird"});

    // 获取图片
    auto dataset = pipeline::get_images_for_classification(
            "../datasets/animals", categories);

    // 构造数据流
    pipeline::DataLoader train_loader(dataset["train"], 4, false, true);
    for(int i = 0;i < 1000; ++i) {
        auto sample = train_loader.generate_batch();
        for(const auto & it : sample) {
            std::cout << categories[it.second] << std::endl;
            cv_show(it.first->opecv_mat());
        }
        std::cout << i << "...\n";
    }
    return 0;
}


/*
 * //C++
#include <map>
#include <cmath>
#include <chrono>
#include <vector>
#include <random>
#include <memory>
#include <iostream>
#include <filesystem>
// self
#include "pipeline.h"


namespace {
    void run(const std::function<void()>& work=[]{}, const std::string message="") {
        auto start = std::chrono::steady_clock::now();
        work();
        auto finish = std::chrono::steady_clock::now();
        auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(finish - start);
        std::cout << message << " " << duration.count() << " ms" <<  std::endl;
    }

    void cv_info(const cv::Mat& one_image) {
        std::cout << "高  :  " << one_image.rows << "\n宽  :  " << one_image.cols << "\n通道 :  " << one_image.channels() << std::endl;
        std::cout << "步长 :  " << one_image.step << std::endl;
    }

    void cv_show(const cv::Mat& one_image, const char* info="") {
        cv::imshow(info, one_image);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

    bool cv_write(const cv::Mat& source, const std::string save_path) {
        return cv::imwrite(save_path, source, std::vector<int>({cv::IMWRITE_PNG_COMPRESSION, 0}));
    }

    cv::Mat cv_resize(cv::Mat& one_image, const int height, const int width, const int _interpolation=cv::INTER_LINEAR) {
		cv::Mat result;
		cv::resize(one_image, result, cv::Size(width, height), 0, 0, _interpolation);
		return result;
	}

	cv::Mat make_pad(const cv::Mat& one_image, const int pad_H, const int pad_W) {
		cv::Mat padded_image;
		cv::copyMakeBorder(one_image, padded_image, pad_H, pad_H, pad_W, pad_W, cv::BORDER_REPLICATE);
		return padded_image;
	}

	cv::Mat cv_concat(std::vector<cv::Mat> sequence) {
        cv::Mat result;
        cv::hconcat(sequence, result);
        return result;
    }
}




namespace pipeline {

    using list_type = std::vector<std::pair<std::string, int> >;

    std::map<std::string, list_type> get_images_for_classification(
            const std::filesystem::path dataset_path, const std::vector<std::string> categories={}, const std::pair<float, float>& ratios={0.8, 0.1}) {
        // 遍历 dataset_path 文件夹下指定的类别
        list_type all_images_list;
        const int categories_num = categories.size();
        for(int i = 0;i < categories_num; ++i) {
            const auto images_dir = dataset_path / categories[i];
            assert(std::filesystem::exists(images_dir) and std::string(images_dir.string() + " 路径不存在!").c_str());
            auto walker = std::filesystem::directory_iterator(images_dir);
            for(const auto& iter : walker)
                all_images_list.emplace_back(iter.path().string(), i);
        }
        // 打乱图像列表
        std::shuffle(all_images_list.begin(), all_images_list.end(), std::default_random_engine(212));
        // 将数据集划分成三部分
        const int total_size = all_images_list.size();
        assert(ratios.first > 0 and ratios.second > 0 and ratios.first + ratios.second < 1);
        const int train_size = int(total_size * ratios.first);
        const int test_size = int(total_size * ratios.second);
        std::map<std::string, list_type> results;
        results.emplace("train", list_type(all_images_list.begin(), all_images_list.begin() + train_size));
        results.emplace("test", list_type(all_images_list.begin() + train_size, all_images_list.begin() + train_size + test_size));
        results.emplace("valid", list_type(all_images_list.begin() + train_size + test_size, all_images_list.end()));
        std::cout << "train  :  " << results["train"].size() << "\n" << "test   :  " << results["test"].size() << "\n" << "valid  :  " << results["valid"].size() << "\n";
        return results;
    }

    using data_type = float;
    class Tensor3D {
    public:
        const int C, H, W;
        data_type* data;
        Tensor3D() = default;
        // 分配内存
        Tensor3D(const int _C, const int _H, const int _W)
            : C(_C), H(_H), W(_W), data(new data_type[_C * _H * _W]) {}
        // 从图像指针中读取
        void read_from_opencv_mat(uchar* const img_ptr) {
            // 从 img_ptr 数据中获取图像内容
            const int length = H * W;
            const int length_2 = 2 * length;
            for(int i = 0;i < length; ++i) { // OpenCV 的内存排列顺序真恶心
                const int p = 3 * i;
                this->data[i] = img_ptr[p] * 1.f / 255;
                this->data[length + i] = img_ptr[p + 1] * 1.f / 255;
                this->data[length_2 + i] = img_ptr[p + 2] * 1.f / 255;
            }
        }
        cv::Mat opecv_mat() const {
            cv::Mat origin(H, W, CV_8UC3);
            const int length = H * W;
            for(int i = 0;i < length; ++i) {
                const int p = 3 * i;
                origin.data[p] = cv::saturate_cast<uchar>(255 * data[i]);
                origin.data[p + 1] = cv::saturate_cast<uchar>(255 * data[i + length]);
                origin.data[p + 2] = cv::saturate_cast<uchar>(255 * data[i + length + length]);
            }
            return origin;
        }
        void print_shape() const {
            std::cout << this->C << " x " << this->H << " x " << this->W << "\n";
        }
        void normalize(const std::vector<float>& mean) {}
        ~Tensor3D() noexcept {
            if(this->data != nullptr) {
                delete this->data;
                this->data = nullptr;
                std::cout << "销毁一次\n";
            }
        };
    };
    using tensor = std::shared_ptr<Tensor3D>;

    class DataLoader {
        using batch_type = std::vector< std::pair<tensor, int> >;
    private:
        list_type images_list; // 数据集列表, image <==> label
        int images_num;  // 这个子数据集一共有多少张图像和对应的标签
        const int batch_size; // 每次打包几张图象
        const bool augment; // 是否要做图像增强
        const bool shuffle; // 是否要打乱列表
        const int seed; // 每次随机打乱列表的种子
        int iter = -1;  // 当前采到了第 iter 张图像
        std::vector<tensor> buffer; // batch 缓冲区, 不用每次分配和销毁
        const int H = 224, W = 224, C = 3; // 允许的图像尺寸
    public:
        explicit DataLoader(const list_type& _images_list, const int _bs=1, const bool _aug=false, const bool _shuffle=true, const int _seed=212)
                : images_list(_images_list), batch_size(_bs), augment(_aug), shuffle(_shuffle), seed(_seed) {
            this->images_num = this->images_list.size();
            this->buffer.reserve(this->batch_size);
            for(int i = 0;i < this->batch_size; ++i)
                this->buffer.emplace_back(new Tensor3D(C, H, W));
        }
        int length() const {return this->images_num;}
        batch_type generate_batch() {
            // 我要开始算有几个 batch, 然后将 batch 组合在一起
            batch_type one_batch;
            one_batch.reserve(this->batch_size);
            for(int i = 0;i < this->batch_size; ++i)
                one_batch.emplace_back(this->add_to_buffer(i));
            return one_batch;
        }
    private:
        std::pair<tensor, int> add_to_buffer(const int batch_index) {
            // 获取图像序号
            ++this->iter;
            if(this->iter == this->images_num) {
                this->iter = 0;  // 重新开始取
                if(this->shuffle) { // 然后再一次打乱列表
                    std::shuffle(this->images_list.begin(), this->images_list.end(), std::default_random_engine(this->seed)); // std::cout << this->images_list[0].first << ", " << this->images_list[0].second << std::endl;
                }
            }
            // 读取图像
            const auto& image_path = this->images_list[this->iter].first;
            const int image_label = this->images_list[this->iter].second;
            cv::Mat origin = cv::imread(image_path);
            // resize
            cv::resize(origin, origin, {W, H});
            // 对图像做数据增强
            // 直接对 buffer 进行填充, 将图像转化成 float 数据, 且是 Tensor 形式, C x H x W;
            this->buffer[batch_index]->read_from_opencv_mat(origin.data);
            // 返回图像内容和标签
            return std::pair<tensor, int>(this->buffer[batch_index], image_label);
        }
    };
}



int main() {
    std::cout << "opencv  :  " << CV_VERSION << std::endl;

    // 指定类别
    std::vector<std::string> categories({"dog", "panda", "bird"});

    // 获取图片
    auto dataset = pipeline::get_images_for_classification(
            "../datasets/animals", categories);

    // 构造数据流
    pipeline::DataLoader train_loader(dataset["train"], 4, false, true);
    for(int i = 0;i < 1300; ++i) {
        auto sample = train_loader.generate_batch();
        for(const auto & it : sample) {
            // std::cout << categories[it.second] << std::endl;
            // cv_show(it.first->opecv_mat());
        }
        // std::cout << i << "...\n";
    }
    return 0;
}

 */