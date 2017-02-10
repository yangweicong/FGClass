//
//  ICBseLayoutView.h
//  ichezhidao
//
//  Created by qiuxiaofeng on 16/7/14.
//  Copyright © 2016年 figo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGBaseLayoutView : UIView

@property(nonatomic, assign) BOOL isHighlight;
@property(nonatomic, strong) UIColor *highlightedBgColor;

- (void)addTopLine;
- (void)addBottomLine;
- (void)addLeftLine;
- (void)addRightLine;

- (void)addTopLineWithEdge:(UIEdgeInsets)edge;
- (void)addBottomLineWithEdge:(UIEdgeInsets)edge;
- (void)addLeftLineWithEdge:(UIEdgeInsets)edge;
- (void)addRightLineWithEdge:(UIEdgeInsets)edge;

-(void)setTouchDownTarget:(id)target action:(SEL)action;

@end
