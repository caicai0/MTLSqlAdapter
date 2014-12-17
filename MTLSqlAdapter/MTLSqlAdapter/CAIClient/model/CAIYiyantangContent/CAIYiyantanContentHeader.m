//
//  CAIYiyantanContentHeader.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIYiyantanContentHeader.h"

@implementation CAIYiyantanContentHeader

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"backgroudImageUrlString":@"bgimg",
             @"eTime":@"etime",
             @"fangtanStatus":@"ftstatus",
             @"fangtanId":@"id",
             @"guest":@"jiabin",
             @"shareMessage":@"sharemsg",
             @"shareUrlString":@"shareurl",
             @"shareTitle":@"sharetitle",
             @"sTime":@"stime",
             @"summary":@"summary",
             @"title":@"title",
             @"host":@"zhuchi"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"guest"] || [key isEqualToString:@"host"]) {
        return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CAIYiyantangMember class]];
    }
    return nil;
}

@end
