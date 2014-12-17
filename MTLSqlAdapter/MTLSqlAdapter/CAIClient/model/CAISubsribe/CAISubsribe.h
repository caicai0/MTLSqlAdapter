//
//  CAISubsribe.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAISubsribe : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString * createTime;
@property (nonatomic, assign)NSInteger flag;
@property (nonatomic, strong)NSString * memcard;
@property (nonatomic, assign)NSInteger source;
@property (nonatomic, assign)NSInteger subsid;

@property (nonatomic, assign)NSInteger columid;

@end
