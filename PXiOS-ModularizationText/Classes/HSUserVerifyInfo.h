//
//  HSUserVerifyInfo.h
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/21.
//  strongright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import "BaseModel.h"

@interface HSUserVerifyInfo : BaseModel

/**
 获取单例
 */
+ (instancetype)shareInstall;

/**
 用户ID
 */
@property (nonatomic,strong) NSString * userId;

/**
 用户ID
 */
@property (nonatomic,strong) NSString * loginName;

/**
 是否手机认证 isMobile  0：是，1：否
 */
@property (nonatomic,strong) NSString * isMobile;
/**
 真实姓名
 */
@property (nonatomic,strong) NSString * realName;

/**
 是否在新网开过授权过  0：是，1：否
 */
// 1
@property (strong, nonatomic) NSString * isOpenAccount;

/**
 会员等级
 */
@property (strong, nonatomic) NSString * memberLevel;   //等级

/**
 授信额度
 */
@property (nonatomic,strong) NSString * creditLimit;
/**
 出生日期
 */
@property (nonatomic,strong) NSString * dateBirth;
/**
 性别
 */
@property (nonatomic,strong) NSString * gender;
/**
 身份证
 */
@property (nonatomic,strong) NSString * idCard;
/**
 创建时间
 */
@property (nonatomic,strong) NSString * createTime;
/**
 更新时间
 */
@property (nonatomic,strong) NSString * updateTime;
/**
 身份证正面照图片URL
 */
@property (nonatomic,strong) NSString * idCardFrontUrl;
/**
 身份证反面照图片URL
 */
@property (nonatomic,strong) NSString * idCardBackUrl;
/**
 人脸照片
 */
@property (nonatomic,strong) NSString * faceImgUrl;
/**
 实名认证是否通过，0：是、1：否
 */
@property (nonatomic,strong) NSString * isIdCardCheckThrough;
/**
 是否人脸识别（0未识别、1：识别成功、2：识别失败）
 */
@property (nonatomic,strong) NSString * faceRecogniteResult;
/**
 是否添加联系人，0：是、1：否
 */
@property (nonatomic,strong) NSString * isContactInfo;
/**
 是否添加联系人，0：是、1：否
 */
@property (nonatomic,strong) NSString * isPersonalInfo;
/**
 是否添加基本信息，0：是、1：否
 */
@property (nonatomic,strong) NSString * isBasicInfo;
/**
 是否添加银行卡绑定，0：是、1：否
 */
@property (nonatomic,strong) NSString * isBankCardBind;
/**
 是否提交附件
 */
@property (nonatomic,strong) NSString * isUserAttach;
/**
 所有认证是否通过，0：是、1：否
 */
@property (nonatomic,strong) NSString * isAllCheckThrough;

/**
 工作认证 ，0：是、1：否
 */
@property (nonatomic,strong) NSString * isWorkProof;
/**
 是否新网授权充值提现，0：是、1：否
 */
@property (nonatomic,strong) NSString * isAccountAuth;
/**
 是否新注册在钱盆网用户 ，0：是、1：否
 */
@property (nonatomic,strong) NSString * isNewQianpen;
/**
 是否同盾认证成功 0：是、1：否
 */
@property (nonatomic, strong) NSString *isTongDunAuth; //


/**
 额度类别(0:尚无额度【金宝贷】、1：创业贷、2：业主贷)
 */
@property (nonatomic,strong) NSString * type;
/**
 是否认证过一次【如认证过一次、则不显示尚无额度】0：是、1：否、2：正在获取额度,3:已借款
 */
@property (nonatomic,strong) NSString * isFirstAuth;
/**
 可用额度
 */
@property (nonatomic,strong) NSString * loanLimit;
/**
 芝麻信用授权
 */
@property (nonatomic,strong) NSString * isSesameAuth;

/**
 工作证明
 */
@property (nonatomic,strong) NSString * isWorkAuth;

/**
 银行卡信息显示
 */
@property (nonatomic,strong) NSString * bankAlias; //

/**
 银行卡号
 */
@property (nonatomic,strong) NSString * phone; // phone

//
/**
 现迪蒙贷是否在维护中 0 可以借 其他都不可以
 */
@property (nonatomic,strong) NSString * cashProductStatus;

- (void)clearData;
@end
