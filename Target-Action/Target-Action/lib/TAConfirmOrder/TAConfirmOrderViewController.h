//
//  TAConfirmOrderViewController.h
//  Target-Action
//
//  Created by 上海彭于晏 on 2018/4/2.
//  Copyright © 2018年 上海彭于晏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TAConfirmOrderViewController : UIViewController
@property (nonatomic, copy) NSString *goodsId;
@property (nonatomic, copy) NSString *goodsName;
@property (nonatomic, copy) dispatch_block_t confirmComplete;
@end
