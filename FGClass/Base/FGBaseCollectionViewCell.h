//
//  FGBaseCollectionViewCell.h
//  hunlianshejiao
//
//  Created by 刘幼寒 on 16/11/7.
//  Copyright © 2016年 figo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGBaseCollectionViewCell : UICollectionViewCell

- (void)setupViews;
- (void)setupLayout;
- (void)configCCellWithModel:(id)model;

@end
