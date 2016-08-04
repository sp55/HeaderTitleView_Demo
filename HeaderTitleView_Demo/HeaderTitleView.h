//
//  HeaderTitleView.h
//  HeaderTitleView_Demo
//
//  Created by admin on 16/8/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HeaderTitleViewDelegate <NSObject>
-(void)HeaderTitleViewDelegateWithButtonTag:(NSInteger)ButtonTag;
@end


@interface HeaderTitleView : UIView
//42
-(instancetype)initWithFrame:(CGRect)frame listArr:(NSArray *)listArr;
@property(weak,nonatomic)id<HeaderTitleViewDelegate>delegate;
@end
