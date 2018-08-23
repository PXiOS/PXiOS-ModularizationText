//
//  ResponseModel.m
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/14.
//  Copyright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import "ResponseModel.h"

@implementation ResponseModel


+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"desc":@"data.description",
             @"list":@"data.singleResult.data.list",
             @"hasNextPage":@"data.hasNextPage",
             @"dataList":@"datas",
             @"singleResult":@"data.singleResult",
             @"statResult":@"data.statResult",
             @"data":@"data",
             @"datas":@"data",
             @"AuthList":@"data.singleResult",
             @"indexUrl":@"data.indexUrl",
             @"iosUrl":@"data.iosUrl",
             @"lists":@"data.list",
             @"descrip":@"description",
             @"pageResult":@"data.pageResult"
             };
}

- (BOOL)isSuccess{ 
    return [self.code isEqualToString:@"000000"] || [self.code isEqualToString:@"000001"] || [self.code isEqualToString:@"000009"];
}

@end
