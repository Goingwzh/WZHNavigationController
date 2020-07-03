//
//  WZHCommon.h
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/2.
//  Copyright © 2017年 WZH. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface WZHCommon : NSObject
/*
 *屏幕长宽
 */
#define WZH_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define WZH_HEIGHT ([UIScreen mainScreen].bounds.size.height)
/*
 *图片路径
 */
#define WZHSrcName(file) [@"WZHNavigationController.bundle" stringByAppendingPathComponent:file]

#define WZHImage(file)  [UIImage imageNamed:WZHSrcName(file)]
/*
 *是否为iPhoneX
 */
#define WISiPhoneX  ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad?NO:((NSInteger)(WZH_WIDTH / WZH_HEIGHT * 100)==216||(NSInteger)(WZH_WIDTH / WZH_HEIGHT * 100)==46)?YES:NO)
#define WStateHeight [[UIApplication sharedApplication] statusBarFrame].size.height
/*
 *返回键样式
 */
typedef NS_ENUM(NSUInteger, WZHNavigationBarBackStyle) {
    WZHNavigationBarBackStyleBlack = 0, // 黑色返回按钮
    WZHNavigationBarBackStyleWhite,     // 白色返回按钮
    WZHNavigationBarBackStyleNone,      // 无返回按钮，可自定义返回按钮
};
@end
