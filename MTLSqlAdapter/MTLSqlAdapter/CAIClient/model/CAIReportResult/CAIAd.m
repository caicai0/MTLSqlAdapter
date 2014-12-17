//
//  CAIAd.m
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIAd.h"
@implementation CAIAd

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"adId":@"adid",
             @"content":@"content",
             @"createTime":@"createtime",
             @"eTime":@"etime",
             @"imageUrlString":@"image",
             @"position":@"position",
             @"shareImageUrlString":@"shareimg",
             @"state":@"state",
             @"sTime":@"stime",
             @"thumbImageUrlString":@"thumbimg",
             @"title":@"title",
             @"type":@"type",
             @"urlString":@"url",
             @"weight":@"weight"
             };
}

@end
