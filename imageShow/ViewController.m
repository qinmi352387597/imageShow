//
//  ViewController.m
//  imageShow
//
//  Created by admin on 2017/1/4.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"
#import "ImageCompare.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgae1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _imgae1.contentMode=UIViewContentModeScaleAspectFit;
    _image2.contentMode=UIViewContentModeScaleAspectFit;
    _imgae1.image=[UIImage imageNamed:@"image1.jpg"];
    
    _image2.image=[UIImage imageNamed:@"image10.jpg"];
    
    
    CGFloat f=1-[ImageCompare isImageFloat:_imgae1.image likeImage:_image2.image];
    
    BOOL flag= [ImageCompare isImage:_imgae1.image likeImage:_image2.image];
    if (flag) {
        NSLog(@"图片相似较高,相似度为%lf",f);
    }
    else{
    
       NSLog(@"图片相似度太低,相似度为%lf",f);
    }
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
