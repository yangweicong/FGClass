//
//  UIButton+QuickCreate.h
//  YiPlatformLive
//
//  Created by Eric on 17/1/13.
//  Copyright © 2017年 YangWeiCong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (QuickCreate)


#pragma mark - +


/**
 快速创建 Button

 @param title title
 @param fontSize 字体大小
 @param titleColorHex 颜色编码 16进制
 @return button
 */
+ (UIButton *)qc_title:(NSString *)title fontSize:(NSInteger)fontSize titleColorHex:(NSInteger)titleColorHex;


/**
  快速创建 Button
 */
+ (UIButton *)qc_title:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor;

/**
 快速创建 Button

 @param imageString image
 @param imageStringSelected 选择状态 image
 @return button
 */
+ (UIButton *)qc_imageString:(NSString *)imageString imageStringSelected:(NSString *)imageStringSelected;


#pragma mark - -


/**
 设置

 @param image image
 @param imageSelected 选择状态image
 */
- (void)qc_image:(UIImage *)image imageSelected:(UIImage *)imageSelected;


/**
 设置

 @param title title
 @param font font
 @param titleColor titleColor
 */
- (void)qc_title:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor;


/**
 设置

 @param backgroundImage backgroundImage
 @param backgroundImageSelected 选择状态backgroundImage
 */
- (void)qc_backgroundImage:(UIImage *)backgroundImage backgroundImageSelected:(UIImage *)backgroundImageSelected;


@end
