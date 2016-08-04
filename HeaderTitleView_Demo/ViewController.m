//
//  ViewController.m
//  HeaderTitleView_Demo
//
//  Created by admin on 16/8/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "HeaderTitleView.h"
@interface ViewController ()<HeaderTitleViewDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    HeaderTitleView *headerView=[[HeaderTitleView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 42) listArr:@[@"张三",@"李四",@"赵五"]];
    headerView.backgroundColor =[UIColor lightGrayColor];
    headerView.delegate = self;
    [self.view addSubview:headerView];
}

-(void)HeaderTitleViewDelegateWithButtonTag:(NSInteger)ButtonTag
{
    NSLog(@"ButtonTag------%ld",ButtonTag);
}

@end
