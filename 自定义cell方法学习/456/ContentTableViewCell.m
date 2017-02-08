//
//  ContentTableViewCell.m
//  456
//
//  Created by Daniel.Jin on 16/12/14.
//  Copyright © 2016年 Daniel.Jin. All rights reserved.
//

#import "ContentTableViewCell.h"

@implementation ContentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *identifier = @"status";
    ContentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[ContentTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _inputTextField = [[UITextField alloc]initWithFrame:CGRectMake(20, 5, [UIScreen mainScreen].bounds.size.width - 40, 40)];
//        _inputTextField.center = self.contentView.center;
        [self.contentView addSubview:_inputTextField];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
