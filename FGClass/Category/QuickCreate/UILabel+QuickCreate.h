//
//  UILabel+QuickCreate.h
//  YiPlatformLive
//
//  Created by Eric on 17/1/13.
//  Copyright © 2017年 YangWeiCong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (QuickCreate)

#pragma mark - +

/**
  快速创建label

 @param text text
 @param fontSize 字体大小
 @param colorHex 颜色编码 16进制
 @return label
 */
+ (UILabel *)qc_text:(NSString *)text fontSize:(NSInteger)fontSize colorHex:(NSInteger)colorHex;


/**
 快速创建label

 @param text text
 @param font font
 @param color color
 @return laebl
 */
+ (UILabel *)qc_text:(NSString *)text font:(UIFont *)font color:(UIColor *)color;


#pragma mark - -

/**
 快速创建label
 
 @param text text
 @param textAlignment textAlignment
 @param font font
 @param color color
 */
- (void)qc_text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment font:(UIFont *)font color:(UIColor *)color;

@end
