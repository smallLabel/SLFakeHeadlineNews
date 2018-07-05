//
//  SLTabBarController.m
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/5.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "SLTabBarController.h"
#import "SLNavigationController.h"


@interface SLTabBarController () <UITabBarControllerDelegate>
@property (nonatomic,  strong) SLNavigationController *homeNav;

@property (nonatomic, strong)UIImageView *swapableImageView;

@end

@implementation SLTabBarController

+ (void)initialize {
    [[UITabBar appearance] setTranslucent:NO];
    [UITabBar appearance].barTintColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.0];
    UITabBarItem *item = [UITabBarItem appearance];
    //设置文字偏移
    item.titlePositionAdjustment = UIOffsetMake(0, -5);
    NSMutableDictionary *atts = [NSMutableDictionary dictionary];
    atts[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    atts[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.31 green:0.31 blue:0.31 alpha:1.0f];
    [item setTitleTextAttributes:atts forState:UIControlStateNormal];
    
    atts[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.97 green:0.35 blue:0.35 alpha:1.0];
    [item setTitleTextAttributes:atts forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
//添加子控制器
- (void)addChildController {
    _homeNav = [self addChildViewControllerWithClass:[SLNavigationController class] imageName:<#(NSString *)#> selectedImageName:<#(NSString *)#> title:<#(NSString *)#>]
}

- (void)addChildViewControllerWithClass:(Class)class
                              imageName:(NSString *)imageName
                      selectedImageName:(NSString *)selectedImageName
                                  title:(NSString *)title {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
