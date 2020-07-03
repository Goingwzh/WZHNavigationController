//
//  WZHNavigationController.h
//
//
//  Created by wzh on 2018/1/8.
//  Copyright © 2018年 WZH. All rights reserved.
//

/**
 *
 -----  可使用 [self setTitle:title] 方法来设置标题  -----
 已适配 iPhone X系列等刘海屏，使用xib时如果需要显示导航栏就设置距离上44，当VC中的第一个视图是view时（非滚动视图）需要手动判断距离上的高度，因为低于iOS11的设备的安全区是不包含状态栏的，iOS11以上的安全区包括状态栏，滚动视图没有这个问题（直接设置44就好）
 if([UIDevice currentDevice].systemVersion.floatValue < 11.0) {
     _top.constant=64;
 } else {
     _top.constant=44;
 }
 *
 */
#import <UIKit/UIKit.h>
#import "WZHCommon.h"
#import "WZHNavBarItem.h"

@interface WZHNavigationController : UIViewController
/** 是否显示导航栏 */
@property (nonatomic, assign) BOOL showNavigationBar;
/** 设置导航栏背景，默认 245/245/245 */
@property (nonatomic, strong) UIColor *w_navBackgroundColor;

/** 设置导航栏图片（设置图片了就不显示背景颜色了） */
@property (nonatomic, strong) UIImage *w_navBackgroundImage;

/** 设置标题 */
@property (nonatomic, copy) NSString *w_title;

/** 设置标题颜色，默认黑色 */
@property (nonatomic, strong) UIColor *w_titleColor;

/** 设置标题字体，默认16号字 */
@property (nonatomic, strong) UIFont *w_titleFont;

/** 导航条(状态栏下面的)，自定义导航栏时在这上面添加控件 */
@property (nonatomic, strong,readonly) UIView *w_topView;

/** 返回按钮的 CGRectGetMaxX ,不可变,在topview上添加控件的时候设置相对frame时候用的 */
@property(assign,nonatomic,readonly)CGFloat w_backBtnRight;

/** 整个导航栏透明度（包括导航栏所有控件） */
@property (nonatomic, assign) CGFloat w_navBarAlpha;

/** 导航栏透背景明度（导航栏所有控件透明度不受影响） */
@property (nonatomic, assign) CGFloat w_barBgAlpha;

/** 返回按钮类型，默认黑色,如需自定义返回按钮可自行设置w_navLeftBarButtonItem */
@property (nonatomic, assign) WZHNavigationBarBackStyle w_backStyle;

/** 导航栏左item，设置这个的话back按钮将会消失 */
@property (nonatomic, strong) WZHNavBarItem *w_navLeftBarButtonItem;

/** 导航栏左items，最多2个，设置这个的话back按钮将会消失 */
@property (nonatomic, strong) NSArray<WZHNavBarItem*> *w_navLeftBarButtonItems;

/** 导航栏右item */
@property (nonatomic, strong) WZHNavBarItem *w_navRightBarButtonItem;

/** 导航栏右items，最多2个 */
@property (nonatomic, strong) NSArray<WZHNavBarItem*> *w_navRightBarButtonItems;
/** 是否显示底部线, 默认YES */
@property (nonatomic, assign)BOOL  w_showLine;
/** 返回 */
-(void)returnBack:(UIButton*)sender;
@end
