//
//  PXDBHelper.h
//  PXCore
//
//  Created by qiapeng-Ios on 2017/2/5.
//  Copyright © 2017年 qiapeng-Ios. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
     保存数据到本地
 */
@interface PXDBHelper : NSObject
/**
 *  保存数据
 *
 *  @param value 数据
 *  @param key   key
 */
+ (void)setValue:(id)value forKey:(NSString *)key;
+ (id)valueForKey:(NSString *)key;
@end
