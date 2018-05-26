//
//  ATableViewCell.h
//  getButtonIncellDemo
//
//  Created by Xiaoyi Tian on 2018/5/26.
//  Copyright © 2018年 Hongping Rao. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ATableViewCell;
@protocol ATableViewCellDelegate<NSObject>
@optional
-(void)push:(UIButton *)button;
-(void)pushThree:( ATableViewCell*)cell;
@end
@interface ATableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *pushButton;
@property (weak, nonatomic) IBOutlet UIButton *pushTwoButton;
@property(nonatomic,weak)id<ATableViewCellDelegate>delegate;
@end
