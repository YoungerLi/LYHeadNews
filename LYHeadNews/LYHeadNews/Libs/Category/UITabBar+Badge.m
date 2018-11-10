//
//  UITabBar+Badge.m
//  AppNew
//
//  Created by liyang on 17/9/2.
//  Copyright © 2017年 Kosien. All rights reserved.
//

#import "UITabBar+Badge.h"

static int baseTag = 1000;

@implementation UITabBar (Badge)

//显示小红点带未读数
- (void)showBadgeOnItemIndex:(int)index badgeNumber:(NSInteger)badgeNumber
{
    //移除之前的小红点
    [self hideBadgeOnItemIndex:index];
    //新建小红点
    UILabel *label = [self createLabelWithBadgeNumber:badgeNumber];
    label.tag = baseTag + index;
    //确定小红点的位置
    CGRect tabFrame = self.frame;
    float percentX = (index + 0.57) / self.items.count;
    CGFloat x = ceilf(percentX * tabFrame.size.width);
    label.frame = CGRectMake(x-2, 4, label.ly_w, label.ly_h);
    [self addSubview:label];
}

//隐藏/移除小红点
- (void)hideBadgeOnItemIndex:(int)index
{
    for (UIView *subView in self.subviews) {
        if (subView.tag == baseTag + index) {
            [subView removeFromSuperview];
        }
    }
}




#pragma mark - %%%%%%%%%%%%%%%%%%%%%%%%

- (UILabel *)createLabelWithBadgeNumber:(NSInteger)badgeNumber
{
    UILabel *label = [[UILabel alloc] init];
    NSInteger number = badgeNumber > 99 ? 99 : badgeNumber;
    label.text = [NSString stringWithFormat:@"%zd", number];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:11];
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor redColor];
    [label sizeToFit];
    label.ly_w = label.ly_w + 8;
    label.ly_h = label.ly_w - 2;
    label.clipsToBounds = YES;
    label.layer.cornerRadius = label.ly_h / 2.0;
    return label;
}

@end
