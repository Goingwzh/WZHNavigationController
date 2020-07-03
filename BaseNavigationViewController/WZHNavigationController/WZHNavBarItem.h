//
//  WZHNavBarItem.h
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/3.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZHNavBarItem : UIButton
/** 根据title自动调整大小 */
+ (instancetype)itemWithTitle:(NSString *)title  target:(id)target action:(SEL)action;

/** 根据image自动调整大小到长宽其中一个43 */
+ (instancetype)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action;

/** 可自行设置bounds */
+ (instancetype)itemWithTitle:(NSString *)title Bounds:(CGRect)bounds  target:(id)target action:(SEL)action;

/** text字体默认14 */
@property(nonatomic,strong)UIFont *textFont;

/** text颜色，默认黑色 */
@property(nonatomic,strong)UIColor *textColor;

@end
