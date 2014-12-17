//
//  CAINewsContent.m
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAINewsContent.h"

@implementation CAINewsContent

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"author":@"author",
             @"body":@"body",
             @"commentCount":@"commcount",
             @"newsId":@"id",
             @"imageUrlString":@"imgurl",
             @"longUrlString":@"longurl",
             @"publishedTime":@"publishedtime",
             @"source":@"source",
             @"summary":@"summary",
             @"title":@"title"
             };
}

@end
