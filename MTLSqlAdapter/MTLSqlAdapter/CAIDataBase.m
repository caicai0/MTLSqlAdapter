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

@end

@implementation CAIDataBase

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
    }
    return self;
}

- (void)createTables{
    [self.queue inDatabase:^(FMDatabase *db) {
        if ([db open]) {
            NSString * sql = [MTLFMDBAdapter createTable:@"news" class:[CAINews class]];
            handleDbexecuteUpdateSql(db, sql);
        }
    }];
}

- (void)insertModel:(MTLModel<MTLFMDBSerializing> *)model toTable:(NSString *)tableName{
    [self.queue inDatabase:^(FMDatabase *db) {
        if ([db open]) {
            NSString * sql = [MTLFMDBAdapter insertStatementForModel:model];
            NSArray * parameters = [MTLFMDBAdapter columnValues:model];
            handleDbexecuteUpdateSqlwithArgumentsInArray(db, sql, parameters);
        }
    }];
}

#pragma mark - private C founction

void handleDbexecuteUpdateSql(FMDatabase *db ,NSString *sql){
    BOOL success = [db executeUpdate:sql];
    handleOperationResultAndSql(success, sql);
}

void handleDbexecuteUpdateSqlwithArgumentsInArray(FMDatabase *db ,NSString *sql ,NSArray *arguments){
    BOOL success = [db executeUpdate:sql withArgumentsInArray:arguments];
    handleOperationResultAndSql(success, sql);
}

void handleOperationResultAndSql(BOOL success ,NSString *sql){
    if (success) {
//        NSLog(@"sql:%@\n操作成功",sql);
    }else{
        NSLog(@"sql:%@\n操作失败",sql);
    }
}

@end
