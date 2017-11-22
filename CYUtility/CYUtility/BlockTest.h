//
//  BlockTest.h
//  CYUtility
//
//  Created by 春雨 on 2017/11/21.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^HBlock)(void);

@interface BlockTest : NSObject

@property (nonatomic,copy) HBlock block;

- (void)test;

@end
