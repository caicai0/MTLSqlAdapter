//
//  CAINewsContentResult.m
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAINewsContentResult.h"

@implementation CAINewsContentResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"newsContent":@"datas"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"newsContent"]) {
        return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CAINewsContent class]];
    }
    return nil;
}

@end
