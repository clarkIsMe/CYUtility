//
//  BlockTest.m
//  CYUtility
//
//  Created by 春雨 on 2017/11/21.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "BlockTest.h"

@implementation BlockTest

- (void)test {
    __weak __typeof(self)weakSelf = self;
    _block = ^void {
        [weakSelf function];
    };
    dispatch_queue_t queue = dispatch_queue_create("tk.bourne.testQueue", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        self.block();
    });
}

- (void)function {
    for (int i = 0; i< 1000; i++) {
        NSLog(@"BlockTestRuning:%d",i);
    }
}

@end
