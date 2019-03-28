//
//  WLCustomeTabBarViewController.m
//  WLCustomeTabBar
//
//  Created by 雷王 on 2019/3/28.
//  Copyright © 2019 WL. All rights reserved.
//

#import "WLCustomeTabBarViewController.h"
#import "WLCustomeTabBarView.h"

@interface WLCustomeTabBarViewController ()<WLCustomeTabBarViewDelegate>

@end

@implementation WLCustomeTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
+(WLCustomeTabBarViewController *)initwithWLCustomeTabBarViewController:(NSArray *)arrayVC withModel:(NSArray *)array {
  
    WLCustomeTabBarViewController *vc = [[WLCustomeTabBarViewController alloc] init];
    [vc setUpView:arrayVC withModel:array];
    return vc;
}

#pragma mark --
-(void)setUpView:(NSArray *)arrayVC withModel:(NSArray *)array {
    CGRect frame = self.tabBar.frame;
    if ([UIScreen mainScreen].bounds.size.height >= 812) {
        frame.origin.y = frame.origin.y-34;
    }
    WLCustomeTabBarView *tabBar = [WLCustomeTabBarView initWLCustomeTabBarView:frame withArray:array defaultSelect:0];
    tabBar.wlCustomeTabBarViewDelegate=self;
    [self.tabBar removeFromSuperview];  //移除TabBarController自带的下部的条
    [self.view addSubview:tabBar];

    for (NSString *strVC in arrayVC) {
        [self addChildViewController:[self stringChangeToClass:strVC]];
    }

    self.selectedIndex=0;
}
/**
 * @brief 将字符串转化为控制器.
 *
 * @param str 需要转化的字符串.
 *
 * @return 控制器(需判断是否为空).
 */
- (UIViewController*)stringChangeToClass:(NSString *)str {
    id vc = [[NSClassFromString(str) alloc]init];
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    }
    return nil;
}

#pragma mark --WLCustomeTabBarViewDelegate
-(void)WLCustomeTabBarViewdidClick:(NSInteger)index
{
    NSLog(@"%ld",index);
    self.selectedIndex = index;
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.tabBar removeFromSuperview];  //移除TabBarController自带的下部的条

}


@end
