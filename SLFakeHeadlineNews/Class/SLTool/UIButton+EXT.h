//
//  UIButton+EXT.h
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (EXT)

+ (UIButton *(^)(UIButtonType))button;
// 设置按钮的标题
- (UIButton *(^)(NSString *title,UIControlState status))title;
// 设置按钮背景图
- (UIButton *(^)(UIImage *backgroundImage,UIControlState status))backgroundImage;
//设置按钮的背景色
- (UIButton *(^)(UIColor *color))bgColor;
//这只按钮的边框
- (UIButton *(^)(UIColor *borderColor,CGFloat borderWidth))border;
// 设置按钮的标题颜色
- (UIButton *(^)(UIColor *titleColor))titleColor;
// 设置按钮的setImage
- (UIButton *(^)(UIImage *image,UIControlState status))setShowImage;

@end
