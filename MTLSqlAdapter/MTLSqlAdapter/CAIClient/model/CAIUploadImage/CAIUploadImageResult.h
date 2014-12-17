//
//  CAIUploadImageResult.h
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIUploadImageResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString * imageUrlString;

@end
