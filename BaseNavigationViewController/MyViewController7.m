//
//  MyViewController7.m
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/8.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import "MyViewController7.h"
#import "MyViewController8.h"
@interface MyViewController7 ()

@end

@implementation MyViewController7

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"这是一个标题";
    WZHNavBarItem *itme1 = [WZHNavBarItem itemWithTitle:@"11" Bounds:CGRectMake(0, 0, 40, 30) target:self action:@selector(back:)];
    [itme1 setBackgroundColor:[UIColor blueColor]];
    
    WZHNavBarItem *itme2 = [WZHNavBarItem itemWithTitle:@"左二" target:self action:@selector(back:)];
    [itme2 setBackgroundColor:[UIColor blueColor]];
    
    WZHNavBarItem *itme3 = [WZHNavBarItem itemWithTitle:@"右一" target:self action:@selector(toNext:)];
    itme3.textFont = [UIFont systemFontOfSize:10];
    
    WZHNavBarItem *itme4 = [WZHNavBarItem itemWithTitle:@"右二" target:self action:@selector(toNext:)];
    itme4.textColor = [UIColor whiteColor];
    
    self.w_navLeftBarButtonItems = @[itme1,itme2];
    self.w_navRightBarButtonItems = @[itme3,itme4];
}
- (void)back:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)toNext:(UIButton *)sender
{
    MyViewController7 *vc = [[MyViewController7 alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
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
