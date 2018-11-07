//
//  AppDelegate.m
//  LYHeadNews
//
//  Created by liyang on 2018/11/6.
//  Copyright © 2018 kosien. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+RootController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"程序启动");
    
    [self createRootViewControllers];
    
    return YES;
}














#pragma mark - **********系统前后台切换

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"程序中断");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"程序进入后台");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"程序将要从后台进入前台");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"程序激活");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"结束程序");
}

@end
