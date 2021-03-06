//
//  CAIYiyantangCommentListResult.h
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAIYiyantangComment.h"


@interface CAIYiyantangCommentListResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger cache;
@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString *getTime;
@property (nonatomic, strong)NSArray *comments;

@end
