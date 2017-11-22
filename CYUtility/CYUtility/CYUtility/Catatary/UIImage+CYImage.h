//
//  UIImage+CYImage.h
//  CYUtility
//
//  Created by 天天理财 on 2017/11/11.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CYImage)

/**
 加载较大的图片时使用这个方法;
 加载不需要缓存的图片时用这个方法；
 注意：
 1、该方法可以自动识别 2x 3x ，但图片必须存在于 bundle 中
 2、使用该方法不能获取 Assets 中的图片路径
 3、对于 xcode 9 需要 Build Phase -> Copy Bundle Resources 添加图片
 
 @param imageName 图片完整名称，带后缀,例：home.png
 @return 图片
 */
+ (UIImage *)cy_imageNamed:(NSString *)imageName;

@end
