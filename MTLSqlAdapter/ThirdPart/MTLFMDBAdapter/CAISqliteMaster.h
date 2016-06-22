//
//  CAISqliteMaster.h
//  MTLSqlAdapter
//
//  Created by liyufeng on 16/6/20.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

#import "Mantle.h"
#import "MTLFMDBAdapter.h"

@interface CAISqliteMaster : MTLModel<MTLFMDBSerializing>

@property (nonatomic, strong)NSString * type;//类型  table index
@property (nonatomic, strong)NSString * name;//名称
@property (nonatomic, strong)NSString * tableName;//表名称
@property (nonatomic, assign)long long rootPage;
@property (nonatomic, strong)NSString * sql;//创建表使用的sql

@end
