//
//  HeaderTitleView.m
//  HeaderTitleView_Demo
//
//  Created by admin on 16/8/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "HeaderTitleView.h"


#define kWidth  self.frame.size.width



@interface HeaderTitleView ()
@property(strong,nonatomic)NSArray *titleArr;
@property(strong,nonatomic)UILabel *lineLabel;
@end

@implementation HeaderTitleView

-(instancetype)initWithFrame:(CGRect)frame listArr:(NSArray *)listArr{

    if (self=[super initWithFrame:frame]) {
        self.titleArr = listArr;
        [self initUI];
    }
    return self;
}
-(void)initUI
{
    CGFloat kButtonWidth = kWidth/self.titleArr.count;

    for (NSInteger i=0; i<self.titleArr.count; i++) {
        UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(kButtonWidth*i, 0, kButtonWidth, 40);
        btn.titleLabel.font = [UIFont systemFontOfSize:16];
        [btn setTitle:self.titleArr[i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 100+i;
        [self addSubview:btn];
    }
    self.lineLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 40, kButtonWidth, 2)];
    self.lineLabel.backgroundColor =[UIColor redColor];
    [self addSubview:self.lineLabel];
}
-(void)btnAction:(UIButton *)btn
{
    CGFloat kButtonWidth = kWidth/self.titleArr.count;
    for (NSInteger i=100; i<100+self.titleArr.count; i++) {
        UIButton *tmpBtn=[self viewWithTag:i];
        tmpBtn.selected = NO;
    }
    btn.selected = YES;
    [UIView animateWithDuration:0.5 animations:^{
        self.lineLabel.frame = CGRectMake(kButtonWidth*(btn.tag-100), 40, kButtonWidth, 2);
    }];
    [self.delegate HeaderTitleViewDelegateWithButtonTag:btn.tag];
}
@end
