//
//  WZHNavigationBar.m
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/2.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import "WZHNavigationBar.h"
#import "WZHCommon.h"
@interface WZHNavigationBar()
/** 标题 */
@property(strong,nonatomic)UILabel  *titleLable;
/** 导航栏内容view */
@property(strong,nonatomic)UIView  *contentView;
/** 背景view */
@property(strong,nonatomic)UIView  *bgView;
/** 背景图片view */
@property(strong,nonatomic)UIImageView  *bgImgView;
/** 背景颜色 */
@property(strong,nonatomic)UIColor  *bgColor;
/** 底部的线 */
@property(strong,nonatomic)UIView *line;
@end
@implementation WZHNavigationBar
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setupDefaultConfigure];
        [self setupUI];
    }
    return self;
}
-(void)setupUI
{
    _bgView = [[UIView alloc] initWithFrame:self.bounds];
    _bgView.backgroundColor = self.bgColor;
    [self addSubview:_bgView];
    
    _bgImgView = [[UIImageView alloc] initWithFrame:_bgView.bounds];
    _bgImgView.backgroundColor = [UIColor clearColor];
    _bgImgView.contentMode = UIViewContentModeScaleAspectFill;
    _bgImgView.clipsToBounds = YES;
    [_bgView addSubview:_bgImgView];
    
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
    _contentView.backgroundColor = [UIColor clearColor];
    [self addSubview:_contentView];
    
    _topView = [[UIView alloc] init];
    _titleLable = [[UILabel alloc] init];
    if (WISiPhoneX){
        _topView.frame = CGRectMake(0, 44, WZH_WIDTH, 44);
        _titleLable.frame = CGRectMake(WZH_WIDTH/2-100, 11, 200, 22);
    } else{
        _topView.frame = CGRectMake(0, 20, WZH_WIDTH, 44);
        _titleLable.frame = CGRectMake(WZH_WIDTH/2-100, 11, 200, 22);
    }
    _topView.backgroundColor = [UIColor clearColor];
    [_contentView addSubview:_topView];
    _titleLable.textColor = self.titleColor;
    _titleLable.font = self.titleFont;
    
    _titleLable.textAlignment = NSTextAlignmentCenter;
    [_topView addSubview:_titleLable];
    
    _line = [[UIView alloc] initWithFrame:CGRectMake(0, self.bounds.size.height-0.5, WZH_WIDTH, 0.5)];
    _line.backgroundColor = [UIColor colorWithRed:204.f/255 green:204.f/255 blue:204.f/255 alpha:1];
    _line.hidden = YES;
    [_bgView addSubview:_line];
}
// 设置默认的导航栏外观
- (void)setupDefaultConfigure
{
    self.title = @"";
    self.bgColor = [UIColor colorWithRed:245.f/255 green:245.f/255 blue:245.f/255 alpha:1];
    self.backgroundColor = [UIColor clearColor];
    self.titleColor      = [UIColor blackColor];
    self.titleFont       = [UIFont boldSystemFontOfSize:16.0];
    // 待添加
}
-(void)setW_backgroundColor:(UIColor *)w_backgroundColor
{
    _bgColor = w_backgroundColor;
    _bgView.backgroundColor = _bgColor;
}
-(void)setW_backgroundImage:(UIImage *)w_backgroundImage
{
    _bgImgView.image = w_backgroundImage;
}
-(void)setTitle:(NSString *)title
{
    _titleLable.text = title;
}
-(void)setTitleColor:(UIColor *)titleColor
{
    _titleLable.textColor = titleColor;
}
-(void)setTitleFont:(UIFont *)titleFont
{
    _titleLable.font = titleFont;
}

-(void)setBarAlpha:(CGFloat)barAlpha
{
    _contentView.backgroundColor = [UIColor clearColor];
    _bgView.alpha = barAlpha;
}
-(void)setLeftItems:(NSArray *)leftItems
{
    for (UIView *view in _leftItems)
    {
        [view removeFromSuperview];
    }
    _leftItems = leftItems;
    CGFloat left = 0.f;
    int i = 1;
    for (UIView *view in leftItems)
    {
        if (i>2) {
            return;
        }
        CGFloat width = view.bounds.size.width;
        CGFloat height = view.bounds.size.height;
        if (height>=43)
        {
            height=43;
        }
        view.frame = CGRectMake( 10+left, 22-height/2, width, height);
        [self.topView addSubview:view];
        left = CGRectGetMaxX(view.frame);
        i++;
    }
}
-(void)setRightItems:(NSArray *)rightItems
{
    for (UIView *view in _rightItems){
        [view removeFromSuperview];
    }
    _rightItems = rightItems;
    CGFloat right = 0;
    int i = 1;
    for (UIView *view in rightItems)
    {
        if (i>2) {
            return;
        }
        CGFloat width = view.bounds.size.width;
        CGFloat height = view.bounds.size.height;
        if (height>=43)
        {
            height=43;
        }
        view.frame = CGRectMake( WZH_WIDTH - (10+width+right), 22-height/2, width, height);
        [self.topView addSubview:view];
        right = WZH_WIDTH - CGRectGetMinX(view.frame);
        i++;
    }
}
-(void)setShowLine:(BOOL)showLine{
    _showLine = showLine;
    _line.hidden = !_showLine;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
