//
//  PNavgationController.m
//  横竖屏Demo
//
//  Created by lpc on 16/5/14.
//  Copyright © 2016年 lpc. All rights reserved.
//

#import "PNavgationController.h"

@interface PNavgationController ()

@end

@implementation PNavgationController

- (BOOL)shouldAutorotate{
    return self.viewControllers.lastObject.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return self.viewControllers.lastObject.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return self.viewControllers.lastObject.preferredInterfaceOrientationForPresentation;
}

@end
