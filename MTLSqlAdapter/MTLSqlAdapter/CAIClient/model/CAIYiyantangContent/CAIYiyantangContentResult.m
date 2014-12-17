//
//  CAIYiyantangContentResult.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIYiyantangContentResult.h"

@implementation CAIYiyantangContentResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"cache":@"cache",
             @"code":@"code",
             @"getTime":@"gettime",
             @"pushTime":@"pushtime",
             @"fangtan":@"ft",
             @"fangtanArr":@"ftlist"
             };
}

+ (NSValueTransformer *)fangtanArrJSONTransformer{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAIYiyantangContent class]];
}

+ (NSValueTransformer *)fangtanJSONTransformer{
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CAIYiyantanContentHeader class]];
}

@end
