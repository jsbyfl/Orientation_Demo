//
//  BaseViewController.m
//  横竖屏Demo
//
//  Created by lpc on 16/5/13.
//  Copyright © 2016年 lpc. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = [NSString stringWithFormat:@"[%@]",[self class]];
}


#pragma mark -- 所有的controller模式不能旋转，只支持竖屏 --
- (BOOL)shouldAutorotate{
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}

@end
