//
//  BasePageModel.h
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/14.
//  Copyright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import "BaseModel.h"

@interface BasePageModel : BaseModel
@property(nonatomic ,assign) NSInteger pageSize;
@property(nonatomic ,assign) NSInteger pageTotal;
@property(nonatomic ,assign) NSInteger recordCount;
@property(nonatomic ,assign) NSInteger hasNextPage;
@end
