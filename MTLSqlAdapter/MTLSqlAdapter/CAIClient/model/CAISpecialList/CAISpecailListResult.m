//
//  CAISpecailListResult.m
//  CNHC
//
//  Created by liyufeng on 14/12/10.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "CAISpecailListResult.h"

@implementation CAISpecailListResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"code":@"code",
             @"special":@"datas"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if([key isEqualToString:@"special"]){
        return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CAISpecail class]];
    }else{
        return nil;
    }
}

@end
