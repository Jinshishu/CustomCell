//
//  ContentTableViewCell.h
//  456
//
//  Created by Daniel.Jin on 16/12/14.
//  Copyright © 2016年 Daniel.Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentTableViewCell : UITableViewCell

@property (strong, nonatomic) UITextField *inputTextField;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
