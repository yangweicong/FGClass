//
//  ICBseLayoutView.m
//  ichezhidao
//
//  Created by qiuxiaofeng on 16/7/14.
//  Copyright © 2016年 figo. All rights reserved.
//

#import "FGBaseLayoutView.h"
#import "FGUtilsMacro.h"

#if __has_include(<AFNetworking/AFNetworking.h>)
#import <Masonry/Masonry.h>
#else
#import "Masonry.h"
#endif

@interface FGBaseLayoutView ()

@property (nonatomic, weak) id touchDownTarget;
@property (nonatomic, assign) SEL touchDownAction;
@property (nonatomic, assign) BOOL hasBegin;

@property (nonatomic, strong) UIColor *normalColor;

@end

@implementation FGBaseLayoutView

- (void)didMoveToWindow
{
    if (!self.normalColor) {
        self.normalColor = self.backgroundColor;
    }
    
    if (!self.highlightedBgColor) {
        self.highlightedBgColor = UIColorFromHex(0xdddddd);
    }else{

    }
}

- (UIView *)lineView
{
    UIView *line = [UIView new];
    line.backgroundColor = UIColorFromHex(0xdddddd);
    return line;
}

- (void)addTopLineWithEdge:(UIEdgeInsets)edge
{
    UIView *line = [self lineView];
    [self addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(edge.left);
        make.right.equalTo(self.mas_right).offset(-edge.right);
        make.top.equalTo(self);
        make.height.equalTo(@(kOnePixel));
    }];
}
- (void)addBottomLineWithEdge:(UIEdgeInsets)edge
{
    UIView *line = [self lineView];
    [self addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(edge.left);
        make.right.equalTo(self.mas_right).offset(-edge.right);
        make.bottom.equalTo(self);
        make.height.equalTo(@(kOnePixel));
    }];
}
- (void)addLeftLineWithEdge:(UIEdgeInsets)edge
{
    UIView *line = [self lineView];
    [self addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(edge.top);
        make.bottom.equalTo(self.mas_bottom).offset(-edge.bottom);
        make.left.equalTo(self);
        make.width.equalTo(@(kOnePixel));
    }];
}
- (void)addRightLineWithEdge:(UIEdgeInsets)edge
{
    UIView *line = [self lineView];
    [self addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(edge.top);
        make.bottom.equalTo(self.mas_bottom).offset(-edge.bottom);
        make.right.equalTo(self);
        make.width.equalTo(@(kOnePixel));
    }];
}

- (void)addTopLine
{
    [self addTopLineWithEdge:UIEdgeInsetsZero];
}

- (void)addBottomLine
{
    
    [self addBottomLineWithEdge:UIEdgeInsetsZero];
}

- (void)addLeftLine
{
    [self addLeftLineWithEdge:UIEdgeInsetsZero];
}

- (void)addRightLine
{
    [self addRightLineWithEdge:UIEdgeInsetsZero];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    if (touch.tapCount == 1 && !self.hasBegin) {
        self.hasBegin = YES;
        if (self.isHighlight) {
            self.backgroundColor = self.highlightedBgColor;
        }
    }
    
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (self.hasBegin) {
        if (self.touchDownTarget != nil && self.touchDownAction != nil)
        {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [self.touchDownTarget performSelector:self.touchDownAction withObject:self];
#pragma clang diagnostic pop
            
        }
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self performSelector:@selector(doTargetAction:) withObject:[touches anyObject] afterDelay:0.12];
#pragma clang diagnostic pop
        self.hasBegin = NO;
    }
    
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (self.hasBegin) {
        
        if (self.isHighlight) {
            self.backgroundColor = self.normalColor;
        }
        self.hasBegin = NO;
    }
    
    [super touchesCancelled:touches withEvent:event];
}

-(void)doTargetAction:(UITouch*)touch
{
    if (self.isHighlight) {
        self.backgroundColor = self.normalColor;
    }
}

-(void)setTouchDownTarget:(id)target action:(SEL)action
{
    self.touchDownTarget = target;
    self.touchDownAction = action;
}

@end
