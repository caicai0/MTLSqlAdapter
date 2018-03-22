//
//  CAIDBManager.m
//  MTLSqlAdapter
//
//  Created by 李玉峰 on 2018/3/22.
//  Copyright © 2018年 liyufeng. All rights reserved.
//

#import "CAIDBManager.h"

@interface CAIDBManager()

@property (nonatomic, strong)NSMutableDictionary * pathDbDictionary;
@property (nonatomic, strong)NSMutableDictionary * aliasPathDictionary;

@end

@implementation CAIDBManager

+ (instancetype)manager{
    static CAIDBManager * one;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        one = [[CAIDBManager alloc]init];
    });
    return one;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.pathDbDictionary = [NSMutableDictionary dictionary];
        self.aliasPathDictionary = [NSMutableDictionary dictionary];
    }
    return self;
}

- (CAIDb *)dbFroPath:(NSString *)dbFilePath{
    if (dbFilePath && [dbFilePath isKindOfClass:[NSString class]] && dbFilePath.length) {
        CAIDb * db = [self.pathDbDictionary objectForKey:dbFilePath];
        if (db) {
            return db;
        }else{
            db = [[CAIDb alloc]initWithPath:dbFilePath];
            if (db) {
                [self.pathDbDictionary setObject:db forKey:dbFilePath];
                return db;
            }
        }
    }
    return nil;
}

- (BOOL)addAlias:(NSString *)alias toDb:(CAIDb*)db{
    if(alias && db && [alias isKindOfClass:[NSString class]] && [db isKindOfClass:[CAIDb class]] && alias.length){
        if (![self.aliasPathDictionary.allKeys containsObject:alias]) {
            __block NSString * path = nil;
            [self.pathDbDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
                if (obj == db) {
                    path = key;
                    *stop = YES;
                }
            }];
            if (path) {
                [self.aliasPathDictionary setObject:path forKey:alias];
                return YES;
            }
        }
    }
    return NO;
}
- (BOOL)addAlias:(NSString *)alias toPath:(NSString *)path{
    if (alias && [alias isKindOfClass:[NSString class]] && alias.length &&
        path && [path isKindOfClass:[NSString class]] && path.length) {
        if (![self.aliasPathDictionary.allKeys containsObject:alias]) {
            if ([self.pathDbDictionary.allKeys containsObject:path]) {
                [self.aliasPathDictionary setObject:path forKey:alias];
                return YES;
            }
        }
    }
    return NO;
}

- (CAIDb *)dbForAlias:(NSString *)alias{
    if (alias && [alias isKindOfClass:[NSString class]] && alias.length) {
        if ([self.aliasPathDictionary.allKeys containsObject:alias]) {
            NSString * path = [self.aliasPathDictionary objectForKey:alias];
            return [self dbFroPath:path];
        }
    }
    return nil;
}

@end
