//
//  ATableViewCell.m
//  getButtonIncellDemo
//
//  Created by Xiaoyi Tian on 2018/5/26.
//  Copyright © 2018年 Hongping Rao. All rights reserved.
//

#import "ATableViewCell.h"

@implementation ATableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)push:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(push:)]) {
        [self.delegate push:sender];
    }
}
- (IBAction)pushThree:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(pushThree:)]) {
        [self.delegate pushThree:self];
    }
}

@end
