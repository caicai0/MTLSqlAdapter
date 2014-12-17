//
//  CAILabelListResult.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAILabelListResult.h"

@implementation CAILabelListResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"errorMessage":@"errorMsg",
             @"labels":@"datas"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"labels"]) {
        return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAILabel class]];
    }
    return nil;
}

@end
