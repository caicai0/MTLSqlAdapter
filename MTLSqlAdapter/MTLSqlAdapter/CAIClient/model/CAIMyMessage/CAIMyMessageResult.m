//
//  CAIMyMessageResult.m
//  CNHC
//
//  Created by liyufeng on 14/11/28.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "CAIMyMessageResult.h"

@implementation CAIMyMessageResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
            @"code":@"code",
            @"datas":@"datas"
            };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"datas"]) {
        return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAIMessage class]];
    }
    return nil;
}

@end
