//
//  HomeViewController.m
//  LYHeadNews
//
//  Created by liyang on 2018/11/8.
//  Copyright © 2018 kosien. All rights reserved.
//

#import "HomeViewController.h"
#import "SecondViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
    self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
    
    UIButton *button = [Tools createButtonWithFrame:CGRectMake(100, 100, 100, 100) backgroundColor:[UIColor redColor] title:nil addTarget:self action:@selector(click)];
    [self.view addSubview:button];
    
}

- (void)click
{
    SecondViewController *VC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}

@end
