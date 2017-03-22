//
//  GKTextViewDemoController.m
//  BMComLibrary
//
//  Created by king on 16/8/4.
//  Copyright © 2016年 kennyhuang. All rights reserved.
//

#import "GKTextViewDemoController.h"
#import "GKTextView.h"

@interface GKTextViewDemoController ()<GKTextViewDelegate>

@property (nonatomic ,strong) GKTextView *textView;

@property (nonatomic ,strong) UIButton *btn;

@property (nonatomic ,strong) UIButton *changeLocationBtn;

@property (nonatomic ,assign) CGFloat fontSize;
@end


@implementation GKTextViewDemoController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.textView.placeHolderLbl.text = @"提示文字提示文字提示文字提示文字";
    self.textView.maxStingLength = 100;
    [self.view addSubview:self.textView];
    
    [self setUpTestBtn];
    
    self.fontSize = 13;
}

- (void)setUpTestBtn
{
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(30, 80, 80, 40)];
    [self.btn setTitle:@"点我打印" forState:UIControlStateNormal];
    [self.btn addTarget:self action:@selector(didClickPrint) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
    
    self.changeLocationBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 120, 80, 40)];
    [self.changeLocationBtn setTitle:@"改变位置" forState:UIControlStateNormal];
    [self.changeLocationBtn addTarget:self action:@selector(didClickChangeLocation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.changeLocationBtn];
}


- (void)didClickPrint
{
    NSLog(@"%@",self.textView.inputText);
}

- (void)didClickChangeLocation
{
    self.textView.lengthTipsLocation = !self.textView.lengthTipsLocation;
}

- (GKTextView *)textView
{
    if (!_textView) {
        _textView = [[GKTextView alloc] initWithFrame:CGRectMake(15, 300, 330, 90)];
        _textView.maxStingLength = 50;
        _textView.delegate = self;
        _textView.textFont = 13;
    }
    return _textView;
}



@end
