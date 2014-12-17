//
//  CAIDataBase.h
//  MTLSqlAdapter
//
//  Created by liyufeng on 14/12/17.
//  Copyright (c) 2014年 liyufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLFMDBAdapter.h"

@interface CAIDataBase : NSObject

//单例方法
+ (instancetype)shareDataBase;

- (void)createTables;

- (void)insertModel:(MTLModel<MTLFMDBSerializing> *)model toTable:(NSString *)tableName;

@end
