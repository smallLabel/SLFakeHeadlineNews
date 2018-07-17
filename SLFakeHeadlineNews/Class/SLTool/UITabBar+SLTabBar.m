//
//  UITabBar+SLTabBar.m
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/6.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "UITabBar+SLTabBar.h"

static const int kBaseTag = 1000;

@implementation UITabBar (SLTabBar)

- (void)hideBadgeOnItemIndex:(NSInteger)index {
    for (UIView *view in self.subviews) {
        if (view.tag == kBaseTag + index) {
            [view removeFromSuperview];
        }
    }
}

@end
