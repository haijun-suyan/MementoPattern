//
//  NSObject+MementoCenter.h
//  MementoPattern
//  NSObject类MementoCenter分支补充文件
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MementoCenter)

/**
 状态值存储(本地)
 @param key 映射键值
 */
- (void)saveStateWithKey:(NSString *)key;


/**
 (本地)已存储状态值的读取恢复

 @param key 键值映射键值
 */
- (void)recoverFromStateWithKey:(NSString *)key;

@end
