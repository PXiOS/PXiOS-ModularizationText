//
//  PXUserInfo.h
//  PXNetWork
//
//  Created by qiapeng-Ios on 2017/2/5.
//  Copyright © 2017年 qiapeng-Ios. All rights reserved.
//


#import "BaseModel.h"

@interface PXUserInfo : BaseModel
/**
 获取单例
 */
+ (instancetype)shareInstall;

/**
 *  会员id
 */
@property (nonatomic, strong, readonly) NSString *userId;


/**
 *  令牌
 */
@property (nonatomic, strong) NSString *token;

/**
 *  用户手机
 */
@property (nonatomic, strong, readonly) NSString *phone;

/**
 清楚本地数据
 */
- (void)clearData;

@end

