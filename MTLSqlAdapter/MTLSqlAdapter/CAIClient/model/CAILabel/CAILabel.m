//
//  CAILabel.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAILabel.h"

@implementation CAILabel

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"columnid":@"columnid",
             @"count":@"count",
             @"createTime":@"createtime",
             @"labelId":@"labelid",
             @"labelName":@"labelname",
             @"operation":@"operation",
             @"sortNo":@"sortno"
             };
}

@end
