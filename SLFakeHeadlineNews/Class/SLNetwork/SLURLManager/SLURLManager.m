//
//  SLURLManager.m
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "SLURLManager.h"
#import "SLHeader.h"

@implementation SLURLManager

+ (NSString *)homeTitleURLString {
    return [NSString stringWithFormat:@"%@article/category/get_subscribed/v1/?",SL_BASE_URL];
}

+ (NSString *)homeListURLString {
    return [self videoListURLString];
}

+ (NSString *)videoTitlesURLString {
    return [NSString stringWithFormat:@"%@video_api/get_category/v1/?",SL_BASE_URL];
}
+ (NSString *)videoListURLString {
    return [NSString stringWithFormat:@"%@api/news/feed/v58/?",SL_BASE_URL];
}

+ (NSString *)microHeadlineURLString {
    return [NSString stringWithFormat:@"%@api/news/feed/v54/?",SL_BASE_URL];
}

+ (NSString *)microVideoURLString {
    return [NSString stringWithFormat:@"%@api/news/feed/v75/?",SL_BASE_URL];
}

@end
