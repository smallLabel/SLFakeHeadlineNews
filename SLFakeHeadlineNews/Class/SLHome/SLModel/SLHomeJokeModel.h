//
//  SLHomeJokeModel.h
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLHomeJokeInfoModel : NSObject
@property (nonatomic , copy)NSString *content;
@property (nonatomic , assign)int comment_count;
@property (nonatomic , assign)int star_count;
@property (nonatomic , assign)int hate_count;

@end

@interface SLHomeJokeSummaryModel : NSObject

@property (nonatomic , copy)NSString *content;
@property (nonatomic , assign)int code;
@property (nonatomic , strong)SLHomeJokeInfoModel *infoModel;

// 忽略的属性
@property (nonatomic , assign)BOOL starBtnSelcetd;
@property (nonatomic , assign)BOOL hateBtnSelcetd;
@property (nonatomic , assign)BOOL collectionSelcetd;

@end
@interface SLHomeJokeModel : NSObject
@property (nonatomic , strong)NSArray *data;
@property (nonatomic , copy)NSString *message;
@end
