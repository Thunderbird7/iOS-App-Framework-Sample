//
//  AppDelegate.m
//  MyView
//
//  Created by Yuttana Kungwon on 1/13/2558 BE.
//  Copyright (c) 2558 E-Commerce Solution Co., Ltd. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
//    MainViewController *mainVC = [[MainViewController alloc] init];
    
    UIStoryboard *frameworkStoryboard = [UIStoryboard storyboardWithName:@"MyFramework" bundle:[NSBundle bundleWithIdentifier:@"com.igetweb.MyFramework"]];
    MainViewController *rootVC = [frameworkStoryboard instantiateViewControllerWithIdentifier:@"MainView"];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:rootVC];
    
    [self.window setRootViewController:navController];
    
    [self.window makeKeyAndVisible];
    
    [[UINavigationBar appearance] setBackgroundColor:[UIColor greenColor]];
    
    
    return YES;
}

@end
