//
//  ViewController.m
//  BMComLibrary
//  
//  Created by kennyhuang on 16/6/30.
//  Copyright © 2016年 kennyhuang. All rights reserved.
//

#import "ViewController.h"
#import "HZYIndicatorViewDemoViewController.h"
#import "GKTextViewDemoController.h"
#import "KeyboardManagerViewController.h"


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, readonly) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *controllerArr;
@end

/*
 创建demo步骤
 1、取个好的demo名字，建议  (你封装的类名)+ViewController
 标注：分类的demo还没考虑进去，一般来说分类应该可以不用做demo吧 0。0
 2、import你创建的demo控制器
 3、在- (void)addController 里创建你的demo控制器并添加进 controllerArr数组

 
 */



@implementation ViewController
@synthesize tableView = _tableView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addController];
    
    [self.view addSubview:self.tableView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"清除缓存" style:UIBarButtonItemStylePlain target:self action:@selector(clearViewControllers)];
    
    self.navigationItem.rightBarButtonItems = @[item];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - controller events

- (void)addController
{
    [self.controllerArr addObject: [[HZYIndicatorViewDemoViewController alloc] init]];
    [self.controllerArr addObject: [[GKTextViewDemoController alloc] init]];
    [self.controllerArr addObject: [[KeyboardManagerViewController alloc] init]];
}


- (void)clearViewControllers
{
    [self.controllerArr removeAllObjects];
    [self addController];
}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.controllerArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"identifier";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.backgroundColor = indexPath.row % 2 ? [UIColor whiteColor] : [UIColor blackColor];
    cell.textLabel.text = [NSString stringWithFormat:@"%s",object_getClassName(self.controllerArr[indexPath.row])];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.textLabel.font = [UIFont systemFontOfSize:16];
    cell.textLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    cell.textLabel.textColor = indexPath.row % 2 ? [UIColor blackColor] : [UIColor whiteColor];
    
    cell.detailTextLabel.font = [UIFont systemFontOfSize:16];
    cell.detailTextLabel.textColor = indexPath.row % 2 ? [UIColor blackColor] : [UIColor whiteColor];;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    UIViewController *viewController = self.controllerArr[indexPath.row];
    NSParameterAssert([viewController isKindOfClass:[UIViewController class]]);
    [self.navigationController pushViewController:viewController animated:YES];

    
}

#pragma mark setter getter
- (UITableView *)tableView
{
    if (!_tableView)
    {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.separatorColor = [UIColor lightGrayColor];
        _tableView.contentInset = UIEdgeInsetsMake(25, 0, 0, 0);
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }
    return _tableView;
}

- (NSArray *)controllerArr
{
    if (!_controllerArr) {
        _controllerArr = [NSMutableArray array];
    }
    return _controllerArr;
}


@end
