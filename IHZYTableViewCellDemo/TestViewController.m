//
//  TestViewController.m
//  IHZYTableViewCellDemo
//
//  Created by zyue on 15/2/4.
//  Copyright (c) 2015年 Ironhorse. All rights reserved.
//

#import "TestViewController.h"
#import "TestTableViewCell.h"

@interface TestViewController ()
@property (strong, nonatomic) IBOutlet UITableView *testTableView;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [TestTableViewCell registerNibToTableView:self.testTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [TestTableViewCell heightForRow];
}
#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
- (TestTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellWithIdentifier = [TestTableViewCell className];
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellWithIdentifier];
    if (cell == nil) {
        cell = [[TestTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellWithIdentifier];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.lbTest.text = @"blabla...";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
