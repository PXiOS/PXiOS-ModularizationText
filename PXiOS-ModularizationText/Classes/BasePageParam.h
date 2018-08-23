//
//  BasePageParam.h
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/14.
//  Copyright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import "BaseParam.h"

@interface BasePageParam : BaseParam
@property(nonatomic, assign)NSInteger reqPageNum; // 请求页数
@property(nonatomic, assign)NSInteger maxResults; // 页大小
@end
