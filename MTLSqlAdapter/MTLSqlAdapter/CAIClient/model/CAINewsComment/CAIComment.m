//
//  CAIComment.m
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIComment.h"

@implementation CAIComment

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"author":@"author",
             @"content":@"content",
             @"commentId":@"id",
             @"newsId":@"newsid",
             @"ctime":@"ctime",
             @"headImageUrlString":@"headimg",
             @"nickName":@"nickname",
             @"replyContent":@"replycontent",
             @"replyNickName":@"replynickname",
             @"reviewerIp":@"reviewerIp",
             @"sourceType":@"sourcetype",
             @"support":@"support",
             @"title":@"title"
             };
}

@end
