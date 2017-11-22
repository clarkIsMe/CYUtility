//
//  UIImage+CYImage.m
//  CYUtility
//
//  Created by 天天理财 on 2017/11/11.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "UIImage+CYImage.h"

@implementation UIImage (CYImage)

+ (UIImage *)cy_imageNamed:(NSString *)imageName {
    return [UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:imageName]];
}

@end
