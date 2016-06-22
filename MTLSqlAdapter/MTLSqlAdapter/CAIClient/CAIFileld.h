//
//  CAIFileld.h
//  MTLSqlAdapter
//
//  Created by liyufeng on 16/6/21.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CAIFileld : NSObject

@property (nonatomic, strong)NSString * name;//字段名称
@property (nonatomic, strong)NSString * type;//数据类型
@property (nonatomic, assign)BOOL primaryKey;//主键
@property (nonatomic, assign)BOOL autoIncrement;//自增

@end
