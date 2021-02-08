//
//  ViewController.m
//  MementoPattern
//
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "ViewController.h"
#import "DemoView.h"
#import "NSObject+MementoCenter.h"

@interface ViewController ()

@property(nonatomic,strong)DemoView *demoView;
@end

@implementation ViewController


/**
 本demo记录demoView的状态，然后重置
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    _demoView = [[DemoView alloc] init];
    _demoView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_demoView];
    //运行test1注释test1运行test2
//    [self test1];
    [self test2];
}

- (void)test1 {
    _demoView.frame     = CGRectMake(100, 100, 100, 100);
    NSLog(@"%@", _demoView);

    [_demoView saveStateWithKey:@"demoView"];
}

- (void)test2 {
    NSLog(@"%@", _demoView);
    NSLog(@"*******************");
    [_demoView recoverFromStateWithKey:@"demoView"];
    NSLog(@"%@", _demoView);
}

@end
