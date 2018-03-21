//
//  CAIMessage.m
//  CNHC
//
//  Created by liyufeng on 14/11/28.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "CAIMessage.h"

@implementation CAIMessage

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"flag":@"flag",
             @"headImageUrlString":@"headimg",
             @"memcard":@"memcard",
             @"qName":@"qname",
             @"time":@"time",
             @"title":@"",
             @"question":@"question",
             @"userName":@"username",
             @"messageId":@"id",
             @"commentCount":@"pinglunnum",
             @"praisedCount":@"supportnum"
             };
}

@end
