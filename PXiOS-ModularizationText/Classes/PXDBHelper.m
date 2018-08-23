//
//  PXDBHelper.m
//  PXCore
//
//  Created by qiapeng-Ios on 2017/2/5.
//  Copyright © 2017年 qiapeng-Ios. All rights reserved.
//

#import "PXDBHelper.h"
#import "LKDBHelper.h"
#import "PXKeyValueModel.h"

#define Key @"key"
@implementation PXDBHelper

static dispatch_queue_t db_queue(){
    
    static dispatch_queue_t db_queue = NULL;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        db_queue = dispatch_queue_create("PX.share.keyValue", NULL);
    });
    return db_queue;
}

/**
 *  保存数据
 *
 *  @param value 数据
 *  @param key   key
 */


+ (void)setValue:(id)value forKey:(NSString *)key{
    if (key && key.length > 0) {
        PXKeyValueModel *model = [[PXKeyValueModel alloc] init];
        model.key = key;
        if (value) {
            model.value = @{Key:value};
            dispatch_async(db_queue(), ^{
                [model updateToDB];
            });
        }else{
            [model deleteToDB];
        }
        
    }
}

+ (id)valueForKey:(NSString *)key{
    if (key && key.length > 0) {
        PXKeyValueModel *model = [PXKeyValueModel searchSingleWithWhere:@{Key:key} orderBy:nil];
        if (model && model.value) {
            return [model.value objectForKey:Key];
        }
    }
    return nil;
}

@end
