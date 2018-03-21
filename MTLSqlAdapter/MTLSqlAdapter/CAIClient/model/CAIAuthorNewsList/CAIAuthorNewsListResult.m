//
//  CAIAuthorNewsListResult.m
//  CNHC
//
//  Created by liyufeng on 14/12/12.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "CAIAuthorNewsListResult.h"
#import "CAINews.h"

@implementation CAIAuthorNewsListResult

//@property (nonatomic, strong)CAIAuthor * author;
//@property (nonatomic, strong)NSArray * datas;
//@property (nonatomic, assign)NSInteger code;
//@property (nonatomic, strong)NSString * errorMsg;

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"author":@"author",
             @"cache":@"cache",
             @"datas":@"datas",
             @"code":@"code",
             @"errorMsg":@"errorMsg"
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    if ([key isEqualToString:@"datas"]) {
        return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[CAINews class]];
    }else{
        return nil;
    }
}

@end
