//
//  CAIYiyantangCommentListResult.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIYiyantangCommentListResult.h"

@implementation CAIYiyantangCommentListResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"cache":@"cache",
             @"code":@"code",
             @"getTime":@"gettime",
             @"comments":@"data"
             };
}

+ (NSValueTransformer *)commentsJSONTransformer{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAIYiyantangComment class]];
}

@end
