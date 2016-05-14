//
//  OrientationHelper.m
//  横竖屏Demo
//
//  Created by lpc on 16/5/14.
//  Copyright © 2016年 lpc. All rights reserved.
//

#import "OrientationHelper.h"

@implementation OrientationHelper

+ (BOOL)isOrientationLandscape
{
    BOOL flag = UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation]);
    return flag;
}

+ (void)changeToOrientation:(UIInterfaceOrientation)orientation
{
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSMethodSignature *methodSign = [UIDevice instanceMethodSignatureForSelector:selector];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSign];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int arl = orientation;
        [invocation setArgument:&arl atIndex:2];
        [invocation invoke];
    }
}


@end
