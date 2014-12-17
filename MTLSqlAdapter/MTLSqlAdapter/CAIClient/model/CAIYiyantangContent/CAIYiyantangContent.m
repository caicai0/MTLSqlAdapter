//
//  CAIYiyantangContent.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIYiyantangContent.h"

@implementation CAIYiyantangContent

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"flag":@"flag",
             @"headerImageUrlString":@"headimg",
             @"contentId":@"id",
             @"memcard":@"memcard",
             @"commentCount":@"pinglunnum",
             @"qName":@"qname",
             @"question":@"question",
             @"praiseCount":@"supportnum",
             @"time":@"time",
             @"title":@"title",
             @"userName":@"username"
             };
}

@end
