//
//  UIButton+QuickCreate.m
//  YiPlatformLive
//
//  Created by Eric on 17/1/13.
//  Copyright © 2017年 YangWeiCong. All rights reserved.
//

#import "UIButton+QuickCreate.h"
#import "FGUtilsMacro.h"

@implementation UIButton (QuickCreate)

+ (UIButton *)qc_title:(NSString *)title fontSize:(NSInteger)fontSize titleColorHex:(NSInteger)titleColorHex
{
    UIButton *button = [UIButton new];
    [button qc_title:title font:UIFontSize(fontSize) titleColor:UIColorFromHex(titleColorHex)];
    return button;
}

+ (UIButton *)qc_title:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor
{
    UIButton *button = [UIButton new];
    [button qc_title:title font:font titleColor:titleColor];
    return button;;
}

+ (UIButton *)qc_imageString:(NSString *)imageString imageStringSelected:(NSString *)imageStringSelected
{
    UIButton *button = [UIButton new];
    [button qc_image:[UIImage imageNamed:imageString] imageSelected:[UIImage imageNamed:imageStringSelected]];
    return button;
}




- (void)qc_image:(UIImage *)image imageSelected:(UIImage *)imageSelected
{
    if (image) {
        [self setImage:image forState:UIControlStateNormal];
    }
    
    if (imageSelected) {
        [self setImage:imageSelected forState:UIControlStateSelected];
    }
}

- (void)qc_title:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor
{
    if (font) {self.titleLabel.font = font;}
    
    if (title) {
        [self setTitle:title forState:UIControlStateNormal];
    }
    
    if (titleColor) {
        [self setTitleColor:titleColor forState:UIControlStateNormal];
    }
}

- (void)qc_backgroundImage:(UIImage *)backgroundImage backgroundImageSelected:(UIImage *)backgroundImageSelected
{
    if (backgroundImage) {
        [self setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    }
    
    if (backgroundImageSelected) {
        [self setBackgroundImage:backgroundImageSelected forState:UIControlStateSelected];
    }
}


@end
