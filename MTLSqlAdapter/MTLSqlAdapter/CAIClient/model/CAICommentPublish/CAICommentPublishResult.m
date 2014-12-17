//
//  CAICommentPublishResult.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAICommentPublishResult.h"

@implementation CAICommentPublishResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"comment":@"datas",
             @"isPlusScore":@"isplusscore"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"comment"]) {
        return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CAIComment class]];
    }
    return nil;
}

@end
