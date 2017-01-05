//
//  ImageCompare.h
//  imageShow
//
//  Created by admin on 2017/1/4.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ImageCompare : NSObject


+ (BOOL)isImage:(UIImage *)image1 likeImage:(UIImage *)image2;

+ (float)isImageFloat:(UIImage *)image1 likeImage:(UIImage *)image2;

@end
