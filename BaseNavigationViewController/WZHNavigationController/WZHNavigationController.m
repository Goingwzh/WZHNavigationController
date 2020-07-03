//
//  WZHNavigationController.m
//  
//
//  Created by wzh on 2018/1/8.
//  Copyright © 2018年 WZH. All rights reserved.
//

#import "WZHNavigationController.h"
#import "WZHCommon.h"
#import "WZHNavigationBar.h"
#import "WZHNavBarItem.h"
@interface WZHNavigationController ()<UIGestureRecognizerDelegate>
@property(strong,nonatomic)WZHNavigationBar           *wzh_navigationBar; //导航条
@property(strong,nonatomic)WZHNavBarItem *backBtn; //返回按钮
@end

@implementation WZHNavigationController
- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.navigationController setNavigationBarHidden:YES];
    self.fd_prefersNavigationBarHidden = YES;
    _wzh_navigationBar = [[WZHNavigationBar alloc] initWithFrame:CGRectMake(0, 0, WZH_WIDTH, WISiPhoneX?88:64)];
    [self.view addSubview:_wzh_navigationBar];
    [self.view bringSubviewToFront:_wzh_navigationBar];
    if (self.navigationController.viewControllers.count>1&&_w_backStyle != WZHNavigationBarBackStyleNone){
        [self loadBackBtn];
    }
self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
}
-(void)loadBackBtn{
    UIImage *backImage = self.w_backStyle == WZHNavigationBarBackStyleBlack?WZHImage(@"btn_back_black"):WZHImage(@"btn_back_white");
    self.backBtn = [WZHNavBarItem buttonWithType:UIButtonTypeCustom];
    [_backBtn sizeToFit];
    [_backBtn setBackgroundColor:[UIColor clearColor]];
    [_backBtn setImage:backImage forState:UIControlStateNormal];
    [_backBtn addTarget:self action:@selector(returnBack:) forControlEvents:UIControlEventTouchUpInside];
    _wzh_navigationBar.leftItems = @[_backBtn];
}
-(void)returnBack:(UIButton*)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
// 什么时候调用，每次触发手势之前都会询问下代理方法，是否触发
// 作用：拦截手势触发
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    // 当当前控制器是根控制器时，不可以侧滑返回，所以不能使其触发手势
    if(self.navigationController.childViewControllers.count == 1){
        return NO;
    }
    return YES;
}
-(void)setShowNavigationBar:(BOOL)showNavigationBar{
    _wzh_navigationBar.hidden = !showNavigationBar;
}
-(void)setW_navBackgroundColor:(UIColor *)w_navBackgroundColor{
    _wzh_navigationBar.w_backgroundColor = w_navBackgroundColor;
}
-(void)setW_navBackgroundImage:(UIImage *)w_navBackgroundImage{
    _wzh_navigationBar.w_backgroundImage = w_navBackgroundImage;
}
-(void)setTitle:(NSString *)title{
    _wzh_navigationBar.title = title;
}
-(void)setW_title:(NSString *)w_title{
    _wzh_navigationBar.title = w_title;
}
-(void)setW_titleFont:(UIFont *)w_titleFont{
    _wzh_navigationBar.titleFont = w_titleFont;
}
-(void)setW_titleColor:(UIColor *)w_titleColor{
    _wzh_navigationBar.titleColor = w_titleColor;
}
-(void)setW_navLeftBarButtonItem:(UIButton *)w_navLeftBarButtonItem{
    _wzh_navigationBar.leftItems = @[w_navLeftBarButtonItem];
}
-(void)setW_navLeftBarButtonItems:(NSArray *)w_navLeftBarButtonItems{
    if (w_navLeftBarButtonItems.count>0){
        _wzh_navigationBar.leftItems = w_navLeftBarButtonItems;
    }
}

-(void)setW_navRightBarButtonItem:(UIButton *)w_navRightBarButtonItem{
    _wzh_navigationBar.rightItems = @[w_navRightBarButtonItem];
}
-(void)setW_navRightBarButtonItems:(NSArray *)w_navRightBarButtonItems{
    if (w_navRightBarButtonItems.count>0){
        _wzh_navigationBar.rightItems = w_navRightBarButtonItems;
    }
}
-(void)setW_navBarAlpha:(CGFloat)w_navBarAlpha{
    _wzh_navigationBar.alpha = w_navBarAlpha;
}
-(void)setW_barBgAlpha:(CGFloat)w_barBgAlpha{
    _wzh_navigationBar.barAlpha = w_barBgAlpha;
}
-(void)setW_backStyle:(WZHNavigationBarBackStyle)w_backStyle{
    _w_backStyle = w_backStyle;
    if (w_backStyle==WZHNavigationBarBackStyleNone){
        [_backBtn removeFromSuperview];
        return;
    }
    UIImage *backImage = w_backStyle == WZHNavigationBarBackStyleBlack?WZHImage(@"btn_back_black"):WZHImage(@"btn_back_white");
    [_backBtn setImage:backImage forState:UIControlStateNormal];
}

-(void)setW_showLine:(BOOL)w_showLine{
    _wzh_navigationBar.showLine = w_showLine;
}
-(CGFloat)w_backBtnRight{
    return CGRectGetMaxX(_backBtn.frame);
}
-(UIView*)w_topView{
    return _wzh_navigationBar.topView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
