//
//  CAISubsribeResult.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAISubsribeResult.h"

@implementation CAISubsribeResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"errorMessage":@"errorMsg",
             @"subsribes":@"datas"
             };
}

+ (NSValueTransformer *)subsribesJSONTransformer{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAISubsribe class]];
}
@end
