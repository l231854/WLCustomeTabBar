//
//  WLCustomeTabBarView.m
//  WLCustomeTabBar
//
//  Created by 雷王 on 2019/3/28.
//  Copyright © 2019 WL. All rights reserved.
//

#import "WLCustomeTabBarView.h"
#import "WLCustomeTabBarModel.h"
#import "WLCustomeTabBarItem.h"

#define UIColorFromRGB(rgbValue,alphaValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:alphaValue]
@interface WLCustomeTabBarView()
@end

@implementation WLCustomeTabBarView

+(WLCustomeTabBarView *)initWLCustomeTabBarView:(CGRect )frame withArray:(NSArray *)array defaultSelect:(NSInteger )index{
    WLCustomeTabBarView *view = [[WLCustomeTabBarView alloc] initWithFrame:frame];
    view.viewOfSep = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 1)];
    view.viewOfSep.backgroundColor = UIColorFromRGB(0xf5f5f5, 1.0);

    [view addSubview:view.viewOfSep];
    CGFloat itemW = frame.size.width/array.count;
    CGFloat itemH = frame.size.height-view.viewOfSep.frame.size.height;
    CGFloat itemY = view.viewOfSep.frame.size.height;
//    __weak typeof(self)weakSelf = view;
    for (int i=0; i<array.count; i++) {
        CGFloat itemX = itemW*i;
        WLCustomeTabBarModel *model = [array objectAtIndex:i];
        WLCustomeTabBarItem *item =[WLCustomeTabBarItem initWLCustomeTabBarItem:CGRectMake(itemX, itemY, itemW, itemH) withModel:model];
        item.tag = i;
        item.didClickItem = ^(WLCustomeTabBarItem * _Nonnull item) {
            [view clickItem:item];
        };
        if (i==index) {
            item.imageview.selected=YES;
            item.tilte.selected=YES;
            view.selectItem = item;
        }
        [view addSubview:item];
    }
    return view;
}
-(void)clickItem:(WLCustomeTabBarItem *)item{
    if ([self wlCustomeTabBarViewDelegate]) {
        self.selectItem.imageview.selected=NO;
        self.selectItem.tilte.selected=NO;
        item.imageview.selected=YES;
        item.tilte.selected=YES;
        self.selectItem=item;
        [[self wlCustomeTabBarViewDelegate] WLCustomeTabBarViewdidClick:item.tag];
    }
}




@end
