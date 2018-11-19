//
//  HomeNavigationBar.m
//  LYHeadNews
//
//  Created by liyang on 2018/11/17.
//  Copyright © 2018 kosien. All rights reserved.
//

#import "HomeNavigationBar.h"

@implementation HomeNavigationBar

+ (instancetype)navigationBar
{
    HomeNavigationBar *bar = [[HomeNavigationBar alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, NAVBAR_HEIGHT)];
    bar.backgroundColor = [UIColor redColor];
    return bar;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

@end
