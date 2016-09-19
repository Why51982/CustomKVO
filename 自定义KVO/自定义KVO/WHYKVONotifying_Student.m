//
//  WHYKVONotifying_Student.m
//  自定义KVO
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/19.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import "WHYKVONotifying_Student.h"
#import <objc/message.h>

@implementation WHYKVONotifying_Student

- (void)setName:(NSString *)name {
    [super setName:name];
    
    //通知观察者调用observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context方法
    //但是此时拿不到观察者，所以需要把观察者保存到当前对象，即到NSObject+KVO的方法中拿到观察者
    
    //获取观察者
    id observe = objc_getAssociatedObject(self, @"observe");
    //调用观察者方法
    [observe observeValueForKeyPath:@"name" ofObject:self change:nil context:nil];
}

@end
