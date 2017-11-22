//
//  NSTimer+CYTimer.m
//  CYUtility
//
//  Created by 天天理财 on 2017/11/9.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "NSTimer+CYTimer.h"

@implementation NSTimer (CYTimer)

+ (NSTimer *)cy_scheduledTimerWithTimeInterval:(NSTimeInterval)second repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block {
    return [self scheduledTimerWithTimeInterval:second target:self selector:@selector(cy_blockInvoke:) userInfo:[block copy] repeats:repeats];
}

+ (void)cy_blockInvoke:(NSTimer *)timer{
    void(^block)(NSTimer *timer) = timer.userInfo;
    if (block) {
        block(timer);
    }
}

@end
