//  协议规范体系
//  MementoCenterPotocol.h
//  MementoPattern
//  甲方Leader/乙方Assistant
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoCenterPotocol <NSObject>
//声明字段名协议事件API
- (id)currentState;

- (void)recoverFromState:(id)state;

@end
