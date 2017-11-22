//
//  UIViewController+CYPush.m
//  CYUtility
//
//  Created by 天天理财 on 2017/11/11.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "UIViewController+CYPush.h"
#import <objc/runtime.h>

@implementation UIViewController (CYPush)

- (void)cy_pushViewController:(NSString *)controllerName withParams:(NSDictionary *)propertys completion:(void(^)(void))block
{
    const char *className = [controllerName cStringUsingEncoding:NSASCIIStringEncoding];
    // 从一个字串返回一个类
    Class newClass = objc_getClass(className);
    // 创建对象
    id instance = [[newClass alloc] init];
    // 检测类合法性
    // 对该对象赋值属性
    [propertys enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        // 检测这个对象是否存在该属性
        if ([self checkIsExistPropertyWithInstance:instance verifyPropertyName:key]) {
            // 利用kvc赋值
            [instance setValue:obj forKey:key];
        }
    }];
    [instance setValue:@(YES) forKey:@"hidesBottomBarWhenPushed"];
    // 获取导航控制器
    UITabBarController *tabVC = (UITabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    if ([[tabVC class] isSubclassOfClass:[UINavigationController class]]) {
        // push到对应的控制器
        [(UINavigationController*)tabVC pushViewController:instance animated:YES];
    }else if([[tabVC class] isSubclassOfClass:[UITabBarController class]]) {
        UINavigationController *pushClassStance = (UINavigationController *)tabVC.viewControllers[tabVC.selectedIndex];
        // push到对应的控制器
        [pushClassStance pushViewController:instance animated:YES];
    }else {
        // present到对应的控制器
        [self presentViewController:instance animated:YES completion:nil];
    }
    //跳转成功之后要做的事情
    if (block) {
        block();
    }
    
}

//检测是否有某个属性
- (BOOL)checkIsExistPropertyWithInstance:(id)instance verifyPropertyName:(NSString *)verifyPropertyName
{
    /***
     只操作属性，包括本类的公有属性和私有属性，父类的公有属性。
     不操作本类和父类的成员变量，以及父类的私有属性。
     ***/
    unsigned int outCount1, outCount2, i;
    // 获取本类对象里的属性列表
    objc_property_t * properties = class_copyPropertyList([instance class], &outCount1);
    // 获取父类对象里的属性列表
    objc_property_t * superProperties = class_copyPropertyList([instance superclass], &outCount2);
    objc_property_t lists[outCount1+outCount2];
    memcpy(lists, properties, outCount1*sizeof(objc_property_t));
    memcpy(lists+outCount1, superProperties, outCount2*sizeof(objc_property_t));
    
    for (i = 0; i < outCount1+outCount2; i++) {
        objc_property_t property =lists[i];
        //  属性名转成字符串
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        // 判断该属性是否存在
        if ([propertyName isEqualToString:verifyPropertyName]) {
            free(properties);
            free(superProperties);
            return YES;
        }
    }
    free(properties);
    free(superProperties);
    return NO;
}

@end
