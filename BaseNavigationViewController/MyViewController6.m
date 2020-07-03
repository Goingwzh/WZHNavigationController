//
//  MyViewController6.m
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/8.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import "MyViewController6.h"

@interface MyViewController6 ()

@end

@implementation MyViewController6

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"这是一个标题";
    self.w_backStyle = WZHNavigationBarBackStyleNone;
    WZHNavBarItem *itme1 = [WZHNavBarItem itemWithImageName:@"back" target:self action:@selector(back:)];
    self.w_navLeftBarButtonItem = itme1;
}
- (void)back:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
