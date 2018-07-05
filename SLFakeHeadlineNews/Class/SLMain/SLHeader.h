//
//  SLHeader.h
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/5.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SL_MIAN_STYLE_COLOR [UIColor colorWithRed:0.97 green:0.35 blue:0.35 alpha:1.0]
#define SL_TABBERBAR_GRAY_COLOR [UIColor colorWithRed:0.31 green:0.31 blue:0.31 alpha:1.0f]
#define SL_MIAN_GRAY_Color [UIColor colorWithRed:0.96 green:0.96 blue:0.97 alpha:1]
#define SL_WEAK_SELF __weak typeof(self) wself = self;

#define SL_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SL_SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SL_NAVIGATION_BAR_HEIGHT ([UIScreen mainScreen].bounds.size.height == 812 ? 88 :64)
#define SL_STATUS_BAR_HEIGHT ([UIScreen mainScreen].bounds.size.height == 812 ? 44 : 20)
#define SL_TABBER_BAR_HEIGHT ([UIScreen mainScreen].bounds.size.height == 812 ? 83 : 49)
#define SL_BOTTOM_MARGIN ([UIScreen mainScreen].bounds.size.height == 812 ? 34 : 0)

#define SL_IID @"17769976909"
#define SL_DEVICE_ID @"41312231473"

#define SL_ASYN_GET_MAIN(...)   dispatch_async(dispatch_get_main_queue(), ^{ \
__VA_ARGS__;\
});


#define HNNotificationCenter [NSNotificationCenter defaultCenter]

FOUNDATION_EXTERN NSString const *SL_BASE_URL;

FOUNDATION_EXTERN NSString *KHomeStopRefreshNot;

@interface SLHeader : NSObject

@end
