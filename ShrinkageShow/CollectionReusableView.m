//
//  CollectionReusableView.m
//  ShrinkageShow
//
//  Created by 李志权 on 16/6/6.
//  Copyright © 2016年 李志权. All rights reserved.
//

#import "CollectionReusableView.h"
#define fDeviceWidth ([UIScreen mainScreen].bounds.size.width)
@implementation CollectionReusableView

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    self.headView = [[HeadView alloc]initWithFrame:CGRectMake(0, 0, fDeviceWidth, 40)];
    [self addSubview:self.headView];
    return self;
}

@end
