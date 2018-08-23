//
//  BasePageParam.m
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/14.
//  Copyright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import "BasePageParam.h"

@implementation BasePageParam
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.reqPageNum = 1;
        self.maxResults = 10;
    }
    return self;
}
@end
