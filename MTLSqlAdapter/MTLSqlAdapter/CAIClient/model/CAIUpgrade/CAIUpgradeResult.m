//
//  CAIUpgradeResult.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIUpgradeResult.h"

@implementation CAIUpgradeResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"code":@"code",
             @"note":@"datas.note",
             @"path":@"datas.path",
             @"version":@"datas.version"
             };
}

@end
