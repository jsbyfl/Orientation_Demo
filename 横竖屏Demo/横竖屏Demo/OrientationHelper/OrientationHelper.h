//
//  OrientationHelper.h
//  横竖屏Demo
//
//  Created by lpc on 16/5/14.
//  Copyright © 2016年 lpc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OrientationHelper : NSObject

//检查是否为横屏
+ (BOOL)isOrientationLandscape;

//手动切换至需要的旋转方向
+ (void)changeToOrientation:(UIInterfaceOrientation)orientation;


/*
 参考链接:http://blog.csdn.net/yiyaaixuexi/article/details/7670852
 http://blog.csdn.net/wudizhukk/article/details/8674393
 */

@end
