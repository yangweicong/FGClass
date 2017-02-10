//
//  FigoHorizontalScrollView.h
//  BBGuard
//
//  Created by admin on 16/9/9.
//  Copyright © 2016年 YangWeiCong. All rights reserved.
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

@interface FGHorizontalScrollView : TPKeyboardAvoidingScrollView
@property (nonatomic, strong) UIView *contentView;

@end
