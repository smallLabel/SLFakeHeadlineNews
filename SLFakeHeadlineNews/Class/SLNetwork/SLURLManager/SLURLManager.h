//
//  SLURLManager.h
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLURLManager : NSObject
+ (NSString *)homeTitleURLString;
+ (NSString *)homeListURLString;
+ (NSString *)videoTitlesURLString;
+ (NSString *)videoListURLString;
+ (NSString *)microHeadlineURLString;
+ (NSString *)microVideoURLString;
@end
