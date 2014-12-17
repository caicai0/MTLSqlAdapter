//
//  CAIYiyantangRefreshResult.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIYiyantangRefreshResult.h"

@implementation CAIYiyantangRefreshResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"code":@"code",
             @"cache":@"cache",
             @"ftstatus":@"ftstatus",
             @"pushTime":@"pushtime"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"datas"]) {
        return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAIYiyantangContent class]];
    }
    return nil;
}

@end
