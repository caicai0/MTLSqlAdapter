//
//  CAIRegistedUser.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIRegistedUser : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString * birthday;
@property (nonatomic, assign)NSInteger level;
@property (nonatomic, assign)NSInteger levelupscore;
@property (nonatomic, assign)NSInteger memberType;
@property (nonatomic, strong)NSString * memcard;
@property (nonatomic, strong)NSString * mobile;
@property (nonatomic, strong)NSString * nickName;
@property (nonatomic, assign)float percent;
@property (nonatomic, strong)NSString * photoUrlString;
@property (nonatomic, strong)NSString * registTime;
@property (nonatomic, assign)NSInteger score;
@property (nonatomic, assign)NSInteger state;
@property (nonatomic, assign)NSInteger usableScore;
@property (nonatomic, strong)NSString * userId;
@property (nonatomic, assign)NSInteger plusSore;

@property (nonatomic, strong)NSString *password;
@property (nonatomic, assign)NSInteger status;//状态

@end
