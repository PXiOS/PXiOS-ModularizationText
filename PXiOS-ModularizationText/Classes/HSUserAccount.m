//
//  HSUserAccount.m
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/21.
//  Copyright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import "HSUserAccount.h"
#import "PXDBHelper.h"

#define KAccount_loginName @"KAccount_loginName"
#define KAccount_imageUrl @"KAccount_imageUrl"
#define KAccount_borrowLines @"KAccount_borrowLines"
#define KAccount_level @"KAccount_level"
#define KAccount_score @"KAccount_score"
#define KAccount_borrowtotal @"KAccount_borrowtotal"
#define KAccount_stayAmount @"KAccount_stayAmount"
#define KAccount_balanceAmount @"KAccount_balanceAmount"
#define KAccount_coinAmount @"KAccount_coinAmount"
#define KAccount_balance @"KAccount_balance"
#define KAccount_repaidAmount @"KAccount_repaidAmount"
#define KAccount_available @"KAccount_available"
#define KAccount_borrowLimit @"KAccount_borrowLimit"
#define KAccount_memberLevel @"KAccount_memberLevel"
#define KAccount_email @"KAccount_email"
#define KAccount_mobileInfo @"KAccount_mobileInfo"
#define KAccount_loanLimit @"KAccount_loanLimit"

@interface HSUserAccount () {
    NSString *_loginName;        //登录名
    NSString *_imageUrl;         //用户头像
    NSString *_borrowLines;      //可借额度
    NSString *_loanLimit;        //授信额度
    NSString *_level;            //信用等级
    NSString *_score;            //信用分
    NSString *_borrowtotal;      //累计借款
    NSString *_stayAmount;       //待还金额
    NSString *_balanceAmount;       //金额余额
    NSString *_coinAmount;       //金币额度
    NSString *_balance;          //账户余额
    NSString *_repaidAmount;     //已还金额
    NSString *_available;        //可用余额 //
    NSString *_borrowLimit;        //可借余额
    NSString *_memberLevel;            //等级
    NSString *_email;
    NSString *_mobileInfo;       // 是否获取手机联系人信息
}

@end




@implementation HSUserAccount


/**
 获取单例
 */
+ (instancetype)shareInstall{
    static HSUserAccount* instance = nil;
    static dispatch_once_t once;
    
    dispatch_once(&once, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [HSUserAccount shareInstall];
}

- (id)copyWithZone:(struct _NSZone *)zone {
    return [HSUserAccount shareInstall];
}



- (void)setLoginName:(NSString *)loginName{
    _loginName = loginName;
    [PXDBHelper setValue:loginName forKey:KAccount_loginName];
}

- (NSString *)loginName {
    if (_loginName == nil) {
        _loginName = [PXDBHelper valueForKey:KAccount_loginName];
    }
    
    return _loginName;
}

- (void)setImageUrl:(NSString *)imageUrl{
    _imageUrl = imageUrl;
    [PXDBHelper setValue:_imageUrl forKey:KAccount_imageUrl];
}

- (NSString *)imageUrl {
    if (_imageUrl == nil) {
        _imageUrl = [PXDBHelper valueForKey:KAccount_imageUrl];
    }
    
    return _imageUrl;
}

- (void)setBorrowLines:(NSString *)borrowLines{
    _borrowLines = borrowLines;
    [PXDBHelper setValue:borrowLines forKey:KAccount_borrowLines];
}

- (NSString *)borrowLines{
    if (_borrowLines == nil) {
        _borrowLines = [PXDBHelper valueForKey:KAccount_borrowLines];
    }
    
    return _borrowLines;
}

- (void)setLoanLimit:(NSString *)loanLimit{
    _loanLimit = loanLimit;
    [PXDBHelper setValue:loanLimit forKey:KAccount_loanLimit];
}

- (NSString *)loanLimit{
    if (_loanLimit == nil) {
        _loanLimit = [PXDBHelper valueForKey:KAccount_loanLimit];
    }
    
    return _loanLimit;
}


- (void)setLevel:(NSString *)level{
    _level = level;
    [PXDBHelper setValue:level forKey:KAccount_level];
}

- (NSString *)level{
    if (_level == nil) {
        _level = [PXDBHelper valueForKey:KAccount_level];
    }
    
    return _level;
}


- (void)setScore:(NSString *)score{
    _score = score;
    [PXDBHelper setValue:score forKey:KAccount_score];
}

- (NSString *)score{
    if (_score == nil) {
        _score = [PXDBHelper valueForKey:KAccount_score];
    }
    
    return _score;
}


- (void)setBorrowtotal:(NSString *)borrowtotal{
    _borrowtotal = borrowtotal;
    [PXDBHelper setValue:borrowtotal forKey:KAccount_borrowtotal];
}

- (NSString *)borrowtotal{
    if (_borrowtotal == nil) {
        _borrowtotal = [PXDBHelper valueForKey:KAccount_borrowtotal];
    }
    
    return _borrowtotal;
}


- (void)setStayAmount:(NSString *)stayAmount{
    _stayAmount = stayAmount;
    [PXDBHelper setValue:stayAmount forKey:KAccount_stayAmount];
}

- (NSString *)stayAmount{
    if (_stayAmount == nil) {
        _stayAmount = [PXDBHelper valueForKey:KAccount_stayAmount];
    }
    
    return _stayAmount;
}


- (void)setBalanceAmount:(NSString *)balanceAmount{
    _balanceAmount = balanceAmount;
    [PXDBHelper setValue:balanceAmount forKey:KAccount_balanceAmount];
}

- (NSString *)balanceAmount{
    if (_balanceAmount == nil) {
        _balanceAmount = [PXDBHelper valueForKey:KAccount_balanceAmount];
    }
    
    return _balanceAmount;
}


- (void)setCoinAmount:(NSString *)coinAmount{
    _coinAmount = coinAmount;
    [PXDBHelper setValue:coinAmount forKey:KAccount_coinAmount];
}

- (NSString *)coinAmount{
    if (_coinAmount == nil) {
        _coinAmount = [PXDBHelper valueForKey:KAccount_coinAmount];
    }
    
    return _coinAmount;
}


- (void)setBalance:(NSString *)balance{
    _balance = balance;
    [PXDBHelper setValue:balance forKey:KAccount_balance];
}

- (NSString *)balance{
    if (_balance == nil) {
        _balance = [PXDBHelper valueForKey:KAccount_balance];
    }
    
    return _balance;
}


- (void)setRepaidAmount:(NSString *)repaidAmount{
    _repaidAmount = repaidAmount;
    [PXDBHelper setValue:repaidAmount forKey:KAccount_repaidAmount];
}

- (NSString *)repaidAmount{
    if (_repaidAmount == nil) {
        _repaidAmount = [PXDBHelper valueForKey:KAccount_repaidAmount];
    }
    
    return _repaidAmount;
}


- (void)setAvailable:(NSString *)available{
    _available = available;
    [PXDBHelper setValue:available forKey:KAccount_available];
}

- (NSString *)available{
    if (_available == nil) {
        _available = [PXDBHelper valueForKey:KAccount_available];
    }
    
    return _available;
}


- (void)setBorrowLimit:(NSString *)borrowLimit{
    _borrowLimit = borrowLimit;
    [PXDBHelper setValue:borrowLimit forKey:KAccount_borrowLimit];
}

- (NSString *)borrowLimit{
    if (_borrowLimit == nil) {
        _borrowLimit = [PXDBHelper valueForKey:KAccount_borrowLimit];
    }
    
    return _borrowLimit;
}


- (void)setMemberLevel:(NSString *)memberLevel{
    _memberLevel = memberLevel;
    [PXDBHelper setValue:memberLevel forKey:KAccount_memberLevel];
}

- (NSString *)memberLevel{
    if (_memberLevel == nil) {
        _memberLevel = [PXDBHelper valueForKey:KAccount_memberLevel];
    }
    
    return _memberLevel;
}


- (void)setEmail:(NSString *)email{
    _email = email;
    [PXDBHelper setValue:email forKey:KAccount_email];
}

- (NSString *)email{
    if (_email == nil) {
        _email = [PXDBHelper valueForKey:KAccount_email];
    }
    
    return _email;
}


- (void)setMobileInfo:(NSString *)mobileInfo{
    _mobileInfo = mobileInfo;
    [PXDBHelper setValue:mobileInfo forKey:KAccount_mobileInfo];
}

- (NSString *)mobileInfo{
    if (_mobileInfo == nil) {
        _mobileInfo = [PXDBHelper valueForKey:KAccount_mobileInfo];
    }
    
    return _mobileInfo;
}


//清空数据
- (void)clearData {
    self.loginName = nil;
    self.imageUrl = nil;
    self.borrowLines = nil;
    self.loanLimit = nil;
    self.level = nil;
    self.score = nil;
    self.borrowtotal = nil;
    self.stayAmount = nil;
    self.balanceAmount = nil;
    self.coinAmount = nil;
    self.balance = nil;
    self.repaidAmount = nil;
    self.available = nil;
    self.borrowLimit = nil;
    self.memberLevel = nil;
    self.email = nil;
    self.mobileInfo = nil;
    self.borrowLines = nil;
    self.loginName = nil;
    self.imageUrl = nil;
    self.borrowLines = nil;
    self.loginName = nil;
    self.imageUrl = nil;
    self.borrowLines = nil;
}


@end
