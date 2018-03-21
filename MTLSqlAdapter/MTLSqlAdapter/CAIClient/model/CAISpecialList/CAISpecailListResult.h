//
//  CAISpecailListResult.h
//  CNHC
//
//  Created by liyufeng on 14/12/10.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAISpecail.h"

@interface CAISpecailListResult : MTLModel<MTLJSONSerializing>

@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)CAISpecail * special;

@end
