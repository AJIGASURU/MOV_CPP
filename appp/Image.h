//
//  Image.h
//  appp
//
//  Created by MacUser on 2020/10/11.
//

#ifndef Image_h
#define Image_h

#import "Open_CV.hpp"
#import <Foundation/Foundation.h>
//#import <objc/Object.h>


@interface Image : NSObject{ //これはあくまでImageクラスなのでこれを持っておくひとつ上のクラスを作れ。
  @public
  ImageUse image;
}

- (void)load_img:(NSString*)path;//+がクラスメソッド?

@end

#endif /* Image_h */
