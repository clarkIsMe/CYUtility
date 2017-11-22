//
//  UIViewController+CYGoback.h
//  CYUtility
//
//  Created by 天天理财 on 2017/11/11.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (CYGoback)

/**
 默认黑色返回按钮
 */
- (void)cy_setupDefaultBackButton;
- (void)cy_setupDefaultBackButtonAfterBlock:(void(^)(void))block; //退出之前先执行block

/**
 自定义按钮图标

 @param iconName 图标名称
 */
- (void)cy_setupBackButtonIcon:(NSString *)iconName;
- (void)cy_setupBackButtonIcon:(NSString *)iconName AfterBlock:(void(^)(void))block; //退出之前先执行block

/**
 自定义按钮

 @param backButton Button_Objec
 */
- (void)cy_setupBackButton:(UIButton *)backButton;
- (void)cy_setupBackButton:(UIButton *)backButton AfterBlock:(void(^)(void))block; //退出之前先执行block

@end
