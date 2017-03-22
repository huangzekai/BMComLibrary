//
//  KeyboardManagerViewController.m
//  BMComLibrary
//
//  Created by zhaoYuan on 16/8/8.
//  Copyright © 2016年 kennyhuang. All rights reserved.
//

#import "KeyboardManagerViewController.h"
#import "BMKeyboardManager.h"

@interface KeyboardManagerViewController ()<BMKeyboardObserver>

@end

@implementation KeyboardManagerViewController


- (void)dealloc
{
    [[BMKeyboardManager shareManager] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *testTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 40, self.view.frame.size.width, 40)];
    testTextField.tag = 100;
    testTextField.placeholder = @"点我";
    testTextField.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:testTextField];
    
    [[BMKeyboardManager shareManager] addObserver:self];
    
    UIButton *testBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 180, 40)];
    [testBtn setTitle:@"textField失去焦点" forState:UIControlStateNormal];
    [testBtn setBackgroundColor:[UIColor blueColor]];
    [testBtn addTarget:self action:@selector(testBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:testBtn];
    
}

- (void)testBtnAction:(UIButton*)test
{
    UITextField *testView = [self.view viewWithTag:100];
    [testView resignFirstResponder];
    
}

- (void)keyboardChangedWithTransition:(BMKeyboardTransition)transition
{
    [UIView animateWithDuration:transition.animationDuration delay:0 options:transition.animationOption animations:^{
        
        UITextField *testView = [self.view viewWithTag:100];
        CGRect textframe = testView.frame;
        textframe.size.width = transition.toFrame.size.width;
        textframe.origin.y = transition.toFrame.origin.y - textframe.size.height;
        testView.frame = textframe;
    } completion:^(BOOL finished) {
        
    }];
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
