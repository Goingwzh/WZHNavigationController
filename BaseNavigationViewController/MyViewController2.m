//
//  MyViewController2.m
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/2.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import "MyViewController2.h"

#import "Masonry.h"
@interface MyViewController2 ()


@end

@implementation MyViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setTitle:@"普通状态"];
    //设置导航条颜色
//    self.w_navBackgroundColor = [UIColor colorWithRed:152.f/255 green:1911.f/255 blue:0.f/255 alpha:1];
//    //设置导航条背景图片
//    self.w_navBackgroundImage = [UIImage imageNamed:@"image1"];
//    //设置返回按钮样式
//    self.backStyle = WZHNavigationBarBackStyleWhite;
//    //设置标题颜色
//    self.w_navTitleColor = [UIColor whiteColor];
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
