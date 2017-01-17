//
//  FirstViewController.m
//  MBProgressHUD-JDragonDemo
//
//  Created by JDragon on 2017/1/17.
//  Copyright © 2017年 JDragon. All rights reserved.
//

#import "FirstViewController.h"
#import <MBProgressHUD+JDragon.h>

@interface FirstViewController ()<UITableViewDelegate,UITableViewDataSource>


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"cellone"];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            [MBProgressHUD showActivityMessageInWindow:nil];
            break;
        case 1:
            [MBProgressHUD showActivityMessageInView:nil];

            break;
        case 2:
            [MBProgressHUD showTipMessageInWindow:@"在window"];
            break;
        case 3:
            [MBProgressHUD showTipMessageInView:@"在View"];

            break;
        case 4:
            [MBProgressHUD showSuccessMessage:@"加载成功"];
            break;
        case 5:
            [MBProgressHUD showWarnMessage:@"显示警告"];
            break;
        case 6:
            [MBProgressHUD showErrorMessage:@"显示错误"];
            break;
        case 7:
            [MBProgressHUD showInfoMessage:@"显示信息"];
            break;
            
        default:
            break;
    }
    [self performSelector:@selector(dismiss) withObject:nil afterDelay:3];
}
-(void)dismiss
{
    
    [MBProgressHUD hideHUD];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
