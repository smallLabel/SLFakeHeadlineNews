//
//  UIView+AnimationExtend.m
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/6.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "UIView+AnimationExtend.h"

@implementation UIView (AnimationExtend)

- (CABasicAnimation *)rotateAnimation {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.fromValue = @0.0;
    animation.toValue = @(M_PI * 2);
    animation.duration = 2.0;
    animation.cumulative = YES;
    animation.repeatCount = MAXFLOAT;
    [self.layer addAnimation:animation forKey:@"rotationAnimation"];
    return animation;
}

- (void)stopRotateAnimation {
    if ([self.layer animationForKey:@"rotationAnimation"]) {
        [self.layer removeAnimationForKey:@"rotationAnimation"];
    }
}

@end
