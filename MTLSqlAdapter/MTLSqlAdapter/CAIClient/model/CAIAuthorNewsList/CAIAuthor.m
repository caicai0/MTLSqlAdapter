//
//  CAIAuthor.m
//  CNHC
//
//  Created by mac on 14/11/27.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "CAIAuthor.h"

@implementation CAIAuthor

//@property (nonatomic, strong)NSString * authorId;
//@property (nonatomic, strong)NSString * authorName;
//@property (nonatomic, assign)NSInteger count;
//@property (nonatomic, strong)NSString * memcard;
//@property (nonatomic, assign)NSInteger operation;
//@property (nonatomic, strong)NSString * photoUrlString;
//@property (nonatomic, strong)NSString * summary;

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"authorId":@"authorid",
             @"authorName":@"authorname",
             @"count":@"count",
             @"memcard":@"memcard",
             @"operation":@"operation",
             @"photoUrlString":@"photo",
             @"summary":@"summary",
             @"creatTime":@"creattime"
             };
}

@end
