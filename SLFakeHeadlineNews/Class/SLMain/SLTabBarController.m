//
//  SLTabBarController.m
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/5.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "SLTabBarController.h"
#import "SLNavigationController.h"
#import "SLHomeVC.h"
#import "SLMicroHeadlineNewsVC.h"
#import "SLMicroVideoVC.h"
#import "SLVideoVC.h"
#import "UIView+AnimationExtend.h"
#import "UITabBar+SLTabBar.h"

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
    [self addChildController];
}
//添加子控制器
- (void)addChildController {
    _homeNav = [self addChildViewControllerWithClass:[SLHomeVC  class] imageName:@"home_tabbar_32x32_" selectedImageName:@"home_tabbar_press_32x32_" title:@"首页"];
    [self addChildViewControllerWithClass:[SLVideoVC class] imageName:@"video_tabbar_32x32_" selectedImageName:@"video_tabbar_press_32x32_" title:@"西瓜视频"];
    [self addChildViewControllerWithClass:[SLMicroHeadlineNewsVC class] imageName:@"weitoutiao_tabbar_32x32_" selectedImageName:@"weitoutiao_tabbar_press_32x32_" title:@"微头条"];
    [self addChildViewControllerWithClass:[SLMicroVideoVC class] imageName:@"huoshan_tabbar_32x32_" selectedImageName:@"huoshan_tabbar_press_32x32_" title:@"小视频"];
    self.delegate = self;
}

- (SLNavigationController *)addChildViewControllerWithClass:(Class)class
                              imageName:(NSString *)imageName
                      selectedImageName:(NSString *)selectedImageName
                                  title:(NSString *)title {
    UIViewController *controller = [[class alloc] init];
    SLNavigationController *nav = [[SLNavigationController alloc] initWithRootViewController:controller];
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:nav];
    return nav;
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    if (self.selectedViewController == viewController && self.selectedViewController == _homeNav) {
        if  ([_swapableImageView.layer animationForKey:@"rotationAnimation"]) {
            return YES;
        }

        _homeNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_tabber_loading_32*32_"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        _homeNav.tabBarItem.image = [[UIImage imageNamed:@"home_tabber_loading_32*32_"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [self addAnimation];
    } else {
        _homeNav.tabBarItem.image = [[UIImage imageNamed:@"home_tabbar_32x32_"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        _homeNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_tabbar_press_32x32_"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [_swapableImageView stopRotateAnimation];
    }
    
    if (self.selectedViewController == viewController) {
        SLNavigationController *naviController = (SLNavigationController *)viewController;
        if ([naviController.viewControllers.firstObject respondsToSelector:@selector(needRefreshTableViewData)]) {
            [naviController.viewControllers.firstObject needRefreshTableViewData];
        }
    }
    
    return YES;
}

- (void)addAnimation {
    UIControl *tabbarButton = [_homeNav.tabBarItem valueForKey:@"view"];
    UIImageView *imageView = [tabbarButton valueForKey:@"info"];
    [imageView rotateAnimation];
    _swapableImageView = imageView;
    [self.tabBar hideBadgeOnItemIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
