//
//  CAICollectionResult.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAICollectionResult.h"

@implementation CAICollectionResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"errorMessage":@"errorMsg"
             };
}

+ (NSValueTransformer *)datasJSONTransformer{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAICollection class]];
}

@end
