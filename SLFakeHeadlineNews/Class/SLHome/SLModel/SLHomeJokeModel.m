//
//  SLHomeJokeModel.m
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "SLHomeJokeModel.h"
#import <MJExtension/MJExtension.h>
@implementation SLHomeJokeInfoModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _comment_count = 30;
        _star_count = 120;
        _hate_count = 36;
    }
    return self;
}

+ (NSArray *)mj_ignoredPropertyNames {
    return @[@"comment_count",
             @"star_count",
             @"hate_count"];
}

@end

@implementation SLHomeJokeSummaryModel
- (SLHomeJokeInfoModel *)infoModel {
    if (_infoModel) {
        return _infoModel;
    }
    NSData *data = [self.content dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    SLHomeJokeInfoModel *model = [[SLHomeJokeInfoModel alloc]init];
    [model mj_setKeyValues:dic];
    _infoModel = model;
    return model;
}

+ (NSArray *)mj_ignoredPropertyNames {
    return @[@"starBtnSelcetd",
             @"hateBtnSelcetd",
             @"collectionSelcetd"];
}

@end

@implementation SLHomeJokeModel

+ (NSDictionary *)mj_objectClassInArray {
    return @{
             @"data" : @"SLHomeJokeSummaryModel"
             };
}
@end
