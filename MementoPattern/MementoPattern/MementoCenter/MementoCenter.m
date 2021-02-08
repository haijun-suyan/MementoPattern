//
//  MementoCenter.m
//  MementoPattern
//
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "MementoCenter.h"
#import "FastCoder.h"

@implementation MementoCenter

+ (void)saveMementoObject:(id<MementoCenterPotocol>)object withKey:(NSString *)key {
    //Para条件参数断言宏
    NSParameterAssert(object);
    NSParameterAssert(key);

    //获取data，通过potocol确定object的那些property需要存储
    id data = [object currentState];
    NSData *tmpData = [FastCoder dataWithRootObject:data];
    
    //存储data
    if (tmpData) {
        [[NSUserDefaults standardUserDefaults] setObject:tmpData forKey:key];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }

}

+ (id)mementoObjectWithKey:(NSString *)key {
    NSParameterAssert(key);
    
    id data = nil;
    NSData *tmpData = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    
    if (tmpData) {
        data = [FastCoder objectWithData:tmpData];
    }
    return data;
}

@end
