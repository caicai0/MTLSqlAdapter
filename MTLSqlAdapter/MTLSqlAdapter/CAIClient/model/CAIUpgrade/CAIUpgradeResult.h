//
//  CAIUpgradeResult.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIUpgradeResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString * note;
@property (nonatomic, strong)NSString * path;
@property (nonatomic, strong)NSString * version;

@end
