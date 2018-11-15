//
//  BaseViewController.h
//  LYApp
//
//  Created by liyang on 17/7/1.
//  Copyright © 2017年 kosienDGL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

// 修改返回按钮
- (void)changeBackItemWithImage:(NSString *)imageName;

- (void)backAction;

@end
