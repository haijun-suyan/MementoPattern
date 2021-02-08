//
//  MementoCenter.h
//  MementoPattern
//  甲方Leader
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "MementoCenterPotocol.h"

@interface MementoCenter : NSObject

/**
 声明事件(囊括次级临时字段名声明)/
 实例对象值的状态词典保存(本地)

 @param object 实例对象值(备忘便于找回)
 @param key 待找回对象值的状态词典相对应的映射键
 */
+ (void)saveMementoObject:(id <MementoCenterPotocol>)object withKey:(NSString *)key;

/**
 从(本地)读取实例对象值的状态词典

 @param key 映射键
 @return object 状态词典
 */
+ (id)mementoObjectWithKey:(NSString *)key;

@end
