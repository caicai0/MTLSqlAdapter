//
//  CAICommentPublishResult.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAIComment.h"
@interface CAICommentPublishResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger cache;
@property (nonatomic, assign)NSInteger code;
@property (nonatomic, assign)NSInteger isPlusScore;
@property (nonatomic, strong)CAIComment *comment;

@end
