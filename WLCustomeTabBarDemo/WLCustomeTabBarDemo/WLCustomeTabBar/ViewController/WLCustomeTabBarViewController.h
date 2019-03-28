//
//  WLCustomeTabBarViewController.h
//  WLCustomeTabBar
//
//  Created by 雷王 on 2019/3/28.
//  Copyright © 2019 WL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WLCustomeTabBarViewController : UITabBarController
//arrayVC 控制器数组 array 模型数组
+(WLCustomeTabBarViewController *)initwithWLCustomeTabBarViewController:(NSArray *)arrayVC withModel:(NSArray *)array;
@end

NS_ASSUME_NONNULL_END
