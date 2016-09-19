//
//  NSObject+KVO.m
//  自定义KVO
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/19.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import "NSObject+KVO.h"
#import "WHYKVONotifying_Student.h"

#import <objc/message.h>

@implementation NSObject (KVO)

/** 监听某个对象的属性 */
- (void)why_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context {
    
    //把观察者保存到当前对象中，因为此类没有属性保存观察者，所以需要动态保存观察者，就要用到runtime
    objc_setAssociatedObject(self, @"observe", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    //修改对象的isa指针
    object_setClass(self, [WHYKVONotifying_Student class]);
}

@end
