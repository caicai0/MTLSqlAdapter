//
//  CAICate.m
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAICate.h"

@implementation CAICate
+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"cateId":@"id",
             @"name":@"name",
             @"sqn":@"sqn"
             };
}
@end
