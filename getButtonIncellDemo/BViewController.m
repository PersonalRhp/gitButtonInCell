//
//  BViewController.m
//  getButtonIncellDemo
//
//  Created by Xiaoyi Tian on 2018/5/26.
//  Copyright © 2018年 Hongping Rao. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.showLabel.text = self.str;
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
