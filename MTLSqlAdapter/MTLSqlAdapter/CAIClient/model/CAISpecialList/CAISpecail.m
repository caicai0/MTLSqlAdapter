//
//  CAISpecail.m
//  CNHC
//
//  Created by liyufeng on 14/12/10.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "CAISpecail.h"
#import "CAINews.h"
//@property (nonatomic, strong)NSString * title;
//@property (nonatomic, strong)NSString * specialId;
//@property (nonatomic, strong)NSString * summary;
//@property (nonatomic, strong)NSString * urlString;
//@property (nonatomic, strong)NSString * imageUrlString;

@implementation CAISpecail

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"title":@"title",
             @"specialId":@"id",
             @"summary":@"summary",
             @"urlString":@"url",
             @"imageUrlString":@"img",
             @"list":@"list"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"list"]) {
        return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAINews class]];
    }else{
        return nil;
    }
}

@end
