//
//  CAINonDatasResult.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAINonDatasResult.h"

@implementation CAINonDatasResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"code":@"code",
             @"errorMessage":@"error",
             @"getTime":@"gettime",
             @"isPlusScore":@"isplusscore"
             };
}

@end
