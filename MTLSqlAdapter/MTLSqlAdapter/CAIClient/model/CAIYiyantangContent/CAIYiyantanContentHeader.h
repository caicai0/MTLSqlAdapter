//
//  CAIYiyantanContentHeader.h
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAIYiyantangMember.h"

@interface CAIYiyantanContentHeader : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString * backgroudImageUrlString;
@property (nonatomic, strong)NSString * eTime;
@property (nonatomic, assign)NSInteger fangtanStatus;
@property (nonatomic, strong)NSString * fangtanId;
@property (nonatomic, strong)CAIYiyantangMember *guest;
@property (nonatomic, strong)NSString * shareMessage;
@property (nonatomic, strong)NSString * shareUrlString;
@property (nonatomic, strong)NSString * shareTitle;
@property (nonatomic, strong)NSString * sTime;
@property (nonatomic, strong)NSString * summary;
@property (nonatomic, strong)NSString * title;
@property (nonatomic, strong)CAIYiyantangMember *host;

@end
