//
//  Open_CV.cpp
//  appp
//
//  Created by MacUser on 2020/10/02.
//


//cv::Mat img;
//img = cv::imread("suwawachan.jpg");
//cv::imshow("title", img);
#include "Open_CV.hpp"

ImageUse::ImageUse(){//コンストラクタ
  
}

int ImageUse::ImageShow(){
  std::cout << "ImageShow()りな！\n";
  
  /*
  FILE* fp = fopen("./images/out.png", "r");
      if (fp == NULL) {
          std::cout << "NULLりな！\n";
          return -1;
      }
      fclose(fp);
   */
  /*
  FILE *outputfile;         // 出力ストリーム
    outputfile = fopen("d.txt", "r");  // ファイルを書き込み用にオープン(開く)
    if (outputfile == NULL) {          // オープンに失敗した場合
      printf("cannot open\n");         // エラーメッセージを出して
      exit(1);                         // 異常終了
    }
   */
//fprintf(outputfile, "My name is Enokida Yuuichirou.\n"); // ファイルに書く
  /*
  printf("file open\n");
    fclose(outputfile);
   */
///Users/macuser/Library/Containers/com.icloud-mehikari58.appp/Data
   
  /*
  const char *dir = "Desktop/program/jikken/imgs";
      struct stat statBuf;

      if (stat(dir, &statBuf) == 0)
          printf("ディレクトリ%sは存在します。\n", dir);
      else
          printf("ディレクトリ%sは存在しません。\n。", dir);
   */
  
  /*
  std::__fs::filesystem::path path = std::__fs::filesystem::current_path();
    std::cout << path.string() << std::endl;
  
  std::__fs::filesystem::path result = std::__fs::filesystem::absolute("Desktop/program/jikken/imgs/1out.png");
    std::cout << result.string() << std::endl;
   */

  cv::Mat img_sample = cv::imread("imgs/6-2.png");
  int width = img_sample.rows;
  std::cout << width << "\n";
  if(img_sample.empty()){
    std::cout << "画像が読み込まれてないりな！\n";
    return -1;
  };
  cv::imshow("show_image", img_sample);
  return 0;
}

int ImageUse::SelectURL(char* url){
  std::cout << url << " SELECT URL\n";
  return 0;
}
