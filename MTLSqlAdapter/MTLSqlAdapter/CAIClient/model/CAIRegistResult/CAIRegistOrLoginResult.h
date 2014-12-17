//
//  CAIRegistResult.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAIRegistedUser.h"
@interface CAIRegistOrLoginResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger cache;
@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)CAIRegistedUser * user;
@property (nonatomic, assign)NSInteger isPlusScore;

@end
