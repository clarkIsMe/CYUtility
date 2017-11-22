//
//  UIButton+CYButton.h
//  CYUtility
//
//  Created by 春雨 on 2017/11/20.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CYButton)

/**
 为UIButton添加block事件，默认事件为：UIControlEventTouchUpInside

 @param block 方法体
 */
- (void)addAction:(void(^)(void))block;

/**
 为UIButton添加block事件

 @param block 方法体
 @param UIControlEvents 事件类型
 */
- (void)addAction:(void(^)(void))block forControlEvents:(UIControlEvents)UIControlEvents;

@end
