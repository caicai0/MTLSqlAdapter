//
//  CAIMessageAuthenticationResult.m
//  CNHC
//
//  Created by mac on 14/11/27.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "CAIMessageAuthenticationResult.h"

@implementation CAIMessageAuthenticationResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"code":@"code",
             @"datas":@"datas",
             @"defaltCount":@"defaltcount",
             @"errorString":@"error",
             @"maxCount":@"maxcount",
             @"total":@"total",
             @"yanzhengma":@"yangzhengma"
             };
}

@end
