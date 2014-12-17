//
//  CAINetClient.h
//  netWork
//
//  Created by mac on 14/11/17.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
@interface CAINet : NSObject

+(id)shareClient;

#pragma mark - 属性
@property (nonatomic, strong)NSString *baseUrlString;
@property (nonatomic, strong)NSDictionary *baseHeaderField;

- (AFHTTPRequestOperation *)get:(NSString *)urlString paramaters:(NSDictionary *)paramters finish:(void(^)(NSDictionary *responsObject , NSError *error)) finish;
- (AFHTTPRequestOperation *)post:(NSString *)urlString parameters:(NSDictionary *)paramters finish:(void(^)(NSDictionary *responsObject , NSError *error)) finish;
- (AFHTTPRequestOperation *)uploadImageWithUrlString:(NSString *)urlString filePath:(NSString *)filePath finish:(void (^)(NSDictionary *, NSError *))finish;

@end
