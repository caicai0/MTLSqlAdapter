//
//  CAIDataBase.h
//  MTLSqlAdapter
//
//  Created by liyufeng on 14/12/17.
//  Copyright (c) 2014年 liyufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLFMDBAdapter.h"
#import "CAIFMDBQuery.h"

@interface CAIDataBase : NSObject



#pragma mark - 服务相关 业务不相关
//以下方法受 tablesInfo 影响
- (void)createTables;
- (void)createTablesCompletion:(void(^)(BOOL success))completion;
- (void)findAllInTable:(NSString *)tableName completion:(void(^)(NSError * error, NSArray * result))completion;
- (void)findInTable:(NSString *)tableName Request:(NSArray *)querys completion:(void(^)(NSError * error, NSArray * result))completion;
- (void)findInTable:(NSString *)tableName Request:(NSArray *)querys orderBy:(NSString *)order completion:(void (^)(NSError *, NSArray *))completion;

#pragma mark - Tool
//单例方法
+ (instancetype)shareDataBase;

//以下是纯方法不受全局变量的影响

- (void)insertModel:(MTLModel<MTLFMDBSerializing> *)model toTable:(NSString *)tableName;
- (void)insertModel:(MTLModel<MTLFMDBSerializing> *)model toTable:(NSString *)tableName completion:(void(^)(BOOL success))completion;

- (void)replaceModel:(MTLModel<MTLFMDBSerializing> *)model inTable:(NSString *)tableName;
- (void)replaceModel:(MTLModel<MTLFMDBSerializing> *)model inTable:(NSString *)tableName completion:(void(^)(BOOL success))completion;

- (void)updateModel:(MTLModel<MTLFMDBSerializing> *)model inTable:(NSString *)tableName;
- (void)updateModel:(MTLModel<MTLFMDBSerializing> *)model inTable:(NSString *)tableName completion:(void(^)(BOOL success))completion;

- (void)deleteModel:(MTLModel<MTLFMDBSerializing> *)model fromTable:(NSString *)tableName;
- (void)deleteModel:(MTLModel<MTLFMDBSerializing> *)model fromTable:(NSString *)tableName completion:(void(^)(BOOL success))completion;

- (void)findInTable:(NSString *)tableName Request:(NSArray *)querys resultClass:(Class)aClass completion:(void(^)(NSError * error, NSArray * result))completion;
- (void)findIntable:(NSString *)tableName Request:(NSArray *)querys orderBy:(NSString *)order resultClass:(Class)aClass completion:(void(^)(NSError * error, NSArray * result))completion;
- (void)findIntable:(NSString *)tableName Request:(NSArray *)querys orderByDictoionary:(NSDictionary *)orderDic resultClass:(Class)aClass completion:(void (^)(NSError * error, NSArray * result))completion;

@end
