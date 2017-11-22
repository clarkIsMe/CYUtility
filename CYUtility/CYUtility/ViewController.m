//
//  ViewController.m
//  CYUtility
//
//  Created by 天天理财 on 2017/11/9.
//  Copyright © 2017年 ttlc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) NSString *testString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    [self addBtn];
    
    NSLog(@"_testNumber:%ld, _testString:%@",_testNumber, _testString);
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addBtn {
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
}
- (void)jump {
    [self cy_pushViewController:@"TTViewController" withParams:nil completion:nil];
}


@end
