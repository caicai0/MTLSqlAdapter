//
//  CAIYiyantang.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIYiyantang.h"

@implementation CAIYiyantang

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"etime":@"etime",
             @"yiId":@"id",
             @"imageUrlString":@"img",
             @"state":@"state",
             @"stime":@"stime",
             @"title":@"title"
             };
}

@end
