//
//  CAIRegistResult.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIRegistOrLoginResult.h"

@implementation CAIRegistOrLoginResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"cache":@"cache",
             @"code":@"code",
             @"user":@"datas",
             @"isPlusScore":@"isplusscore"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"user"]) {
        return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CAIRegistedUser class]];
    }
    return nil;
}

@end
