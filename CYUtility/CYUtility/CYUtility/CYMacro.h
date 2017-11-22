//
//  CYMacro.h
//  CYUtility
//
//  Created by 天天理财 on 2017/11/10.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#ifndef CYMacro_h
#define CYMacro_h

/**
 weak obj 宏
 */
#define WeakObj(o) __weak typeof(o) o##Weak = o;

/**
 strong obj 宏
 */
#define StrongObj(o) __strong typeof(o) o = o##Weak;


/**
 常用适配计算宏
 */
#define FitScreen(value) ((value)/2.0)*ScreenW/375.0

/**
 等比适配计算宏
 */
#define FitScreen_RealH(value) (value)*ScreenW/375.0

#endif /* CYMacro_h */
