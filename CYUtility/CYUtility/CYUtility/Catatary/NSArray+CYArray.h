//
//  NSArray+CYArray.h
//  CYUtility
//
//  Created by 天天理财 on 2017/11/11.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (CYArray)

/**
 防止数组越界崩溃
 
 此处若使用 swizzleMethod 方法替换会引发的问题：
 1、__NSSingleObjectArrayI 、 __NSArrayM 、 __NSArrayI 三个隐藏类隐患较多
 2、在某些三方SDK中可能会引发意外Crash
 */
- (id)cy_objectAtIndex:(NSUInteger)index;

@end
