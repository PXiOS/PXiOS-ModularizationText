//
//  PXUserInfo.m
//  PXNetWork
//
//  Created by qiapeng-Ios on 2017/2/5.
//  Copyright © 2017年 qiapeng-Ios. All rights reserved.
//

#import "PXUserInfo.h"
#import "PXDBHelper.h"

#define KuserId @"PXUserInfo_userId"
#define Kaccess_token @"PXUserInfo_token"
#define KPhone @"PXUserInfo_phone"

@interface PXUserInfo () {
    NSString *_userId;
    NSString *_token;
    NSString *_phone;
}

@end

@implementation PXUserInfo

/**
 获取单例
 */
+ (instancetype)shareInstall{
    static PXUserInfo* instance = nil;
    static dispatch_once_t once;
    
    dispatch_once(&once, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [PXUserInfo shareInstall];
}

- (id)copyWithZone:(struct _NSZone *)zone {
    return [PXUserInfo shareInstall];
}



- (void)setUserId:(NSString *)userId {
    _userId = userId;
    [PXDBHelper setValue:userId forKey:KuserId];
}

- (NSString *)userId {
    if (_userId == nil) {
        _userId = [PXDBHelper valueForKey:KuserId];
    }
    
    return _userId;
}

- (void)setAoken:(NSString *)token {
    _token = token;
    [PXDBHelper setValue:_token forKey:Kaccess_token];
}

- (NSString *)token {
    if (_token == nil) {
        _token = [PXDBHelper valueForKey:Kaccess_token];
    }
    
    return _token;
}

- (void)setPhone:(NSString *)phone{
     _phone = phone;
     [PXDBHelper setValue:phone forKey:KPhone];
}

- (NSString *)phone{
    if (_phone == nil) {
        _phone = [PXDBHelper valueForKey:KPhone];
    }
    
    return _phone;
}



//清空数据
- (void)clearData {
    self.userId = nil;
    self.phone = nil;
    self.token = nil;
}


@end
