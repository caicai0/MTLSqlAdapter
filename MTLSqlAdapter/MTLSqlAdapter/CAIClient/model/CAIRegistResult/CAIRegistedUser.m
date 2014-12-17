//
//  CAIRegistedUser.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIRegistedUser.h"

@implementation CAIRegistedUser

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"birthday":@"birthday",
             @"level":@"level",
             @"levelupscore":@"levelupscore",
             @"memberType":@"membertype",
             @"memcard":@"memcard",
             @"mobile":@"mobile",
             @"nickName":@"nickname",
             @"percent":@"percent",
             @"photoUrlString":@"photo",
             @"registTime":@"registertime",
             @"score":@"score",
             @"state":@"state",
             @"usableScore":@"usablescore",
             @"userId":@"userid",
             @"plusSore":@"isplusscore"
             };
}

@end
