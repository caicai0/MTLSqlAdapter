//
//  CAIYiyantangGuest.h
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"

@interface CAIYiyantangMember : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString * desc;
@property (nonatomic, strong)NSString * imageUrlString;
@property (nonatomic, strong)NSString * memcard;
@property (nonatomic, strong)NSString * name;

@end
