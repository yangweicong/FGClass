//
//  ICBaseTableViewCell.h
//  ichezhidao
//
//  Created by qiuxiaofeng on 16/7/7.
//  Copyright © 2016年 figo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGBaseTableViewCell : UITableViewCell

- (void)setupViews;
- (void)setupLayout;
- (void)configCellWithModel:(id)model;

@end
