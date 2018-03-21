//
//  CAIAuthorNewsListResult.h
//  CNHC
//
//  Created by liyufeng on 14/12/12.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAIAuthor.h"

@interface CAIAuthorNewsListResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)CAIAuthor * author;
@property (nonatomic, assign)NSInteger cache;
@property (nonatomic, strong)NSArray * datas;
@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString * errorMsg;

@end
