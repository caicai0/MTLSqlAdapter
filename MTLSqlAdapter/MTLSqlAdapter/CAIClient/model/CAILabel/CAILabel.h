//
//  CAILabel.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAILabel : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString * columnid;
@property (nonatomic, assign)NSInteger count;
@property (nonatomic, strong)NSString * createTime;
@property (nonatomic, strong)NSString * labelId;
@property (nonatomic, strong)NSString * labelName;
@property (nonatomic, assign)NSInteger operation;
@property (nonatomic, assign)NSInteger sortNo;

@end
