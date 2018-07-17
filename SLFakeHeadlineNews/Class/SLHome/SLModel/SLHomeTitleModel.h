//
//  SLHomeTitleModel.h
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLHomeTitleModel : NSObject

@property (nonatomic , copy)NSString *category;

@property (nonatomic , copy)NSString *concern_id;

@property (nonatomic , assign)int default_add;

@property (nonatomic , assign)int flags;

@property (nonatomic , copy)NSString *icon_url;

@property (nonatomic , copy)NSString *name;

@end
