//
//  UIFont+PingFang.m
//  CYUtility
//
//  Created by 天天理财 on 2017/11/9.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "UIFont+PingFang.h"

@implementation UIFont (PingFang)

+ (UIFont *)cy_pingfangFontOfSize:(CGFloat)size {
    if (@available(iOS 9.0, *)) {
        return [UIFont fontWithName:@"PingFangSC-Light" size:size];
    }else {
        return [UIFont systemFontOfSize:size];
    }
}

@end
