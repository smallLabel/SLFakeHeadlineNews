//
//  SLNetworkManager.h
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SuccessHandle)(id response);
typedef void(^FailureHandle)(NSError *error);


@interface SLNetworkManager : NSObject


+ (NSURLSessionDataTask *)postRequestWithURLString:(NSString *)URLString parameters:(NSDictionary *)parameters success:(SuccessHandle)success failure:(FailureHandle)failure;

+ (NSURLSessionDataTask *)getRequestWithURLString:(NSString *)URLString parameters:(NSDictionary *)parameters success:(SuccessHandle)success failure:(FailureHandle)failure;


@end
