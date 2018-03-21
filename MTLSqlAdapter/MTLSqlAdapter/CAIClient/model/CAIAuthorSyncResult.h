//
//  CAIAuthorSyncResult.h
//  CNHC
//
//  Created by liyufeng on 14/12/2.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAIAuthor.h"

@interface CAIAuthorSyncResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString * errorMessage;
@property (nonatomic, strong)NSArray *datas;

@end
