//
//  DemoView.m
//  MementoPattern
//
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "DemoView.h"

@implementation DemoView

//demoView的frame数据信息值内容
//字段名协议事件API本身实例{}
- (id)currentState {
    return @{@"frame":NSStringFromCGRect(self.frame)};
}

//四元结构数据重新注入控件frame(恢复渲染)
//字段名协议事件API本身实例{}
- (void)recoverFromState:(id)state {
    NSDictionary *data = state;
    [UIView animateWithDuration:3.f animations:^{
        self.frame = CGRectFromString(data[@"frame"]);
    }];
}

@end
