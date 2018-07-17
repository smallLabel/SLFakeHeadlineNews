//
//  SLHomeNewsRequest.h
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "SLNetWorkBaseModel.h"

@interface SLHomeNewsRequest : SLNetWorkBaseModel
@property (nonatomic , copy)NSString *category;
@property (nonatomic , copy)NSString *device_id;
@property (nonatomic , copy)NSString *iid;
@property (nonatomic , copy)NSString *device_platform;
@property (nonatomic , copy)NSString *version_code;
@end
