//
//  NSTimer+CYTimer.h
//  CYUtility
//
//  Created by 天天理财 on 2017/11/9.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (CYTimer)

/**
 相比系统提供的定时器，该定时器可以避免循环引用问题;
 Ios 10.0以后可以选择系统提供的带block的定时器
 */
+ (NSTimer *)cy_scheduledTimerWithTimeInterval:(NSTimeInterval)second repeats:(BOOL)repeats block:(void(^)(NSTimer *timer))block;

@end
