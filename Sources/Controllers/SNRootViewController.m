//
//  SNRootViewController.m
//  Snow
//
//  Created by snow on 15/7/22.
//  Copyright (c) 2015年 snow. All rights reserved.
//

#import "SNRootViewController.h"
#import <BAFluidView/BAFluidView.h>

@interface SNRootViewController ()

@end

@implementation SNRootViewController

#pragma mark -
#pragma mark Life cycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"一起买单";
    
    if (IOS_VERSION >= 7.0) {
        self.automaticallyAdjustsScrollViewInsets = NO;
        self.extendedLayoutIncludesOpaqueBars = NO;
    }
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    if (NSFoundationVersionNumber >= NSFoundationVersionNumber_iOS_7_0 ||
        (self.parentViewController != nil && ![self.parentViewController isKindOfClass:[UINavigationController class]])) {
        CGRect rect = self.view.frame;
        rect.size.height -= (self.navigationController.navigationBar.frame.size.height + [UIApplication sharedApplication].statusBarFrame.size.height);
        self.view.frame = rect;
    }
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel * la = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 120, 88)];
    la.backgroundColor = [UIColor yellowColor];
    la.text = @"hello snow";
    [self.view addSubview:la];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    
}

#pragma mark -
#pragma mark Helper Method

#pragma mark -
#pragma mark UI

@end
