//
//  MementoCenter.h
//  MementoPattern
//
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterPotocol.h"

@interface MementoCenter : NSObject


/**
 save the object state

 @param object object
 @param key key
 */
+ (void)saveMementoObject:(id <MementoCenterPotocol>)object withKey:(NSString *)key;


/**
 get the object state

 @param key key
 @return object
 */
+ (id)mementoObjectWithKey:(NSString *)key;

@end
