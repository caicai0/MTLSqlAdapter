//
//  CAIYiyantangComment.m
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAIYiyantangComment.h"

@implementation CAIYiyantangComment

//@property (nonatomic, strong)NSString * headImageUrlString;
//@property (nonatomic, strong)NSString * commentId;
//@property (nonatomic, strong)NSString * memcard;
//@property (nonatomic, strong)NSString * time;
//@property (nonatomic, strong)NSString * title;
//@property (nonatomic, strong)NSString * userName;

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"headImageUrlString":@"headimg",
             @"commentId":@"id",
             @"memcard":@"memcard",
             @"time":@"time",
             @"title":@"title",
             @"userName":@"username"
             };
}

@end
