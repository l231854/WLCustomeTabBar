//
//  WLCustomeTabBarItem.m
//  WLCustomeTabBar
//
//  Created by 雷王 on 2019/3/28.
//  Copyright © 2019 WL. All rights reserved.
//

#import "WLCustomeTabBarItem.h"
#import "WLCustomeTabBarModel.h"
@implementation WLCustomeTabBarItem
+(WLCustomeTabBarItem *)initWLCustomeTabBarItem:(CGRect )frame withModel:(WLCustomeTabBarModel *)model{
    //定义图片的宽高
    CGFloat imgW = 25;
    CGFloat imgX = (frame.size.width-imgW)/2.0;
    CGFloat imgSep1 = 2;
    CGFloat imgSep2 = 8;
    CGFloat lbH = 14;
    WLCustomeTabBarItem *item = [[WLCustomeTabBarItem alloc] initWithFrame:frame];
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];

    [item addSubview:contentView];
    UIButton * imageview = [[UIButton alloc] initWithFrame:CGRectMake(imgX, imgSep1, imgW, imgW)];
    [imageview setImage:[UIImage imageNamed:model.normalImage] forState:UIControlStateNormal];
    [imageview setImage:[UIImage imageNamed:model.selectImage] forState:UIControlStateSelected];
    imageview.userInteractionEnabled=NO;
    item.imageview = imageview;
    [contentView addSubview:imageview];
    UIButton * title = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(imageview.frame)+imgSep2, frame.size.width, lbH)];
    [title setTitle:model.title forState:UIControlStateNormal];
    [title setTitle:model.title forState:UIControlStateSelected];
    title.titleLabel.font = [UIFont systemFontOfSize:model.fontSize];
    [title setTitleColor:model.normalColor forState:UIControlStateNormal];
    [title setTitleColor:model.SelectColor forState:UIControlStateSelected];
    title.userInteractionEnabled=NO;
    item.tilte = title;
    [contentView addSubview:title];
    
    item.userInteractionEnabled =YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:item action:@selector(clickItem:)];
    [item addGestureRecognizer:tap];
    return item;
}
#pragma mark --点击item事件
-(void)clickItem:(UIGestureRecognizer *)ges{
    WLCustomeTabBarItem *item = (WLCustomeTabBarItem *)[ges view];
    if ([self didClickItem]) {
        [self didClickItem](item);
    }
}


@end
