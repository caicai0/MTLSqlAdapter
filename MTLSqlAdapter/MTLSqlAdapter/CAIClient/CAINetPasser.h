//
//  CAINetPasser.h
//  CNHC
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CAINetPasser : NSObject

#pragma mark - type相关
+ (id)objectFromDictionary:(NSDictionary *)dic type:(NSInteger )type;
@end
