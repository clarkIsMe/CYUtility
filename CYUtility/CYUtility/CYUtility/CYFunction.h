//
//  CYFunction.h
//  CYUtility
//
//  Created by 天天理财 on 2017/11/10.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYFunction : NSObject

/**
 判断对象是否为:nil,[NSNull null],空数组,空字典, 空字符串

 @param obj bool
 @return oc 对象
 */
bool CYObjIsEmpty(NSObject *obj);

@end
