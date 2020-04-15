o//
//  wktool.m
//  wktest_Example
//
//  Created by 王珂 on 2020/4/15.
//  Copyright © 2020 kirk-w. All rights reserved.
//

#import "wktool.h"

@implementation wktool
+ (id)shareInstance
{
    static id manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[[self class] alloc] init];
    });
    return manager;
}

- (void)sayHello
{
     NSLog(@"hello");
}


@end
