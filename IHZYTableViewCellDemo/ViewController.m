//
//  ViewController.m
//  IHZYTableViewCellDemo
//
//  Created by zyue on 15/2/4.
//  Copyright (c) 2015年 Ironhorse. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goTestPage:(id)sender {
    TestViewController *testPage = [[TestViewController alloc]init];
    UINavigationController * pageNv = [[UINavigationController alloc]initWithRootViewController:testPage];
    [self presentViewController:pageNv animated:YES completion:nil];

}

@end
