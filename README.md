# IHZYTableViewCell
使用xib，快速构建UITableViewCell


项目中经常使用到UITableViewCell，使用xib自定义布局cell。
使用方法：
#1，继承UITableViewCell，并使用xib，引入头文件
import "UITableViewCell+IHZYTableViewCell.h"
#2，在tableview页面，使用
[TestTableViewCell registerNibToTableView:self.testTableView];


说明：
获取高度：[TestTableViewCell heightForRow];
获取类名：NSString *CellWithIdentifier = [TestTableViewCell className];//可用作重用标示符
