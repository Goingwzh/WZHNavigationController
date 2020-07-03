//
//  BaseViewController.m
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/2.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.w_navBackgroundColor = [UIColor colorWithRed:217.f/255 green:56.f/255 blue:41.f/255 alpha:1];
    ////////////////////
    ///////////
//    self.backStyle = WZHNavigationBarBackStyleNone;
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
