//
//  CAIReportResult.h
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAIAd.h"
#import "CAICate.h"
@interface CAIReportResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSArray *ads;
@property (nonatomic, strong)NSArray *cates;

@end
