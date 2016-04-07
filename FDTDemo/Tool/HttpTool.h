//
//  HttpTool.h
//  HeXunChat
//
//  Created by lvxue on 16/3/20.
//  Copyright © 2016年 lvxue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpTool : NSObject

+ (void)get:(NSString *)url params:(NSDictionary *)parms success:(void(^)(id json))success failure:(void(^)(id json))failure;
+ (void)post:(NSString *)url params:(NSDictionary *)parms success:(void(^)(id json))success failure:(void(^)(id json))failure;

@end
