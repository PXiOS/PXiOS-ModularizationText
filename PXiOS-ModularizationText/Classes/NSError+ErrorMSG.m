//
//  NSError+ErrorMSG.m
//  HS_RAC
//
//  Created by 彭旋 on 2018/8/16.
//  Copyright © 2018年 GXTXKJOrganizationId. All rights reserved.
//

#import "NSError+ErrorMSG.h"

#import <objc/runtime.h>


static const char * NSError_errorMSG = "NSError_errorMSG";

@implementation NSError (ErrorMSG)

- (void)setErrorMSG:(NSString *)errorMSG{
    objc_setAssociatedObject(self, &NSError_errorMSG, errorMSG, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)errorMSG{
    return objc_getAssociatedObject(self, &NSError_errorMSG);
}



@end
