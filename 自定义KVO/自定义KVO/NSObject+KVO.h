//
//  NSObject+KVO.h
//  自定义KVO
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/19.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)

/** 监听某个对象的属性 */
- (void)why_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;

@end
