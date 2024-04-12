//
//  FirstViewController.m
//  横竖屏Demo
//
//  Created by lpc on 16/5/13.
//  Copyright © 2016年 lpc. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)push:(id)sender {

    SecondViewController *vc2 = [[SecondViewController alloc] initWithNibName:NSStringFromClass([SecondViewController class]) bundle:nil];

    /**
     *  如果要其中一个页面强制横屏,就要使用present
     */
    [self presentViewController:vc2 animated:YES completion:nil];
}

@end
