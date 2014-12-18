//
//  CAIDataBase.m
//  MTLSqlAdapter
//
//  Created by liyufeng on 14/12/17.
//  Copyright (c) 2014年 liyufeng. All rights reserved.
//

#import "CAIDataBase.h"
#import "FMDB.h"
#import "MTLFMDBAdapter.h"
#import "CAINews.h"

@interface CAIDataBase ()

@property (nonatomic, strong)FMDatabaseQueue *queue;
@property (nonatomic, strong)NSMutableDictionary * tablesInfo;

@end

@implementation CAIDataBase

#pragma mark - shartInstance
+(instancetype)shareDataBase{
    static CAIDataBase * shareDataBase = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareDataBase = [[CAIDataBase alloc]init];
    });
    return shareDataBase;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        NSArray * arr = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        NSString * docPath = [arr lastObject];
        NSString * dbPath = [docPath stringByAppendingPathComponent:@"db.sqlite"];
        NSLog(@"dbPath : %@",dbPath);
        self.queue = [FMDatabaseQueue databaseQueueWithPath:dbPath];
        self.tablesInfo = [NSMutableDictionary dictionary];
        [self createTablesInfo];
    }
    return self;
}

#pragma mark - public
- (void)createTables{
    [self createTablesCompletion:nil];
    
}

- (void)createTablesCompletion:(void(^)(BOOL success))completion{
    for (NSString * tableName in self.tablesInfo.allKeys) {
        NSString * className = self.tablesInfo[tableName][@"class"];
        [self createTable:tableName class:NSClassFromString(className) Completion:nil];
    }
}

- (void)createIndexs{
    for (NSString * tableName in self.tablesInfo.allKeys) {
        NSString * className = self.tablesInfo[tableName][@"class"];
        [self.queue inDatabase:^(FMDatabase *db) {
            if ([db open]) {
                NSString * sql = [MTLFMDBAdapter createIndexOnTable:tableName class:NSClassFromString(className)];
                handleDbexecuteUpdateSql(db, sql, nil);
            }
        }];
    }
}

- (void)findAllInTable:(NSString *)tableName completion:(void(^)(NSError * error, NSArray * result))completion{
    [self findInTable:tableName Request:nil completion:completion];
}

- (void)findInTable:(NSString *)tableName Request:(NSArray *)querys completion:(void(^)(NSError * error, NSArray * result))completion{
    [self findInTable:tableName Request:querys orderBy:nil completion:completion];
}

- (void)findInTable:(NSString *)tableName Request:(NSArray *)querys orderBy:(NSString *)order completion:(void (^)(NSError *, NSArray *))completion{
    NSString * className = self.tablesInfo[tableName][@"class"];
    [self findIntable:tableName Request:querys orderBy:order resultClass:NSClassFromString(className) completion:completion];
}

#pragma mark - TOOL

- (void)createTable:(NSString *)tableName class:(Class)aClass Completion:(void(^)(BOOL success))completion{
    [self.queue inDatabase:^(FMDatabase *db) {
        if ([db open]) {
            NSString * sql = [MTLFMDBAdapter createTable:tableName class:aClass];
            handleDbexecuteUpdateSql(db, sql, completion);
            dispatch_async(dispatch_get_main_queue(), ^{
                [self createIndexs];
            });
        }
    }];
}

- (void)insertModel:(MTLModel<MTLFMDBSerializing> *)model toTable:(NSString *)tableName{
    [self insertModel:model toTable:tableName completion:nil];
}

- (void)insertModel:(MTLModel<MTLFMDBSerializing> *)model toTable:(NSString *)tableName completion:(void(^)(BOOL success))completion{
    [self.queue inDatabase:^(FMDatabase *db) {
        if ([db open]) {
            NSString * sql = [MTLFMDBAdapter insertStatementForModel:model];
            NSArray * parameters = [MTLFMDBAdapter columnValues:model];
            handleDbexecuteUpdateSqlwithArgumentsInArray(db, sql, parameters, completion);
        }
    }];
}

- (void)replaceModel:(MTLModel<MTLFMDBSerializing> *)model inTable:(NSString *)tableName{
    [self replaceModel:model inTable:tableName completion:nil];
}
- (void)replaceModel:(MTLModel<MTLFMDBSerializing> *)model inTable:(NSString *)tableName completion:(void(^)(BOOL success))completion{
    NSParameterAssert(model);
    if (!tableName) {
        tableName = NSStringFromClass(model.class);
    }
    [self.queue inDatabase:^(FMDatabase *db) {
        if ([db open]) {
            NSString * sql = [MTLFMDBAdapter replaceStatementForModel:model inTable:tableName];
            NSArray * parameters = [MTLFMDBAdapter columnValues:model];
            handleDbexecuteUpdateSqlwithArgumentsInArray(db, sql, parameters, completion);
        }
    }];
}

- (void)updateModel:(MTLModel<MTLFMDBSerializing> *)model inTable:(NSString *)tableName{
    [self updateModel:model inTable:tableName completion:nil];
}
- (void)updateModel:(MTLModel<MTLFMDBSerializing> *)model inTable:(NSString *)tableName completion:(void(^)(BOOL success))completion{
    [self.queue inDatabase:^(FMDatabase *db) {
        if ([db open]) {
            NSString * sql = [MTLFMDBAdapter updateStatementForModel:model inTable:tableName];
            NSArray * parameters = [MTLFMDBAdapter columnValues:model];
            handleDbexecuteUpdateSqlwithArgumentsInArray(db, sql, parameters, completion);
        }
    }];
}

- (void)deleteModel:(MTLModel<MTLFMDBSerializing> *)model fromTable:(NSString *)tableName{
    [self deleteModel:model fromTable:tableName completion:nil];
}
- (void)deleteModel:(MTLModel<MTLFMDBSerializing> *)model fromTable:(NSString *)tableName completion:(void(^)(BOOL success))completion{
    [self.queue inDatabase:^(FMDatabase *db) {
        if ([db open]) {
            NSString * sql = [MTLFMDBAdapter deleteStatementForModel:model fromTable:tableName];
            NSArray * parameters = [MTLFMDBAdapter primaryKeysValues:model];
            handleDbexecuteUpdateSqlwithArgumentsInArray(db, sql, parameters, completion);
        }
    }];
}

- (void)findInTable:(NSString *)tableName Request:(NSArray *)querys resultClass:(Class)aClass completion:(void(^)(NSError * error, NSArray * result))completion{
    [self findIntable:tableName Request:querys orderBy:nil resultClass:aClass completion:completion];
}

- (void)findIntable:(NSString *)tableName Request:(NSArray *)querys orderBy:(NSString *)order resultClass:(Class)aClass completion:(void(^)(NSError * error, NSArray * result))completion{
    [self.queue inDatabase:^(FMDatabase *db) {
        if ([db open]) {
            NSString * sql = [MTLFMDBAdapter findStatementInQuerys:querys orderBy:order inTable:tableName];
            NSArray * parameters  = [MTLFMDBAdapter queryKeyValueFromQuerys:querys];
            FMResultSet * resultSet = [db executeQuery:sql withArgumentsInArray:parameters];
            NSMutableArray * result = [NSMutableArray array];
            NSError * error = nil;
            while ([resultSet next]) {
                id item = [MTLFMDBAdapter modelOfClass:aClass fromFMResultSet:resultSet error:&error];
                if (error) {
                    NSLog(@"操作失败 %@",error);
                }else{
                    [result addObject:item];
                }
            }
            if (completion) {
                completion(error,result);
            }
        }
    }];
}

- (void)findIntable:(NSString *)tableName Request:(NSArray *)querys orderByDictoionary:(NSDictionary *)orderDic resultClass:(Class)aClass completion:(void (^)(NSError * error, NSArray * result))completion{
    
}

#pragma mark - private C founctions

void handleDbexecuteUpdateSql(FMDatabase *db ,NSString *sql ,void(^completion)(BOOL success)){
    BOOL success = [db executeUpdate:sql];
    handleOperationResultAndSql(success, sql ,completion);
}

void handleDbexecuteUpdateSqlwithArgumentsInArray(FMDatabase *db ,NSString *sql ,NSArray *arguments ,void(^completion)(BOOL success)){
    BOOL success = [db executeUpdate:sql withArgumentsInArray:arguments];
    handleOperationResultAndSql(success, sql, completion);
}

void handleOperationResultAndSql(BOOL success ,NSString *sql ,void(^completion)(BOOL success)){
    if (success) {
//        NSLog(@"sql:%@\n操作成功",sql);
    }else{
        NSLog(@"sql:%@\n操作失败",sql);
    }
    
    if (completion) {
        completion(success);
    }
}

#pragma mark - private founctions

- (void)createTablesInfo{
    NSArray * arr = @[[CAINews class]];
    for (Class aClass in arr) {
        [self.tablesInfo setObject:@{@"class":NSStringFromClass(aClass)} forKey:NSStringFromClass(aClass)];
    }
}

@end
