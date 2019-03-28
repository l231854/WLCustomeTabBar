//
//  WLCustomeTabBarModel.h
//  WLCustomeTabBar
//
//  Created by 雷王 on 2019/3/28.
//  Copyright © 2019 WL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface WLCustomeTabBarModel : NSObject
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *normalImage;
@property (nonatomic,copy) NSString *selectImage;
@property (nonatomic,strong) UIColor *normalColor;
@property (nonatomic,strong) UIColor *SelectColor;
@property (nonatomic,assign) NSInteger fontSize;

@end

NS_ASSUME_NONNULL_END
