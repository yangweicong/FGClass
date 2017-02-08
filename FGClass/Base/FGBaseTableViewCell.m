//
//  ICBaseTableViewCell.m
//  ichezhidao
//
//  Created by qiuxiaofeng on 16/7/7.
//  Copyright © 2016年 figo. All rights reserved.
//

#import "FGBaseTableViewCell.h"

@implementation FGBaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
        [self setupViews];
        [self setupLayout];
    }
    return self;
}

- (void)setupViews
{
    
}

- (void)setupLayout
{
    
}

- (void)configCellWithModel:(id)model
{
    
}

@end
