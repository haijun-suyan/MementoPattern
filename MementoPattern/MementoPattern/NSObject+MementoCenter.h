//
//  NSObject+MementoCenter.h
//  MementoPattern
//
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MementoCenter)


/**
 存储状态

 @param key 键值
 */
- (void)saveStateWithKey:(NSString *)key;


/**
 恢复状态

 @param key 键值
 */
- (void)recoverFromStateWithKey:(NSString *)key;

@end
