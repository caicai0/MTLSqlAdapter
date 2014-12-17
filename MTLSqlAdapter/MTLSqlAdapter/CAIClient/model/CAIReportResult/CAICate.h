//
//  CAICate.h
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAICate : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *cateId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger sqn;

@end
