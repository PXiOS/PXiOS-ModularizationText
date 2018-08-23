//
//  PXKeyValueModel.m
//  PXCore
//
//  Created by qiapeng-Ios on 2017/2/5.
//  Copyright © 2017年 qiapeng-Ios. All rights reserved.
//

#import "PXKeyValueModel.h"
#import "LKDBHelper.h"

@implementation PXKeyValueModel

static LKDBHelper *PXKDB = nil;

+ (LKDBHelper *)getUsingLKDBHelper{ // 重写父类方法
    if (!PXKDB) {
        NSString *sqlitePath = [PXKeyValueModel getSqlitePath];
        NSString *dbpath     = [sqlitePath stringByAppendingPathComponent:@"AppKeyValue.db"];
        PXKDB = [[LKDBHelper alloc] initWithDBPath:dbpath];
    }
    
    return PXKDB;
}

+ (NSString *)getSqlitePath{
    NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *sqlitePath   = [documentPath stringByAppendingPathComponent:@"sqlite"];
    
    return sqlitePath;
}

+ (NSString *)getPrimaryKey{
    return @"key";
}

@end
