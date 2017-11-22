//
//  UIViewController+CYGoback.m
//  CYUtility
//
//  Created by 天天理财 on 2017/11/11.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "UIViewController+CYGoback.h"

@implementation UIViewController (CYGoback)

- (void)cy_setupDefaultBackButton {
    [self cy_addBackButton:nil];
}

- (void)cy_setupBackButtonIcon:(NSString *)iconName {
    [self cy_addBackButton:iconName];
}

- (void)cy_setupBackButton:(UIButton *)backButton {
    [self cy_addBackButtonTarget:backButton];
}

- (void)cy_setupDefaultBackButtonAfterBlock:(void (^)(void))block {
    [self cy_addBackButton:nil];
}


//构建按钮
- (void)cy_addBackButton:(NSString *)icon {
    if (self.navigationController.viewControllers.count > 1) {
        UIButton *gobackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 35)];
        [gobackButton setImage:[UIImage imageNamed:icon ? icon : @"common_black_back_icon"] forState:UIControlStateNormal];
        [gobackButton addTarget:self action:@selector(cy_goBackAction) forControlEvents:UIControlEventTouchUpInside];
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:gobackButton];
    }
}

//addTarget
- (void)cy_addBackButtonTarget:(UIButton *)backButton {
    [backButton addTarget:self action:@selector(cy_goBackAction) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
}

//返回事件
- (void)cy_goBackAction {
    [self.view endEditing:YES];
    if (self.navigationController && [self.navigationController.viewControllers indexOfObject:self] > 0) {
        [self.navigationController popViewControllerAnimated:YES];
    }else if(self.presentingViewController) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }else {
        NSAssert(NO, @"cy_goBackAction 异常");
    }
}

@end
