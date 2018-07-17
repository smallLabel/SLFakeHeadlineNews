//
//  SLHomeTitleRequest.h
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "SLNetWorkBaseModel.h"

@interface SLHomeTitleRequest : SLNetWorkBaseModel
@property (nonatomic , copy)NSString *iid;
@property (nonatomic , copy)NSString *device_id;
@property (nonatomic , assign)int aid;
@end
