//
//  UITableViewCell+IHZYTableViewCell.m
//  IHZYTableViewCellDemo
//
//  Created by zyue on 15/2/4.
//  Copyright (c) 2015年 Ironhorse. All rights reserved.
//

#import "UITableViewCell+IHZYTableViewCell.h"

@implementation UITableViewCell (IHZYTableViewCell)
+(NSString *)className
{
    return NSStringFromClass([self class]);
}
+(CGFloat)heightForRow
{
    //    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil];
    UIView * thisView =(UIView *)[views firstObject];
    CGFloat returnHeioght = thisView.frame.size.height;
    return returnHeioght;
}
+ (void)registerNibToTableView:(UITableView *)tableView
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:NSStringFromClass([self class])];
}
@end
