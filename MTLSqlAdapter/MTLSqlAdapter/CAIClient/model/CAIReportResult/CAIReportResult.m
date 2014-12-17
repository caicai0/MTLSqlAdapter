//
//  CAIReportResult.m
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIReportResult.h"

@implementation CAIReportResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return nil;
}

+ (NSValueTransformer *)adsJSONTransformer{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAIAd class]];
}

+ (NSValueTransformer *)catesJSONTransformer{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAICate class]];
}

@end
