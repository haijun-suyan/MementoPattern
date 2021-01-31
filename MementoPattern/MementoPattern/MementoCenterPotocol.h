//
//  MementoCenterPotocol.h
//  MementoPattern
//
//  Created by haijunyan on 2019/7/3.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoCenterPotocol <NSObject>

- (id)currentState;

- (void)recoverFromState:(id)state;

@end
