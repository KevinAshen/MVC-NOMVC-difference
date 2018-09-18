//
//  MModel.m
//  MVCsampleWithMVC
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "MModel.h"

@implementation MModel


- (void)save{
    
    NSLog(@"保存。。。");
    
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"saveSucessful" object:self];  //使用Notification模式发送一个通知，用于通知Controller要做什么事情
    
}

- (void)load{
    
    NSLog(@"加载。。。");
    
}

@end
