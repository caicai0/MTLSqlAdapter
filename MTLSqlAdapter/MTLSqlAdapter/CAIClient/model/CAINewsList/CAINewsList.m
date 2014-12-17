//
//  CAINewsList.m
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAINewsList.h"

@implementation CAINewsList

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
              @"cache":@"cache",
              @"code":@"code",
              @"errorMsg":@"errorMsg",
              @"getTime":@"gettime",
              @"datas":@"datas",
              @"slides":@"slides",
              @"author":@"author"
              };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"datas"]) {
        return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAINews class]];
    }else if([key isEqualToString:@"slides"]){
        return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAINews class]];
    }else if([key isEqualToString:@"author"]){
        return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CAIAuthor class]];
    }
    return nil;
}

@end
