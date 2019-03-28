//
//  WLCustomeTabBarItem.h
//  WLCustomeTabBar
//
//  Created by 雷王 on 2019/3/28.
//  Copyright © 2019 WL. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WLCustomeTabBarModel;
NS_ASSUME_NONNULL_BEGIN


@interface WLCustomeTabBarItem : UIView
@property(nonatomic,strong) UIButton *imageview;
@property(nonatomic,strong) UIButton *tilte;
@property(nonatomic,copy) void(^didClickItem)(WLCustomeTabBarItem *item);
+(WLCustomeTabBarItem *)initWLCustomeTabBarItem:(CGRect )frame withModel:(WLCustomeTabBarModel *)model;

@end

NS_ASSUME_NONNULL_END
