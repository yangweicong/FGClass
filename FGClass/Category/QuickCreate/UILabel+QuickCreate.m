//
//  UILabel+QuickCreate.m
//  YiPlatformLive
//
//  Created by Eric on 17/1/13.
//  Copyright © 2017年 YangWeiCong. All rights reserved.
//

#import "UILabel+QuickCreate.h"
#if __has_include(<FGUtilsMacro.h>)
#import <FGUtilsMacro.h>
#else
#import "FGUtilsMacro.h"
#endif
//#import "FGUtilsMacro.h"

@implementation UILabel (QuickCreate)


+ (UILabel *)qc_text:(NSString *)text fontSize:(NSInteger)fontSize colorHex:(NSInteger)colorHex
{
    UILabel *label = [UILabel new];
    [label qc_text:text textAlignment:0 font:UIFontSize(fontSize) color:UIColorFromHex(colorHex)];
    return  label;
}

+ (UILabel *)qc_text:(NSString *)text font:(UIFont *)font color:(UIColor *)color
{
    UILabel *label = [UILabel new];
    [label qc_text:text textAlignment:0 font:font color:color];
    return label;
}


- (void)qc_text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment font:(UIFont *)font color:(UIColor *)color
{
    if (text) { self.text = text;}
    if (font) {self.font = font;}
    if (color) {self.textColor = color;}
    if (textAlignment) {self.textAlignment = textAlignment;}
}


@end
