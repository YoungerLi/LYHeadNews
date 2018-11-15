//
//  SecondViewController.m
//  LYHeadNews
//
//  Created by liyang on 2018/11/14.
//  Copyright © 2018 kosien. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第二页";
    
    UIButton *button = [Tools createButtonWithFrame:CGRectMake(150, 100, 100, 100) backgroundColor:[UIColor redColor] title:nil addTarget:self action:@selector(click)];
    [self.view addSubview:button];
}

- (void)click
{
    ThirdViewController *VC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}

@end
