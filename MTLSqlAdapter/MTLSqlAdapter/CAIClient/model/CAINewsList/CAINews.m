//
//  CAINews.m
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAINews.h"

@implementation CAINews

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"author":@"author",
             @"newsId":@"id",
             @"imageUrlString":@"imgurl",
             @"publishedTime":@"publishedtime",
             @"readTimes":@"readtimes",
             @"shortTitle":@"shorttitle",
             @"source":@"source",
             @"subTitle":@"subtitle",
             @"summary":@"summary",
             @"title":@"title",
             @"newsType":@"news_type",
             @"importSource":@"import_source",
             @"openType":@"opentype"
             };
}

@end
