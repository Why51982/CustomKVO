//
//  ViewController.m
//  自定义KVO
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/14.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "NSObject+KVO.h"

@interface ViewController ()

@property (nonatomic, strong) Student *student;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Student *student = [[Student alloc] init];
    self.student = student;
    
    [student why_addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    NSLog(@"%@", _student.name);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    static NSInteger i = 0;
    NSString *name = [NSString stringWithFormat:@"Ocean - %zd", i++];
    self.student.name = name;
}
@end
