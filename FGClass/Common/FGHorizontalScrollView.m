//
//  FigoHorizontalScrollView.m
//  BBGuard
//
//  Created by admin on 16/9/9.
//  Copyright © 2016年 YangWeiCong. All rights reserved.
//

#import "FGHorizontalScrollView.h"

@implementation FGHorizontalScrollView
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        _contentView = [UIView new];
        [self addSubview:_contentView];
        
        [_contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
            //必须要约束宽度
            make.height.equalTo(self.mas_height);
            make.width.equalTo(self.mas_width).priorityLow();
        }];
    }
    return self;
}


@end
