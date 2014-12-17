//
//  CAISubsribeResult.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAISubsribe.h"
@interface CAISubsribeResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString * errorMessage;
@property (nonatomic, strong)NSArray * subsribes;

@end
