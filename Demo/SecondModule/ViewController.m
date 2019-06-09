//
//  ViewController.m
//  OCModuleDemo
//
//  Created by wangpf on 2019/6/3.
//  Copyright © 2019 dafiger. All rights reserved.
//

#import "ViewController.h"

#import "MediatorManager.h"
#import "SecondProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];

    [self gotoSecond:@"abc"];
    [self gotoSecond:@"efg"];
}

- (void)gotoSecond:(NSString *)userID {
    //    id obj = [[MediatorManager sharedInstance] fetchService:@protocol(SecondProtocol)];
    //    id obj = [MediatorManager moduleInstanceFromProtocol:@protocol(SecondProtocol)];
    id obj = PRGetModuleInstance(SecondProtocol);
    UIViewController *secondVC = [obj homePage:userID];
    if ([secondVC isKindOfClass:[UIViewController class]]) {
        NSLog(@"找到 secondVC");
        if ([userID isEqualToString:@"efg"]) {
            [self presentViewController:secondVC animated:YES completion:nil];
        }
    }
}


@end
