//
//  HSUserAccount.h
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/21.
//  Copyright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import "BaseModel.h"


/**
 用户账户信息
 */
@interface HSUserAccount : BaseModel


/**
 获取单例
 */
+ (instancetype)shareInstall;

/**
 *  会员id
 */
@property (nonatomic, strong, readonly) NSString *userId;

/**
 *  登录名
 */
@property (nonatomic, strong) NSString *loginName;
/**
//用户头像
 */
@property (nonatomic, strong) NSString *imageUrl;
/**
 //可借额度
 */
@property (nonatomic, strong) NSString *borrowLines;
/**
//授信额度
 */
@property (nonatomic, strong) NSString *loanLimit;
/**
//信用等级
 */
@property (nonatomic, strong) NSString *level;
/**
 //信用分
 */
@property (nonatomic, strong) NSString *score;
/**
//累计借款
 */
@property (nonatomic, strong) NSString *borrowtotal;
/**
  //待还金额
 */
@property (nonatomic, strong) NSString *stayAmount;
/**
//金额余额
 */
@property (nonatomic, strong) NSString *balanceAmount;
/**
 //金币额度
 */
@property (nonatomic, strong) NSString *coinAmount;
/**
  //账户余额
 */
@property (nonatomic, strong) NSString *balance;
/**
//已还金额
 */
@property (nonatomic, strong) NSString *repaidAmount;
/**
//可用余额 //
 */
@property (nonatomic, strong) NSString *available;
/**
//可借余额
 */
@property (nonatomic, strong) NSString *borrowLimit;
/**
    //等级
 */
@property (strong, nonatomic) NSString *memberLevel;
/**
 //邮箱
 */
@property (strong, nonatomic) NSString *email;
/**
 // 是否获取手机联系人信息
 */
@property (strong, nonatomic) NSString *mobileInfo;

/**
 清楚本地数据
 */
- (void)clearData;


@end
