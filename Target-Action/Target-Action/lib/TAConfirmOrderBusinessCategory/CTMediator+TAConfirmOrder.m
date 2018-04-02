//
//  CTMediator+TAConfirmOrder.m
//  Target-Action
//
//  Created by 上海彭于晏 on 2018/4/2.
//  Copyright © 2018年 上海彭于晏. All rights reserved.
//

#import "CTMediator+TAConfirmOrder.h"

@implementation CTMediator (TAConfirmOrder)
- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName ConfirmComplete:(dispatch_block_t)confirmComplete
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"goodsId"] = goodsId;
    params[@"goodsName"] = goodsName;
    params[@"completeBlock"] = confirmComplete;
    return [self performTarget:@"TAConfirmOrder" action:@"ConfirmOrderViewController" params:params shouldCacheTarget:NO];
}
@end
