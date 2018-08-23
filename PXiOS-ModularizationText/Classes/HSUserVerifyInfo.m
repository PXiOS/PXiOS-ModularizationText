//
//  HSUserVerifyInfo.m
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/21.
//  Copyright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import "HSUserVerifyInfo.h"
#import "PXDBHelper.h"

#define KVerify_loginName @"KVerify_loginName"
#define KVerify_isMobile @"KVerify_isMobile"
#define KVerify_realName @"KVerify_realName"
#define KVerify_isOpenAccount @"KVerify_isOpenAccount"
#define KVerify_memberLevel @"KVerify_memberLevel"
#define KVerify_creditLimit @"KVerify_creditLimit"
#define KVerify_dateBirth @"KVerify_dateBirth"
#define KVerify_gender @"KVerify_gender"
#define KVerify_idCard @"KVerify_idCard"
#define KVerify_createTime @"KVerify_createTime"
#define KVerify_updateTime @"KVerify_updateTime"
#define KVerify_idCardFrontUrl @"KVerify_idCardFrontUrl"
#define KVerify_idCardBackUrl @"KVerify_idCardBackUrl"
#define KVerify_faceImgUrl @"KVerify_faceImgUrl"
#define KVerify_isIdCardCheckThrough @"KVerify_isIdCardCheckThrough"
#define KVerify_faceRecogniteResult @"KVerify_faceRecogniteResult"
#define KVerify_isContactInfo @"KVerify_isContactInfo"
#define KVerify_isPersonalInfo @"KVerify_isPersonalInfo"
#define KVerify_isBasicInfo @"KVerify_isBasicInfo"
#define KVerify_isBankCardBind @"KVerify_isBankCardBind"
#define KVerify_isUserAttach @"KVerify_isUserAttach"
#define KVerify_isAllCheckThrough @"KVerify_isAllCheckThrough"
#define KVerify_isWorkProof @"KVerify_isWorkProof"
#define KVerify_isAccountAuth @"KVerify_isAccountAuth"
#define KVerify_isNewQianpen @"KVerify_isNewQianpen"
#define KVerify_isTongDunAuth @"KVerify_isTongDunAuth"
#define KVerify_type @"KVerify_type"
#define KVerify_isFirstAuth @"KVerify_isFirstAuth"
#define KVerify_loanLimit @"KVerify_loanLimit"
#define KVerify_isSesameAuth @"KVerify_isSesameAuth"
#define KVerify_isWorkAuth @"KVerify_isWorkAuth"
#define KVerify_bankAlias @"KVerify_bankAlias"
#define KVerify_phone @"KVerify_phone"
#define KVerify_cashProductStatus @"KVerify_cashProductStatus"


@interface HSUserVerifyInfo(){
    NSString *_loginName;
    NSString *_isMobile;
    NSString *_realName;
    NSString *_isOpenAccount;
    NSString *_memberLevel;
    NSString *_creditLimit;
    NSString *_dateBirth;
    NSString *_gender;
    NSString *_idCard;
    NSString *_createTime;
    NSString *_updateTime;
    NSString *_idCardFrontUrl;
    NSString *_idCardBackUrl;
    NSString *_faceImgUrl;
    NSString *_isIdCardCheckThrough;
    NSString *_faceRecogniteResult;
    NSString *_isContactInfo;
    NSString *_isPersonalInfo;
    NSString *_isBasicInfo;
    NSString *_isBankCardBind;
    NSString *_isUserAttach;
    NSString *_isAllCheckThrough;
    NSString *_isWorkProof;
    NSString *_isAccountAuth;
    NSString *_isNewQianpen;
    NSString *_isTongDunAuth;
    NSString *_type;
    NSString *_isFirstAuth;
    NSString *_loanLimit;
    NSString *_isSesameAuth;
    NSString *_isWorkAuth;
    NSString *_bankAlias;
    NSString *_phone;
    NSString *_cashProductStatus;

}

@end

@implementation HSUserVerifyInfo


/**
 获取单例
 */
+ (instancetype)shareInstall{
    static HSUserVerifyInfo* instance = nil;
    static dispatch_once_t once;
    
    dispatch_once(&once, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [HSUserVerifyInfo shareInstall];
}

- (id)copyWithZone:(struct _NSZone *)zone {
    return [HSUserVerifyInfo shareInstall];
}

- (void)setLoginName:(NSString *)loginName{
    _loginName = loginName;
    [PXDBHelper setValue:loginName forKey:KVerify_loginName];
}

- (NSString *)loginName{
    if (_loginName == nil) {
        _loginName = [PXDBHelper valueForKey:KVerify_loginName];
    }
    
    return _loginName;
}

- (void)setIsMobile:(NSString *)isMobile{
    _isMobile = isMobile;
    [PXDBHelper setValue:isMobile forKey:KVerify_isMobile];
}

- (NSString *)isMobile{
    if (_isMobile == nil) {
        _isMobile = [PXDBHelper valueForKey:KVerify_isMobile];
    }
    
    return _isMobile;
}


- (void)setRealName:(NSString *)realName{
    _realName = realName;
    [PXDBHelper setValue:realName forKey:KVerify_realName];
}

- (NSString *)realName{
    if (_realName == nil) {
        _realName = [PXDBHelper valueForKey:KVerify_realName];
    }
    
    return _realName;
}


- (void)setIsOpenAccount:(NSString *)isOpenAccount{
    _isOpenAccount = isOpenAccount;
    [PXDBHelper setValue:isOpenAccount forKey:KVerify_isOpenAccount];
}

- (NSString *)isOpenAccount{
    if (_isOpenAccount == nil) {
        _isOpenAccount = [PXDBHelper valueForKey:KVerify_isOpenAccount];
    }
    
    return _isOpenAccount;
}


- (void)setMemberLevel:(NSString *)memberLevel{
    _memberLevel = memberLevel;
    [PXDBHelper setValue:memberLevel forKey:KVerify_memberLevel];
}

- (NSString *)memberLevel{
    if (_memberLevel == nil) {
        _memberLevel = [PXDBHelper valueForKey:KVerify_memberLevel];
    }
    
    return _memberLevel;
}


- (void)setCreditLimit:(NSString *)creditLimit{
    _creditLimit = creditLimit;
    [PXDBHelper setValue:creditLimit forKey:KVerify_creditLimit];
}

- (NSString *)creditLimit{
    if (_creditLimit == nil) {
        _creditLimit = [PXDBHelper valueForKey:KVerify_creditLimit];
    }
    
    return _creditLimit;
}


- (void)setDateBirth:(NSString *)dateBirth{
    _dateBirth = dateBirth;
    [PXDBHelper setValue:dateBirth forKey:KVerify_dateBirth];
}

- (NSString *)dateBirth{
    if (_dateBirth == nil) {
        _dateBirth = [PXDBHelper valueForKey:KVerify_dateBirth];
    }
    
    return _dateBirth;
}


- (void)setGender:(NSString *)gender{
    _gender = gender;
    [PXDBHelper setValue:gender forKey:KVerify_gender];
}

- (NSString *)gender{
    if (_gender == nil) {
        _gender = [PXDBHelper valueForKey:KVerify_gender];
    }
    
    return _gender;
}


- (void)setIdCard:(NSString *)idCard{
    _idCard = idCard;
    [PXDBHelper setValue:idCard forKey:KVerify_idCard];
}

- (NSString *)idCard{
    if (_idCard == nil) {
        _idCard = [PXDBHelper valueForKey:KVerify_idCard];
    }
    
    return _idCard;
}


- (void)setCreateTime:(NSString *)createTime{
    _createTime = createTime;
    [PXDBHelper setValue:createTime forKey:KVerify_createTime];
}

- (NSString *)createTime{
    if (_createTime == nil) {
        _createTime = [PXDBHelper valueForKey:KVerify_createTime];
    }
    
    return _createTime;
}


- (void)setUpdateTime:(NSString *)updateTime{
    _updateTime = updateTime;
    [PXDBHelper setValue:updateTime forKey:KVerify_updateTime];
}

- (NSString *)updateTime{
    if (_updateTime == nil) {
        _updateTime = [PXDBHelper valueForKey:KVerify_updateTime];
    }
    
    return _updateTime;
}


- (void)setIdCardFrontUrl:(NSString *)idCardFrontUrl{
    _idCardFrontUrl = idCardFrontUrl;
    [PXDBHelper setValue:idCardFrontUrl forKey:KVerify_idCardFrontUrl];
}

- (NSString *)idCardFrontUrl{
    if (_idCardFrontUrl == nil) {
        _idCardFrontUrl = [PXDBHelper valueForKey:KVerify_idCardFrontUrl];
    }
    
    return _idCardFrontUrl;
}


- (void)setIdCardBackUrl:(NSString *)idCardBackUrl{
    _idCardBackUrl = idCardBackUrl;
    [PXDBHelper setValue:idCardBackUrl forKey:KVerify_idCardBackUrl];
}

- (NSString *)idCardBackUrl{
    if (_idCardBackUrl == nil) {
        _idCardBackUrl = [PXDBHelper valueForKey:KVerify_idCardBackUrl];
    }
    
    return _idCardBackUrl;
}


- (void)setFaceImgUrl:(NSString *)faceImgUrl{
    _faceImgUrl = faceImgUrl;
    [PXDBHelper setValue:faceImgUrl forKey:KVerify_faceImgUrl];
}

- (NSString *)faceImgUrl{
    if (_faceImgUrl == nil) {
        _faceImgUrl = [PXDBHelper valueForKey:KVerify_faceImgUrl];
    }
    
    return _faceImgUrl;
}


- (void)setIsIdCardCheckThrough:(NSString *)isIdCardCheckThrough{
    _isIdCardCheckThrough = isIdCardCheckThrough;
    [PXDBHelper setValue:isIdCardCheckThrough forKey:KVerify_isIdCardCheckThrough];
}

- (NSString *)isIdCardCheckThrough{
    if (_isIdCardCheckThrough == nil) {
        _isIdCardCheckThrough = [PXDBHelper valueForKey:KVerify_isIdCardCheckThrough];
    }
    
    return _isIdCardCheckThrough;
}


- (void)setFaceRecogniteResult:(NSString *)faceRecogniteResult{
    _faceRecogniteResult = faceRecogniteResult;
    [PXDBHelper setValue:faceRecogniteResult forKey:KVerify_faceRecogniteResult];
}

- (NSString *)faceRecogniteResult{
    if (_faceRecogniteResult == nil) {
        _faceRecogniteResult = [PXDBHelper valueForKey:KVerify_faceRecogniteResult];
    }
    
    return _faceRecogniteResult;
}


- (void)setIsContactInfo:(NSString *)isContactInfo{
    _isContactInfo = isContactInfo;
    [PXDBHelper setValue:isContactInfo forKey:KVerify_isContactInfo];
}

- (NSString *)isContactInfo{
    if (_isContactInfo == nil) {
        _isContactInfo = [PXDBHelper valueForKey:KVerify_isContactInfo];
    }
    
    return _isContactInfo;
}

- (void)setIsPersonalInfo:(NSString *)isPersonalInfo{
    _isPersonalInfo = isPersonalInfo;
    [PXDBHelper setValue:isPersonalInfo forKey:KVerify_isPersonalInfo];
}

- (NSString *)isPersonalInfo{
    if (_isPersonalInfo == nil) {
        _isPersonalInfo = [PXDBHelper valueForKey:KVerify_isPersonalInfo];
    }
    
    return _isPersonalInfo;
}

- (void)setIsBasicInfo:(NSString *)isBasicInfo{
    _isBasicInfo = isBasicInfo;
    [PXDBHelper setValue:isBasicInfo forKey:KVerify_isBasicInfo];
}

- (NSString *)isBasicInfo{
    if (_isBasicInfo == nil) {
        _isBasicInfo = [PXDBHelper valueForKey:KVerify_isBasicInfo];
    }
    
    return _isBasicInfo;
}

- (void)setIsBankCardBind:(NSString *)isBankCardBind{
    _isBankCardBind = isBankCardBind;
    [PXDBHelper setValue:isBankCardBind forKey:KVerify_isBankCardBind];
}

- (NSString *)isBankCardBind{
    if (_isBankCardBind == nil) {
        _isBankCardBind = [PXDBHelper valueForKey:KVerify_isBankCardBind];
    }
    
    return _isBankCardBind;
}

- (void)setIsUserAttach:(NSString *)isUserAttach{
    _isUserAttach= isUserAttach;
    [PXDBHelper setValue:isUserAttach forKey:KVerify_isUserAttach];
}

- (NSString *)isUserAttach{
    if (_isUserAttach == nil) {
        _isUserAttach = [PXDBHelper valueForKey:KVerify_isUserAttach];
    }
    
    return _isUserAttach;
}

- (void)setIsAllCheckThrough:(NSString *)isAllCheckThrough{
    _isAllCheckThrough = isAllCheckThrough;
    [PXDBHelper setValue:isAllCheckThrough forKey:KVerify_isAllCheckThrough];
}

- (NSString *)isAllCheckThrough{
    if (_isAllCheckThrough == nil) {
        _isAllCheckThrough = [PXDBHelper valueForKey:KVerify_isAllCheckThrough];
    }
    
    return _isAllCheckThrough;
}

- (void)setIsWorkProof:(NSString *)isWorkProof{
    _isWorkProof = isWorkProof;
    [PXDBHelper setValue:isWorkProof forKey:KVerify_isWorkProof];
}

- (NSString *)isWorkProof{
    if (_isWorkProof == nil) {
        _isWorkProof = [PXDBHelper valueForKey:KVerify_isWorkProof];
    }
    
    return _isWorkProof;
}

- (void)setIsAccountAuth:(NSString *)isAccountAuth{
    _isAccountAuth = isAccountAuth;
    [PXDBHelper setValue:isAccountAuth forKey:KVerify_isAccountAuth];
}

- (NSString *)isAccountAuth{
    if (_isAccountAuth == nil) {
        _isAccountAuth = [PXDBHelper valueForKey:KVerify_isAccountAuth];
    }
    
    return _isAccountAuth;
}

- (void)setIsNewQianpen:(NSString *)isNewQianpen{
    _isNewQianpen = isNewQianpen;
    [PXDBHelper setValue:isNewQianpen forKey:KVerify_isNewQianpen];
}

- (NSString *)isNewQianpen{
    if (_isNewQianpen == nil) {
        _isNewQianpen = [PXDBHelper valueForKey:KVerify_isNewQianpen];
    }
    
    return _isNewQianpen;
}

- (void)setIsTongDunAuth:(NSString *)isTongDunAuth{
    _isTongDunAuth = isTongDunAuth;
    [PXDBHelper setValue:isTongDunAuth forKey:KVerify_isTongDunAuth];
}

- (NSString *)isTongDunAuth{
    if (_isTongDunAuth == nil) {
        _isTongDunAuth = [PXDBHelper valueForKey:KVerify_isTongDunAuth];
    }
    
    return _isTongDunAuth;
}

- (void)setType:(NSString *)type{
    _type = type;
    [PXDBHelper setValue:type forKey:KVerify_type];
}

- (NSString *)type{
    if (_type == nil) {
        _type = [PXDBHelper valueForKey:KVerify_type];
    }
    
    return _type;
}

- (void)setIsFirstAuth:(NSString *)isFirstAuth{
    _isFirstAuth = isFirstAuth;
    [PXDBHelper setValue:isFirstAuth forKey:KVerify_isFirstAuth];
}

- (NSString *)isFirstAuth{
    if (_isFirstAuth == nil) {
        _isFirstAuth = [PXDBHelper valueForKey:KVerify_isFirstAuth];
    }
    
    return _isFirstAuth;
}

- (void)setLoanLimit:(NSString *)loanLimit{
    _loanLimit = loanLimit;
    [PXDBHelper setValue:loanLimit forKey:KVerify_loanLimit];
}

- (NSString *)loanLimit{
    if (_loanLimit == nil) {
        _loanLimit = [PXDBHelper valueForKey:KVerify_loanLimit];
    }
    
    return _loanLimit;
}

- (void)setIsSesameAuth:(NSString *)isSesameAuth{
    _isSesameAuth = isSesameAuth;
    [PXDBHelper setValue:isSesameAuth forKey:KVerify_isSesameAuth];
}

- (NSString *)isSesameAuth{
    if (_isSesameAuth == nil) {
        _isSesameAuth = [PXDBHelper valueForKey:KVerify_isSesameAuth];
    }
    
    return _isSesameAuth;
}

- (void)setIsWorkAuth:(NSString *)isWorkAuth{
    _isWorkAuth = isWorkAuth;
    [PXDBHelper setValue:isWorkAuth forKey:KVerify_isWorkAuth];
}

- (NSString *)isWorkAuth{
    if (_isWorkAuth == nil) {
        _isWorkAuth = [PXDBHelper valueForKey:KVerify_isWorkAuth];
    }
    
    return _isWorkAuth;
}

- (void)setBankAlias:(NSString *)bankAlias{
    _bankAlias = bankAlias;
    [PXDBHelper setValue:bankAlias forKey:KVerify_bankAlias];
}

- (NSString *)bankAlias{
    if (_bankAlias == nil) {
        _bankAlias = [PXDBHelper valueForKey:KVerify_bankAlias];
    }
    
    return _bankAlias;
}


- (void)setPhone:(NSString *)phone{
    _phone = phone;
    [PXDBHelper setValue:phone forKey:KVerify_phone];
}

- (NSString *)phone{
    if (_phone == nil) {
        _phone = [PXDBHelper valueForKey:KVerify_phone];
    }
    
    return _phone;
}



- (void)setCashProductStatus:(NSString *)cashProductStatus{
    _cashProductStatus = cashProductStatus;
    [PXDBHelper setValue:cashProductStatus forKey:KVerify_cashProductStatus];
}

- (NSString *)cashProductStatus{
    if (_cashProductStatus == nil) {
        _cashProductStatus = [PXDBHelper valueForKey:KVerify_cashProductStatus];
    }
    
    return _cashProductStatus;
}



//清空数据
- (void)clearData {
    self.isMobile = nil;
    self.realName = nil;
    self.isOpenAccount = nil;
    self.memberLevel = nil;
    self.creditLimit = nil;
    self.dateBirth = nil;
    self.gender = nil;
    self.idCard = nil;
    self.createTime = nil;
    self.updateTime = nil;
    self.idCardFrontUrl = nil;
    self.idCardBackUrl = nil;
    self.faceImgUrl = nil;
    self.isIdCardCheckThrough = nil;
    self.faceRecogniteResult = nil;
    self.isContactInfo = nil;
    self.isPersonalInfo = nil;
    self.isBasicInfo = nil;
    self.isBankCardBind = nil;
    self.isUserAttach = nil;
    self.isAllCheckThrough = nil;
    self.isWorkProof = nil;
    self.isAccountAuth = nil;
    self.isNewQianpen = nil;
    self.isTongDunAuth = nil;
    self.type = nil;
    self.isFirstAuth = nil;
    self.loanLimit = nil;
    self.isSesameAuth = nil;
    self.isWorkAuth = nil;
    self.bankAlias = nil;
    self.phone = nil;
    self.cashProductStatus = nil;
}


@end
