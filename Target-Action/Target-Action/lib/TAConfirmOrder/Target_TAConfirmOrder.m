//
//  Target_TAConfirmOrder.m
//  Target-Action
//
//  Created by 上海彭于晏 on 2018/4/2.
//  Copyright © 2018年 上海彭于晏. All rights reserved.
//

#import "Target_TAConfirmOrder.h"
#import "TAConfirmOrderViewController.h"


@implementation Target_TAConfirmOrder
- (UIViewController *)Action_ConfirmOrderViewController:(NSDictionary *)params
{
    TAConfirmOrderViewController *confirmOrderVC = [[TAConfirmOrderViewController alloc] init];
    confirmOrderVC.goodsId = params[@"goodsId"];
    confirmOrderVC.goodsName = params[@"goodsName"];
    confirmOrderVC.confirmComplete = params[@"completeBlock"];
    return confirmOrderVC;
}
@end
