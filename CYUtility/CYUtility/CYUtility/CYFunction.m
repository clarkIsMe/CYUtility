//
//  CYFunction.m
//  CYUtility
//
//  Created by 天天理财 on 2017/11/10.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "CYFunction.h"

@implementation CYFunction

bool CYObjIsEmpty(NSObject *obj) {
    if ([obj isKindOfClass:[NSArray class]]) {
        NSArray *array = (NSArray *)obj;
        return !array.count;
    }else if ([obj isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dic = (NSDictionary *)obj;
        return !dic.count;
    }else if ([obj isKindOfClass:[NSString class]]) {
        NSString *string = (NSString *)obj;
        return !string.length;
    }else {
        return !obj || [obj isKindOfClass:[NSNull class]];
    }
}

@end
