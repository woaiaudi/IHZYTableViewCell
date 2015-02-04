//
//  UITableViewCell+IHZYTableViewCell.h
//  IHZYTableViewCellDemo
//
//  Created by zyue on 15/2/4.
//  Copyright (c) 2015年 Ironhorse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (IHZYTableViewCell)
/**
 *  @author zy, 15-02-04 10:02:48
 *
 *  @brief  返回类名，用于这个cell的identify
 *
 *  @return 类名
 */
+(NSString *)className;
/**
 *  @author zy, 15-02-04 10:02:38
 *
 *  @brief  返回xib中设置的cell 高度
 *
 *  @return cell 高度
 */
+(CGFloat)heightForRow;
/**
 *  @author zy, 15-02-04 10:02:11
 *
 *  @brief  使用时，用此方法注册tableview cell
 *
 *  @param tableView 页面中使用的tableview对象
 */
+ (void)registerNibToTableView:(UITableView *)tableView;
@end
