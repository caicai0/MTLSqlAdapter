//
//  CAIAuthorSyncResult.m
//  CNHC
//
//  Created by liyufeng on 14/12/2.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "CAIAuthorSyncResult.h"
#import "CAIAuthor.h"

@implementation CAIAuthorSyncResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"code":@"code",
             @"errorMessage":@"errorMsg",
             @"datas":@"datas"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"datas"]) {
        return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAIAuthor class]];
    }
    return nil;
}

@end
