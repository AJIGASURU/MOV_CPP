//
//  Open_CV.hpp
//  appp
//
//  Created by MacUser on 2020/10/02.
//

#ifndef Open_CV_hpp
#define Open_CV_hpp

//CVは一番上!
#include <opencv2/opencv.hpp>
#include <stdio.h>

class ImageUse{
//ImageUse();
public:
  ImageUse();
  int SelectURL(char* url);
  int ImageShow();
};


#endif /* Open_CV_hpp */
