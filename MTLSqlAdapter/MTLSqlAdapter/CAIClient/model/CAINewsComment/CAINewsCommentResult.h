//
//  CAINewsCommentResult.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "CAIComment.h"
@interface CAINewsCommentResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)BOOL cache;//缓存
@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString *errorMsg;
@property (nonatomic, strong)NSString *getTime;
@property (nonatomic, strong)NSArray *datas;//评论数据

@end
