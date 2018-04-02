//
//  CTMediator+TAConfirmOrder.h
//  Target-Action
//
//  Created by 上海彭于晏 on 2018/4/2.
//  Copyright © 2018年 上海彭于晏. All rights reserved.
//

#import "CTMediator.h"
#import <UIKit/UIKit.h>

@interface CTMediator (TAConfirmOrder)

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName ConfirmComplete:(dispatch_block_t)confirmComplete;
@end
