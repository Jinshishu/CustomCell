//
//  ViewController.m
//  456
//
//  Created by Daniel.Jin on 16/12/14.
//  Copyright © 2016年 Daniel.Jin. All rights reserved.
//

#import "ViewController.h"
#import "ContentTableViewCell.h"
#import "SSTableView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>

@property (strong, nonatomic) SSTableView *myTableView;
@property (strong, nonatomic) ContentTableViewCell *myCell;
@property (strong, nonatomic) UITextField *textField1;
@property (strong, nonatomic) UITextField *textField2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _myTableView = [[SSTableView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_myTableView];
    
    _myTableView.dataSource = self;
    _myTableView.delegate = self;
    _myTableView.scrollEnabled = NO;
    
    UIView *view              = [[UIView alloc] init];
    view.backgroundColor      = [UIColor whiteColor];
    view.frame                = CGRectZero;
    _myTableView.tableFooterView = view;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    _myCell = [ContentTableViewCell cellWithTableView:tableView];
    _myCell.inputTextField.delegate = self;
    
    if (indexPath.row == 0) {
        _myCell.inputTextField.placeholder = @"请输入业主房产证上全名";
        _myCell.inputTextField.returnKeyType = UIReturnKeyNext;
        self.textField1 = _myCell.inputTextField;
    }
    else {
        _myCell.inputTextField.placeholder = @"请输入业主身份证后四位";
        _myCell.inputTextField.returnKeyType = UIReturnKeyDone;
        self.textField2 = _myCell.inputTextField;
    }
    
    
    return _myCell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"-----%ld",indexPath.row);
//}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.textField1) {
        [self.textField1 resignFirstResponder];
        [self.textField2 becomeFirstResponder];
    }
    else {
        [self.textField2 resignFirstResponder];
    }
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
