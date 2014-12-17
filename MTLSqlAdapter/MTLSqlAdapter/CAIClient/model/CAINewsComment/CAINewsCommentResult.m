//
//  CAINewsCommentResult.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAINewsCommentResult.h"

@implementation CAINewsCommentResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"cache":@"cache",
             @"code":@"code",
             @"errorMsg":@"errorMsg",
             @"getTime":@"gettime",
             @"datas":@"datas",
             };
}

+ (NSValueTransformer *)datasJSONTransformer{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAIComment class]];
}

@end
