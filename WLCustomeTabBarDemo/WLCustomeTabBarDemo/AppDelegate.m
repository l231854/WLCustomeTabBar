//
//  AppDelegate.m
//  WLCustomeTabBar
//
//  Created by 雷王 on 2019/3/28.
//  Copyright © 2019 WL. All rights reserved.
//

#import "AppDelegate.h"
#import "WLCustomeTabBarViewController.h"
#import "WLCustomeTabBarModel.h"
#define UIColorFromRGB(rgbValue,alphaValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:alphaValue]

#define WLTabbarNormalColor UIColorFromRGB(0x808080, 1.0)
#define WLTabbarSelectedColor [UIColor colorWithRed:249/255.0 green:104/255.0 blue:28/255.0 alpha:1]

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window =[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    WLCustomeTabBarModel *model = [[WLCustomeTabBarModel alloc] init];
    model.title=@"首页";
    model.normalImage=@"defaultTabBarNormal";
    model.selectImage=@"defaultTabBarSelect";
    model.normalColor = WLTabbarNormalColor;
    model.SelectColor=WLTabbarSelectedColor;
    model.fontSize=14;
    WLCustomeTabBarModel *model2 = [[WLCustomeTabBarModel alloc] init];
    model2.title=@"我的";
    model2.normalImage=@"defaultTabBarNormal";
    model2.selectImage=@"defaultTabBarSelect";
    model2.normalColor = WLTabbarNormalColor;
    model2.SelectColor=WLTabbarSelectedColor;
    model2.fontSize=14;
    NSArray *array = [[NSArray alloc] initWithObjects:model ,model2, nil];
    NSArray *arrayVC = [[NSArray alloc] initWithObjects:@"FirstViewController" ,@"SecondViewController", nil];
    
    WLCustomeTabBarViewController *vc = [WLCustomeTabBarViewController initwithWLCustomeTabBarViewController:arrayVC withModel:array];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

