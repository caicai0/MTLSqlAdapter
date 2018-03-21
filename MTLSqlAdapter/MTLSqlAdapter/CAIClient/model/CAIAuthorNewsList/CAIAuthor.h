//
//  CAIAuthor.h
//  CNHC
//
//  Created by mac on 14/11/27.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIAuthor : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString * authorId;
@property (nonatomic, strong)NSString * authorName;
@property (nonatomic, assign)NSInteger count;
@property (nonatomic, strong)NSString * memcard;
@property (nonatomic, assign)NSInteger operation;
@property (nonatomic, strong)NSString * photoUrlString;
@property (nonatomic, assign)NSInteger sortNo;
@property (nonatomic, strong)NSString * summary;


@property (nonatomic, strong)NSString * creatTime;
@end
