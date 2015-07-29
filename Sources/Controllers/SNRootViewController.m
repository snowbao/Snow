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
    self.view.backgroundColor = [UIColor colorWithHex:0xecedee];
    
    if (IOS_VERSION >= 7.0) {
        self.automaticallyAdjustsScrollViewInsets = NO;
        self.extendedLayoutIncludesOpaqueBars = NO;
    }
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    [self _initFluidView];

    
    UILabel * la = [[UILabel alloc] initWithFrame:CGRectMake((SCREEN_WIDTH - 200) / 2, 390, 200, 88)];
    la.backgroundColor = [UIColor clearColor];
    la.text = @"hello snow";
    la.font = SYSTEMFONT(28);
    la.textAlignment = NSTextAlignmentCenter;
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

- (void)_initFluidView
{
    BAFluidView *view = [[BAFluidView alloc] initWithFrame:self.view.frame maxAmplitude:40 minAmplitude:5 amplitudeIncrement:3 startElevation:@0.1];
    [view fillTo:@0.9];
    view.fillColor = [UIColor yellowColor];
    view.strokeColor = [UIColor redColor];
    view.fillAutoReverse = NO;
    [view startAnimation];
    [self.view addSubview:view];
    
    UIImage* image = [UIImage imageNamed:@"Snow.bundle/ellipse"];
    CALayer* maskingLayer = [CALayer layer];
    maskingLayer.frame = CGRectMake(CGRectGetMidX(view.frame) - image.size.width / 2, (SCREEN_HEIGHT - image.size.height) / 2, image.size.width, image.size.height);
    [maskingLayer setContents:(id)[image CGImage]];
    [view.layer setMask:maskingLayer];
}

@end
