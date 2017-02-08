//
//  SSTableView.m
//  456
//
//  Created by Daniel.Jin on 16/12/14.
//  Copyright © 2016年 Daniel.Jin. All rights reserved.
//

#import "SSTableView.h"

@implementation SSTableView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    id view = [super hitTest:point withEvent:event];
    if (![view isKindOfClass:[UITextField class]]) {
        [self endEditing:YES];
        return self;
    }
    else {
        return view;
    }
}

@end
