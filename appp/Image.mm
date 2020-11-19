//
//  Image.m
//  appp
//
//  Created by MacUser on 2020/10/11.
//

#import "Image.h"

@implementation Image

- (void)load_img:(NSString*)path{
  printf("loading_img\n");
  //NSString->charポインタ？NSStringクラスのUTF8Stringメソッド
  //ここのimageの修飾できねえのかな。まあいいか。
  image.SelectURL((char *) [path UTF8String]);
}

@end
