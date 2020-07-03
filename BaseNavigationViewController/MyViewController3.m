//
//  MyViewController3.m
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/3.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import "MyViewController3.h"
#import "Masonry.h"
@interface MyViewController3 ()

@end

@implementation MyViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setSearchBar];
}
-(void)setSearchBar
{
    //搜索框
    UIView *searchView = [UIView new];
    searchView.tag = 1;
    searchView.backgroundColor = [UIColor whiteColor];
    searchView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    searchView.layer.borderWidth = 0.5;
    searchView.layer.masksToBounds = YES;
    searchView.layer.cornerRadius = 5;
    [self.w_topView addSubview:searchView];
    [searchView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.w_topView.mas_top).with.offset(5);
        make.left.equalTo(self.w_topView.mas_left).with.offset(self.w_backBtnRight+5);
        make.bottom.equalTo(self.w_topView.mas_bottom).with.offset(-5);
        make.right.equalTo(self.w_topView.mas_right).with.offset(-5);
    }];
    //搜索框图标
    UIImageView *searchIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"w_search"]];
    [searchView addSubview:searchIcon];
    [searchIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(searchView);
        make.left.equalTo(searchView.mas_left).with.offset(8);
    }];
    
    //搜索框提示文字
    UILabel *searchTitle = [UILabel new];
    [searchTitle setText:@"每天进步一小步"];
    [searchTitle setTextColor:[UIColor lightGrayColor]];
    [searchTitle setFont:[UIFont systemFontOfSize:12]];
    [searchView addSubview:searchTitle];
    [searchTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(searchView);
        make.left.equalTo(searchIcon.mas_right).offset(5);
    }];
    
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(topViewTapGesture:)];
    [tapGesture1 setNumberOfTapsRequired:1];
    [searchView addGestureRecognizer:tapGesture1];
}
//导航条  点击手势触发方法
- (void)topViewTapGesture:(UITapGestureRecognizer *)sender
{
    NSLog(@"dsdsdsdsds");
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
