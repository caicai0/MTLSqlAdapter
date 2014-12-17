//
//  CAIYiyantangGuest.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIYiyantangMember.h"

@implementation CAIYiyantangMember

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"desc":@"desc",
             @"imageUrlString":@"imgurl",
             @"memcard":@"memcard",
             @"name":@"name"
             };
}

@end
