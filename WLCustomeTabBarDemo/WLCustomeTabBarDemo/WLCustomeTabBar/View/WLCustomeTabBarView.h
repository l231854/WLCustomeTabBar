//
//  WLCustomeTabBarView.h
//  WLCustomeTabBar
//
//  Created by 雷王 on 2019/3/28.
//  Copyright © 2019 WL. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WLCustomeTabBarItem;
NS_ASSUME_NONNULL_BEGIN
//代理
@protocol  WLCustomeTabBarViewDelegate<NSObject>
//点击了那个tabbar
-(void)WLCustomeTabBarViewdidClick:(NSInteger)index;

@end
@interface WLCustomeTabBarView : UIView
@property (nonatomic,strong) UIView *viewOfSep;
//当前选中的tabbar
@property (nonatomic,strong) WLCustomeTabBarItem *selectItem;

@property(nonatomic,weak) id<WLCustomeTabBarViewDelegate> wlCustomeTabBarViewDelegate;
+(WLCustomeTabBarView *)initWLCustomeTabBarView:(CGRect )frame withArray:(NSArray *)array defaultSelect:(NSInteger )index;

@end

NS_ASSUME_NONNULL_END
