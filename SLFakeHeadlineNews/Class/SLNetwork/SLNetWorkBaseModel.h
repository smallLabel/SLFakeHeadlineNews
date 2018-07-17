//
//  SLNetWorkBaseModel.h
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLURLManager.h"
#import "SLNetworkManager.h"

@interface SLNetWorkBaseModel : NSObject

@property (nonatomic , copy)NSString *urlString;

@property (nonatomic , assign)BOOL isPost;

@property (nonatomic , assign)BOOL showNetErrorHUD;

@property (nonatomic , strong)NSDictionary *extraParamters;

+ (instancetype)networkModelWithURLString:(NSString *)urlString isPost:(BOOL)isPost;

- (void)sendRequestWithSuccess:(SuccessHandle)success failure:(FailureHandle)failure;

@end
