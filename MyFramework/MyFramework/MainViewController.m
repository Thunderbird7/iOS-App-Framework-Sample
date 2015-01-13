//
//  MainViewController.m
//  MyFramework
//
//  Created by Yuttana Kungwon on 1/13/2558 BE.
//  Copyright (c) 2558 E-Commerce Solution Co., Ltd. All rights reserved.
//

#import "MainViewController.h"
#import "MyClass.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self.view setBackgroundColor:[UIColor grayColor]];
    

    
    [self.navigationItem setTitle:@"In a Framework!"];
    
    MyClass *m = [[MyClass alloc] init];
    NSLog(@"%@", [m greetingsWithName:@"BIRD"]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
