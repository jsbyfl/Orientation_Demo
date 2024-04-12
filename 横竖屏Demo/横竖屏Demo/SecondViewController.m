//
//  SecondViewController.m
//  横竖屏Demo
//
//  Created by lpc on 16/5/13.
//  Copyright © 2016年 lpc. All rights reserved.
//

#import "SecondViewController.h"
#import "OrientationHelper.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)back:(id)sender {

    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -- 手动旋转 --
- (IBAction)changeOrientationAct:(id)sender {

    if ([OrientationHelper isOrientationLandscape]) {
        [OrientationHelper changeToOrientation:UIInterfaceOrientationPortrait];
    }
    else{
        [OrientationHelper changeToOrientation:UIInterfaceOrientationLandscapeLeft];
    }
}


#pragma mark -- 重写如下方法,设置屏幕方向 --
//是否支持旋转
- (BOOL)shouldAutorotate{
    return YES;
}

//屏幕支持的旋转方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{

    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight | UIInterfaceOrientationMaskPortrait;
}

//默认的屏幕方向
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeLeft;
}

//横屏时 是否需要隐藏状态栏
- (BOOL)prefersStatusBarHidden
{
    return NO;
}

#pragma mark -- iOS8 即将旋转的回调 --
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{

}


@end
