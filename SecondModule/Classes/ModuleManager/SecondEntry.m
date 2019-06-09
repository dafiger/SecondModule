//
//  SecondEntry.m
//  ProtocolDemo
//
//  Created by wangpf on 2019/5/23.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "SecondEntry.h"

#import "SecondVC.h"

@implementation SecondEntry

// 添加initComponent接口，将自身注册到Mediator中
//+ (void)load{
//    @autoreleasepool {
//        [[MediatorManager sharedInstance] registerService:@protocol(SecondProtocol) forService:[self class]];
//    }
//}

- (UIViewController *)homePage:(NSString *)userID {
    NSLog(@"Find SecondVC");
    SecondVC *vc = [[SecondVC alloc] init];
    vc.userID = @"SecondVC";
    return vc;
}

@end
