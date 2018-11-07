//
//  AppDelegate+RootController.m
//  LYApp
//
//  Created by liyang on 17/6/30.
//  Copyright © 2017年 kosienDGL. All rights reserved.
//

#import "AppDelegate+RootController.h"
#import "ViewController.h"

@implementation AppDelegate (RootController)

- (void)createRootViewControllers
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
//    BaseTabBarController *tabBar = [[BaseTabBarController alloc] init];
//    self.window.rootViewController = tabBar;
    
    ViewController *VC = [[ViewController alloc] init];
    self.window.rootViewController = VC;
    
    [self.window makeKeyAndVisible];
}

@end
