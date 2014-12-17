//
//  CAIYiyantangListResult.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIYiyantangListResult.h"

@implementation CAIYiyantangListResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"cache":@"cache",
             @"code":@"code",
             @"getTime":@"gettime",
             @"datas":@"datas"
             };
}

+ (NSValueTransformer *)datasJSONTransformer{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAIYiyantang class]];
}

@end
