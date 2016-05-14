//
//  AppDelegate.m
//  横竖屏Demo
//
//  Created by lpc on 16/5/13.
//  Copyright © 2016年 lpc. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "PNavgationController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    CGRect frame = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:frame];


    FirstViewController *vc = [[FirstViewController alloc] initWithNibName:NSStringFromClass([FirstViewController class]) bundle:nil];
    PNavgationController *nav = [[PNavgationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;


    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

#pragma mark -- 代码设置 设备支持的所有屏幕旋转方向 --
- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return UIInterfaceOrientationMaskAll;
}


@end
