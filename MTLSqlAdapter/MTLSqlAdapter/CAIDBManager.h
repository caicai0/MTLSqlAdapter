//
//  CAIDBManager.h
//  MTLSqlAdapter
//
//  Created by 李玉峰 on 2018/3/22.
//  Copyright © 2018年 liyufeng. All rights reserved.
//  多数据库 统一管理
//  1. 分配文件路径防止重复
//  2. 设置别名
//  3. 通过别名获取数据库实例

#import <Foundation/Foundation.h>
#import "CAIDb.h"

@interface CAIDBManager : NSObject

+ (instancetype)manager;
//通过数据库路径获取数据库实例 如果还没有就 通过路径创建 返回CAIDb 实例引用  如果创建失败返回nil
- (CAIDb *)dbFroPath:(NSString *)dbFilePath;

//添加别名  别名之间不能重复  如果添加成功返回 YES 否则返回NO 如果db 或 path 为nil 返回NO
- (BOOL)addAlias:(NSString *)alias toDb:(CAIDb*)db;
- (BOOL)addAlias:(NSString *)alias toPath:(NSString *)path;

//通过别名获取数据库实例  如果没有找到别名对应的数据库  返回nil
- (CAIDb *)dbForAlias:(NSString *)alias;

@end
