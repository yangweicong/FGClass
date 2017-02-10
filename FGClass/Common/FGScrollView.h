//
//  ICScrollView.h
//  ichezhidao
//
//  Created by qiuxiaofeng on 16/7/8.
//  Copyright © 2016年 figo. All rights reserved.
//

#import <UIKit/UIKit.h>

#if __has_include(<TPKeyboardAvoidingScrollView.h>)
#import <TPKeyboardAvoidingScrollView.h>
#else
#import "TPKeyboardAvoidingScrollView.h"
#endif

#if __has_include(<Masonry/Masonry.h>)
#import <Masonry/Masonry.h>
#else
#import "Masonry.h"
#endif

@class TPKeyboardAvoidingScrollView;

@interface FGScrollView : TPKeyboardAvoidingScrollView

@property (nonatomic, strong) UIView *contentView;

@end
