//
//  UIViewController+CYPush.h
//  CYUtility
//
//  Created by 天天理财 on 2017/11/11.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (CYPush)


- (void)cy_pushViewController:(NSString *)controllerName withParams:(NSDictionary *)propertys completion:(void(^)(void))block;

@end
