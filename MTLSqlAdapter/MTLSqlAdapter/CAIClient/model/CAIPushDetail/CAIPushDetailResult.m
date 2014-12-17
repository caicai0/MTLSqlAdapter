//
//  CAIPushDetailResult.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIPushDetailResult.h"

@implementation CAIPushDetailResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"code":@"code",
             @"ad":@"datas"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"ad"]) {
        return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CAIAd class]];
    }
    return nil;
}

@end
