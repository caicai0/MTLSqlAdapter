//
//  CAICollection.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAICollection.h"

@implementation CAICollection

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"collectTime":@"collecttime",
             @"imageUrlString":@"imgurl",
             @"memCard":@"memcard",
             @"newsId":@"newsid",
             @"importSource":@"import_source",
             @"readTimes":@"readtimes",
             @"source":@"source",
             @"summary":@"summary",
             @"title":@"title",
             @"newsType":@"newstype"
             };
}

@end
