//
//  CAIComment.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIComment : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString * author;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSString * commentId;
@property (nonatomic, strong) NSString * newsId;//我的
@property (nonatomic, strong) NSString * ctime;
@property (nonatomic, strong) NSString * headImageUrlString;
@property (nonatomic, strong) NSString * nickName;
@property (nonatomic, strong) NSString * replyContent;
@property (nonatomic, strong) NSString * replyNickName;
@property (nonatomic, strong) NSString * reviewerIp;
@property (nonatomic, assign) NSInteger sourceType;
@property (nonatomic, assign) NSInteger support;
@property (nonatomic, strong) NSString * title;

@property (nonatomic, strong) NSString * columid;//用于数据库查询

@end
