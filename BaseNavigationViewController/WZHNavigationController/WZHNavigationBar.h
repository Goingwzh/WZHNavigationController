//
//  WZHNavigationBar.h
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/2.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZHNavigationBar : UIView

/** 背景颜色 */
@property (nonatomic, strong)UIColor *w_backgroundColor;
/** 背景图片 */
@property (nonatomic, strong)UIImage *w_backgroundImage;

/** 导航条(状态栏下面的) */
@property(strong,nonatomic)UIView *topView;

/** 导航栏标题文字 */
@property (nonatomic, copy) NSString *title;

/** 导航栏标题颜色 */
@property (nonatomic, strong) UIColor *titleColor;

/** 导航栏标题字体 */
@property (nonatomic, strong) UIFont *titleFont;

/** 左items,最多2个 */
@property(strong,nonatomic)NSArray<UIButton*> *leftItems;

/** 右items,最多2个 */
@property (nonatomic, copy)NSArray<UIButton*> *rightItems;

/** 背景透明度(仅仅是透明度，不是整体的透明度，整体直接用self.alpha) */
@property (nonatomic, assign)CGFloat    barAlpha;
/** 是否显示底部线 */
@property (nonatomic, assign)BOOL  showLine;
@end
