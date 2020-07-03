//
//  WZHNavBarItem.m
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/3.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import "WZHNavBarItem.h"

@implementation WZHNavBarItem

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    WZHNavBarItem *btn = [WZHNavBarItem buttonWithType:UIButtonTypeCustom];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (instancetype)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action {
    
    WZHNavBarItem *btn = [WZHNavBarItem buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    if (btn.bounds.size.width < 43) {
        CGFloat width = 43 / btn.bounds.size.height * btn.bounds.size.width;
        btn.bounds = CGRectMake(0, 0, width, 43);
    }
    if (btn.bounds.size.height > 43) {
        CGFloat height = 43 / btn.bounds.size.width * btn.bounds.size.height;
        btn.bounds = CGRectMake(0, 0, 43, height);
    }
    return btn;
}

+ (instancetype)itemWithTitle:(NSString *)title Bounds:(CGRect)bounds  target:(id)target action:(SEL)action
{
    WZHNavBarItem *btn = [WZHNavBarItem buttonWithType:UIButtonTypeCustom];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.bounds = bounds;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    if (btn.bounds.size.height > 43) {
        btn.bounds = CGRectMake(0, 0, bounds.size.width, 43);
    }
    return btn;
}

-(void)setTextFont:(UIFont *)textFont
{
    self.titleLabel.font = textFont;
}

-(void)setTextColor:(UIColor *)textColor
{
    [self setTitleColor:textColor forState:UIControlStateNormal];
}
@end
