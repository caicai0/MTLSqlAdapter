//
//  CAISlide.m
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAISlide.h"

@implementation CAISlide

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"author":@"author",
             @"slideId":@"id",
             @"imageUrlString":@"imgurl",
             @"openType":@"opentype",
             @"original":@"original",
             @"publishedTime":@"publishedtime",
             @"readTimes":@"readtimes",
             @"shortTitle":@"shorttitle",
             @"source":@"source",
             @"subTitle":@"subtitle",
             @"summary":@"summary",
             @"title":@"title",
             @"newsType":@"news_type"
             };
}

@end
