//
//  ViewController.m
//  Target-Action
//
//  Created by 上海彭于晏 on 2018/4/2.
//  Copyright © 2018年 上海彭于晏. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+TAGoodsDetail.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, copy) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"CellId"];
    }
    cell.textLabel.text = self.dataSource[indexPath.row][@"goodsName"];
    cell.detailTextLabel.text = self.dataSource[indexPath.row][@"goodsDesc"];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *goodsItem = self.dataSource[indexPath.row];
    UIViewController *goodsDetailVC = [[CTMediator sharedInstance] goodsDetailViewControllerWithGoodsId:goodsItem[@"goodsId"] goodsName:goodsItem[@"goodsName"]];
    if (goodsDetailVC) {
//        [self.navigationController pushViewController:goodsDetailVC animated:YES];
        [self presentViewController:goodsDetailVC animated:YES completion:nil];
    }
}

#pragma mark - getters
- (NSArray *)dataSource
{
    if (_dataSource == nil) {
        _dataSource = @[
                        @{
                            @"goodsName" : @"小熊饼干",
                            @"goodsDesc" : @"20g,美国产",
                            @"goodsId" : @"12306"
                            },
                        @{
                            @"goodsName" : @"法式软面包",
                            @"goodsDesc" : @"100g,国产",
                            @"goodsId" : @"45789"
                            }
                        ];
    }
    return _dataSource;
}

@end
