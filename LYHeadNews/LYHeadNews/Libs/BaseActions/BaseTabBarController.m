//
//  BaseTabBarController.m
//  AppNew
//
//  Created by liyang on 17/8/6.
//  Copyright © 2017年 Li Yang. All rights reserved.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController ()<UITabBarControllerDelegate>

@property (nonatomic, strong) BaseNavigationController *homeNVC;
@property (nonatomic, strong) UIImageView *tabBarImageView;

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.barTintColor = [UIColor colorWithRed:0.95f green:0.95f blue:0.95f alpha:1.0f];
    self.tabBar.translucent = NO;
    self.delegate = self;
    
    self.homeNVC = [self addChildViewController:[HomeViewController class] title:@"首页" imageName:@"home_tabbar" selectedImageName:@"home_tabbar_press"];
    [self addChildViewController:[MelonVideoViewController class] title:@"西瓜视频" imageName:@"video_tabbar" selectedImageName:@"video_tabbar_press"];
    [self addChildViewController:[HeadNewsViewController class] title:@"微头条" imageName:@"weitoutiao_tabbar" selectedImageName:@"weitoutiao_tabbar_press"];
    [self addChildViewController:[LittleVideoViewController class] title:@"小视频" imageName:@"huoshan_tabbar" selectedImageName:@"huoshan_tabbar_press"];
}


- (BaseNavigationController *)addChildViewController:(Class)class title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    UIViewController *VC = [[class alloc] init];
    BaseNavigationController *NVC = [[BaseNavigationController alloc] initWithRootViewController:VC];
    //文字
    NVC.tabBarItem.title = title;
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:10.5], NSForegroundColorAttributeName:TABBAR_GRAY_COLOR};
    NSDictionary *selectAttribute = @{NSFontAttributeName:[UIFont systemFontOfSize:10.5], NSForegroundColorAttributeName:TABBAR_ORANGE_COLOR};
    [NVC.tabBarItem setTitleTextAttributes:attribute forState:UIControlStateNormal];            //一般状态
    [NVC.tabBarItem setTitleTextAttributes:selectAttribute forState:UIControlStateSelected];    //选中状态
    NVC.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -3);  //上移3pt
    //图片
    NVC.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:NVC];
    return NVC;
}




#pragma mark - UITabBarControllerDelegate

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    if (viewController == self.selectedViewController && self.selectedIndex == 0) {
        if ([self.tabBarImageView.layer animationForKey:@"rotationAnimation"]) {
            return YES;
        }
        self.homeNVC.tabBarItem.image = [[UIImage imageNamed:@"home_tabbar_loading"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.homeNVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_tabbar_loading"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [self startAnimation];
        
    } else {
        [self.tabBarImageView stopRotation];
        self.homeNVC.tabBarItem.image = [[UIImage imageNamed:@"home_tabbar"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.homeNVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_tabbar_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    if (viewController == self.selectedViewController) {
        NSLog(@"刷新起来吧。。。");
    }
    
    return YES;
}




#pragma mark - %%%%%%%%%%%%%%%%%%%

- (void)startAnimation
{
    UIControl *tabBarButton = [self.homeNVC.tabBarItem valueForKey:@"view"];
    UIImageView *imageView = [tabBarButton valueForKey:@"info"];
    [imageView startRotationAnimation];
    self.tabBarImageView = imageView;
}

@end
