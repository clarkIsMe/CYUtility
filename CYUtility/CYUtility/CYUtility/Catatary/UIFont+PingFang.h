//
//  UIFont+PingFang.h
//  CYUtility
//
//  Created by 天天理财 on 2017/11/9.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (PingFang)

/**
 Ios 9及以上系统版本使用苹方字体，否则使用系统默认字体

 @param size 字体大小
 @return UIFont对象
 */
+ (UIFont *)cy_pingfangFontOfSize:(CGFloat)size;

@end
