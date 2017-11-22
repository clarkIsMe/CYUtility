//
//  NSArray+CYArray.m
//  CYUtility
//
//  Created by 天天理财 on 2017/11/11.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "NSArray+CYArray.h"

@implementation NSArray (CYArray)

- (id)cy_objectAtIndex:(NSUInteger)index {
    return index >= self.count ? nil : [self objectAtIndex:index];
}


@end
