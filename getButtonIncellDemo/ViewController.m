//
//  ViewController.m
//  getButtonIncellDemo
//
//  Created by Xiaoyi Tian on 2018/5/26.
//  Copyright © 2018年 Hongping Rao. All rights reserved.
//

#import "ViewController.h"
#import "ATableViewCell.h"
#import "BViewController.h"
@interface ViewController ()<ATableViewCellDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"ATableViewCell" bundle:nil] forCellReuseIdentifier:@"aCell"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"aCell" forIndexPath:indexPath];
    [cell.pushTwoButton addTarget:self action:@selector(pushTwo:) forControlEvents:UIControlEventTouchUpInside];
    cell.pushButton.tag = indexPath.row;
    cell.delegate = self;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
//indexPathForRowAtPoint方法实现
-(void)pushTwo:(UIButton *)sender{
    CGPoint point = sender.center;
    point = [self.tableView convertPoint:point fromView:sender.superview];
    NSIndexPath* indexpath = [self.tableView indexPathForRowAtPoint:point];
     BViewController *b = [self.storyboard instantiateViewControllerWithIdentifier:@"B"];
    b.str =[NSString stringWithFormat:@"俺从第%ld过来的",indexpath.row];
    [self.navigationController pushViewController:b animated:YES];
}
/**
 ATableViewCell代理的实现
 */
-(void)push:(UIButton *)button{
    BViewController *b = [self.storyboard instantiateViewControllerWithIdentifier:@"B"];
    //button的tag实现
    b.str = [NSString stringWithFormat:@"俺从第%ld过来的",button.tag];
    [self.navigationController pushViewController:b animated:YES];
}
//indexPathForCell实现
-(void)pushThree:(ATableViewCell *)cell{
     NSIndexPath * indexPath = [self.tableView indexPathForCell:cell];
    BViewController *b = [self.storyboard instantiateViewControllerWithIdentifier:@"B"];
    b.str =[NSString stringWithFormat:@"俺从第%ld过来的",indexPath.row];
    [self.navigationController pushViewController:b animated:YES];
}
@end
