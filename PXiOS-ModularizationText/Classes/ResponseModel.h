//
//  ResponseModel.h
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/14.
//  Copyright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResponseModel : NSObject   // description

@property (nonatomic,assign) NSInteger statusCode;
@property (copy, nonatomic) NSString *status;
@property (strong, nonatomic) NSString *code;
@property (strong, nonatomic) NSString *desc;
@property (strong, nonatomic) NSArray *list;
@property (strong, nonatomic) NSArray *AuthList;
@property (assign, nonatomic) BOOL hasNextPage;
@property (strong, nonatomic) NSDictionary *singleResult;
@property (strong, nonatomic) NSDictionary *pageResult;
@property (strong, nonatomic) NSDictionary *statResult;
@property (strong, nonatomic) id data;
@property (strong, nonatomic) NSArray * lists;
@property (strong, nonatomic) NSString *info;
@property (nonatomic, strong) NSString *descrip;
@property (nonatomic, strong) NSString *iosUrl;
@property (nonatomic, strong) NSString *indexUrl;
@property (strong, nonatomic) NSArray *datas;
@property (nonatomic, strong) id allData;

@property (nonatomic , assign) BOOL isSuccess;
//-(BOOL)isSuccess;
@end
