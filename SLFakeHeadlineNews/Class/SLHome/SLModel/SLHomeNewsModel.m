//
//  SLHomeNewsModel.m
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "SLHomeNewsModel.h"
#import <MJExtension/MJExtension.h>

@implementation SLHomeNewsImageModel
@end

@implementation SLHomeNewsInfoModel
+ (NSDictionary *)mj_objectClassInArray {
    return @{
             @"image_list" : @"SLHomeNewsImageModel"
             };
}
@end

@implementation SLHomeNewsSummaryModel
- (SLHomeNewsInfoModel *)infoModel {
    if (_infoModel) {
        return _infoModel;
    }
    NSData *data = [self.content dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
  SLHomeNewsInfoModel *model = [[SLHomeNewsInfoModel alloc]init];
    [model mj_setKeyValues:dic];
    _infoModel = model;
    return model;
}
@end

@implementation SLHomeNewsModel

+ (NSDictionary *)mj_objectClassInArray {
    return @{
             @"data" : @"SLHomeNewsSummaryModel"
             };
}
@end

