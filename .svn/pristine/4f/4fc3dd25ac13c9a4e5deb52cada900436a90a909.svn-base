//
//  HZYIndicatorViewDemoViewController.m
//  BMComLibrary
//
//  Created by jacky on 16/7/22.
//  Copyright © 2016年 kennyhuang. All rights reserved.
//

#import "HZYIndicatorViewDemoViewController.h"
#import "HZYIndicatorView.h"

@interface HZYIndicatorViewDemoViewController ()

@property(nonatomic, strong) UISegmentedControl *segControl;
@property(nonatomic, strong) UILabel *numberLabel;

@property(nonatomic, strong) HZYIndicatorView *indicator;

@property(nonatomic, strong) UIButton *startAnimeBtn;
@property(nonatomic, strong) UIButton *stopAnimeBtn;

@end

@implementation HZYIndicatorViewDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupSubviews];
}

- (void)setupSubviews
{
    self.startAnimeBtn = [[UIButton alloc] init];
    [self.startAnimeBtn addTarget:self action:@selector(startAnimating) forControlEvents:UIControlEventTouchUpInside];
    [self.startAnimeBtn setTitle:@"开始动画" forState:UIControlStateNormal];
    [self.startAnimeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.startAnimeBtn sizeToFit];
    self.startAnimeBtn.center = CGPointMake(self.view.center.x - 100 , 100);
    [self.view addSubview:self.startAnimeBtn];
    
    self.stopAnimeBtn = [[UIButton alloc] init];
    [self.stopAnimeBtn addTarget:self action:@selector(stopAnimating) forControlEvents:UIControlEventTouchUpInside];
    [self.stopAnimeBtn setTitle:@"停止动画" forState:UIControlStateNormal];
    [self.stopAnimeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.stopAnimeBtn sizeToFit];
    self.stopAnimeBtn.center = CGPointMake(self.view.center.x + 100 , 100);
    [self.view addSubview:self.stopAnimeBtn];
    
    
    self.segControl = [[UISegmentedControl alloc] initWithItems:@[@"-",@"+"]];
    self.segControl.momentary = YES;
    self.segControl.center = CGPointMake(self.view.center.x, self.view.bounds.size.height - 50);
    [self.segControl addTarget:self action:@selector(segControlAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.segControl];
    
    self.numberLabel = [[UILabel alloc] init];
    self.numberLabel.textColor = [UIColor blackColor];
    self.numberLabel.text = @"3";
    self.numberLabel.frame = CGRectMake(0, 0, 100, 20);
    self.numberLabel.center = CGPointMake(self.segControl.center.x, self.segControl.frame.origin.y - 30);
    self.numberLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.numberLabel];
    
    self.indicator = [[HZYIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.indicator.center = self.view.center;
    self.indicator.lineColor = [UIColor blueColor];
    [self.view addSubview:self.indicator];
    [self.indicator drawChrysanthemumWithPoint:CGPointMake(50, 50) radius:10 petalNum:[self.numberLabel.text integerValue] petalLength:10];
}


- (void)segControlAction:(UISegmentedControl *)segControl
{
    NSInteger num = [self.numberLabel.text integerValue];
    if (segControl.selectedSegmentIndex == 0) {
        (--num >= 2) ? 0 : (num = 2);
    }else if (segControl.selectedSegmentIndex == 1){
        num ++;
    }
    self.numberLabel.text = [NSString stringWithFormat:@"%ld",(long)num];
    
    [self.indicator drawChrysanthemumWithPoint:CGPointMake(50, 50) radius:10 petalNum:num petalLength:10];
}

- (void)startAnimating
{
    [self.indicator startAnimation];
}

- (void)stopAnimating
{
    [self.indicator stopAnimation];
}

@end
