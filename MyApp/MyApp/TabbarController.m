//
//  TabbarController.m
//  MyApp
//
//  Created by Yuttana Kungwon on 1/13/2558 BE.
//  Copyright (c) 2558 E-Commerce Solution Co., Ltd. All rights reserved.
//

#import "TabbarController.h"
#import <MyFramework/MyFramework.h>

@interface TabbarController ()

@end

@implementation TabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self setDelegate:self];
    
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *tab1 = (UINavigationController *)[mainStoryBoard instantiateViewControllerWithIdentifier:@"FirstViewNav"];
    
    UIStoryboard *fwStoryBoard = [UIStoryboard storyboardWithName:@"MyFramework" bundle:[NSBundle bundleWithIdentifier:@"com.igetweb.MyFramework"]];
    UINavigationController *tab2 = (UINavigationController *)[fwStoryBoard instantiateViewControllerWithIdentifier:@"frameworkView"];
    
    NSMutableArray *tabbarControllers = [[NSMutableArray alloc] init];
    [tabbarControllers addObject:tab1];
    [tabbarControllers addObject:tab2];
    [self setViewControllers:tabbarControllers];
    
    [tab1.tabBarItem setTitle:@"My App"];
    [tab2.tabBarItem setTitle:@"Framework"];

    
}


@end
