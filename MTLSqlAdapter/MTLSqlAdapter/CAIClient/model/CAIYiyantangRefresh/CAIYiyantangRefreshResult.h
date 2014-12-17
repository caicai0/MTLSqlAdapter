//
//  CAIYiyantangRefreshResult.h
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAIYiyantangContent.h"

@interface CAIYiyantangRefreshResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger cache;
@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString * ftstatus;
@property (nonatomic, strong)NSString * pushTime;
@property (nonatomic, strong)NSArray * datas;

@end
