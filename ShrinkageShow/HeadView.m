//
//  HeadView.m
//  ShrinkageShow
//
//  Created by 李志权 on 16/6/6.
//  Copyright © 2016年 李志权. All rights reserved.
//

#import "HeadView.h"

@implementation HeadView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self initSubView];
    return self;
}
- (void)initSubView
{
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(0, 10, self.frame.size.width, 30)];
    blueView.backgroundColor = [UIColor blueColor];
    [self addSubview:blueView];
    
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, self.frame.size.width-45, 30)];
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    [blueView addSubview:self.titleLabel];
    
    self.arrowImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@""]];
    self.arrowImage.frame = CGRectMake(self.frame.size.width-35, 5, 25, 20);
    self.arrowImage.backgroundColor = [UIColor purpleColor];
    [blueView addSubview:self.arrowImage];
    
}
@end
