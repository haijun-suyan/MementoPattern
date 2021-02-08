//
//  NSObject+MementoCenter.m
//  MementoPattern
//
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "NSObject+MementoCenter.h"
#import "MementoCenter.h"

@implementation NSObject (MementoCenter)

- (void)saveStateWithKey:(NSString *)key {
    NSParameterAssert(key);
    
    id <MementoCenterPotocol> obj = (id <MementoCenterPotocol>)self;
    if ([obj respondsToSelector:@selector(currentState)]) {
        [MementoCenter saveMementoObject:obj withKey:key];
    }
}

- (void)recoverFromStateWithKey:(NSString *)key {
    NSParameterAssert(key);

    id <MementoCenterPotocol> obj = (id <MementoCenterPotocol>)self;
    if ([obj respondsToSelector:@selector(recoverFromStateWithKey:)]) {
        id state = [MementoCenter mementoObjectWithKey:key];


        if (state) {
            [obj recoverFromState:state];
        }
    }
}

@end
