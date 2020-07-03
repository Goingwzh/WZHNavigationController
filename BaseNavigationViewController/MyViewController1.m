//
//  MyViewController1.m
//  BaseNavigationViewController
//
//  Created by Going on 2017/11/2.
//  Copyright © 2017年 WZH. All rights reserved.
//

#import "MyViewController1.h"
#import "MyViewController2.h"
#import "MyViewController3.h"
#import "MyViewController4.h"
#import "MyViewController5.h"
#import "MyViewController6.h"
#import "MyViewController7.h"
#import "Masonry.h"
@interface MyViewController1 ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *titleArray;
@end

@implementation MyViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.w_navBackgroundColor = [UIColor colorWithRed:150.f/255 green:41.f/255 blue:56.f/255 alpha:1];
    
    [self setSearchBar];
    
    _titleArray = @[@"普通情况",@"自定义导航栏",@"导航条全部渐变色",@"导航条背景渐变色",@"自定义返回键",@"添加item",];
    _tableView.dataSource = self;
    _tableView.delegate = self;
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
        make.left.equalTo(self.w_topView.mas_left).with.offset(5);
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


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _titleArray.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = _titleArray[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            MyViewController2 *vc = [[MyViewController2 alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 1:
        {
            MyViewController3 *vc = [[MyViewController3 alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 2:
        {
            MyViewController4 *vc = [[MyViewController4 alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 3:
        {
            MyViewController5 *vc = [[MyViewController5 alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 4:
        {
            MyViewController6 *vc = [[MyViewController6 alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 5:
        {
            MyViewController7 *vc = [[MyViewController7 alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        default:
            break;
    }
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
