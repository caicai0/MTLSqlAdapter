//
//  CAINews.m
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAINews.h"

@implementation CAINews

#pragma mark - mantle
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

#pragma mark - MTLFMDBSerializing

+ (NSDictionary *)FMDBColumnsByPropertyKey{
    return @{
             @"author":@"author1",
             @"newsId":@"newsId",
             @"imageUrlString":@"imageUrlString",
             @"publishedTime":@"publishedTime",
             @"readTimes":@"readTimes",
             @"shortTitle":@"shortTitle",
             @"source":@"source",
             @"subTitle":@"subTitle",
             @"summary":@"summary",
             @"title":@"title",
             @"newsType":@"newsType",
             @"importSource":@"importSource",
             @"openType":@"openType"
             };
}

+ (NSArray *)FMDBPrimaryKeys{
    return @[@"newsId"];
}
@end
