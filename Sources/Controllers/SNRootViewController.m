//
//  SNRootViewController.m
//  Snow
//
//  Created by snow on 15/7/22.
//  Copyright (c) 2015年 snow. All rights reserved.
//

#import "SNRootViewController.h"

@interface SNRootViewController ()

@end

@implementation SNRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel * la = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 120, 88)];
    la.backgroundColor = [UIColor yellowColor];
    la.text = @"hello snow";
    [self.view addSubview:la];
}

@end
