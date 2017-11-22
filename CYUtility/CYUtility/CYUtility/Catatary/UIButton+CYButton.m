//
//  UIButton+CYButton.m
//  CYUtility
//
//  Created by 春雨 on 2017/11/20.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "UIButton+CYButton.h"
#import <objc/runtime.h>

@implementation UIButton (CYButton)

- (void)addAction:(void (^)(void))block {
    objc_setAssociatedObject(self, @"UIButton_CYButton_blockKey", block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)addAction:(void (^)(void))block forControlEvents:(UIControlEvents)UIControlEvents {
    objc_setAssociatedObject(self, @"UIButton_CYButton_blockKey", block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(action:) forControlEvents:UIControlEvents];
}

- (void)action:(UIButton *)btn {
    void(^block)(void) = objc_getAssociatedObject(self, @"UIButton_CYButton_blockKey");
    block();
}

@end
