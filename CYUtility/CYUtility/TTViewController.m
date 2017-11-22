//
//  TTViewController.m
//  CYUtility
//
//  Created by 天天理财 on 2017/11/10.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "TTViewController.h"
#import "CYUtility.h"
#import "BlockTest.h"

@interface TTViewController ()

@property (nonatomic,strong) NSTimer *timer;

@end

@implementation TTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
    /* ios9.0以上自动适配苹方字体 */
//    [UIFont cy_pingfangFontOfSize:20];
    
    /* 打破NSTimer循环引用 */
//    WeakObj(self);
//    _timer = [NSTimer cy_scheduledTimerWithTimeInterval:3 repeats:YES block:^(NSTimer *timer) {
//        StrongObj(self);
//        [self function];
//    }];
    
    /* 判断对象是否为:nil,[NSNull null],空数组,空字典, 空字符串*/
//    NSArray *a = @[];
//    if (CYObjIsEmpty(a)) {
//        NSLog(@"obj is empty");
//    }else {
//        NSLog(@"obj is not empty");
//    }
    
    /* 防止数组越界崩溃 */
//    NSArray *a = @[@1, @3];
//    NSMutableArray *b = [a mutableCopy];
//    NSLog(@"a:%@, b:%@",[a cy_objectAtIndex:5], [b cy_objectAtIndex:5]);
    
    /* 无缓存加载图片 */
//    [UIImage cy_imageNamed:@"home.png"];
    
    /* push controller */
//    [self addBtn];
    
    /* UIButton block事件 */
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
//    [self.view addSubview:btn];
//    btn.backgroundColor = [UIColor greenColor];
//    WeakObj(self);
//    [btn addAction:^{
//        StrongObj(self);
//        NSLog(@"点击了button");
//    }];
    
    [self blockTest];
}

- (void)blockTest {
    __block BlockTest *blockT = [BlockTest new];
    [blockT test];
    for (int i = 0; i< 501; i++) {
        NSLog(@"blockT Will die");
        if (i == 500) {
            blockT = nil;
            NSLog(@"blockT IS NILL NOW");
        }
    }
    NSLog(@"OVER");
}

- (void)dealloc {
    [_timer invalidate];
    NSLog(@"释放");
}

- (void)addBtn {
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
}
- (void)jump {
    [self cy_pushViewController:@"ViewController" withParams:@{@"testNumber":@10, @"testString":@"hello world"} completion:^{
        NSLog(@"do nothing");
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
