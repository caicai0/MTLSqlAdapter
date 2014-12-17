//
//  CAINewsContent.h
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAINewsContent : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString * author;
@property (nonatomic, strong) NSString * body;
@property (nonatomic, assign) NSInteger commentCount;
@property (nonatomic, strong) NSString * newsId;
@property (nonatomic, strong) NSString * imageUrlString;
@property (nonatomic, strong) NSString * longUrlString;
@property (nonatomic, strong) NSString * publishedTime;
@property (nonatomic, strong) NSString * source;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * redirect;

@end
