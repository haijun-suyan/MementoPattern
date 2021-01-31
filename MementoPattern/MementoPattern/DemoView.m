//
//  DemoView.m
//  MementoPattern
//
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "DemoView.h"

@implementation DemoView

//返回demoView的frame
- (id)currentState {
    return @{@"frame" : NSStringFromCGRect(self.frame)};
}

//恢复demoView的frame
- (void)recoverFromState:(id)state {
    NSDictionary *data = state;
    [UIView animateWithDuration:3.f animations:^{
        
        self.frame = CGRectFromString(data[@"frame"]);
    }];
}

@end
