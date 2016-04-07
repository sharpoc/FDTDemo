//
//  HttpTool.m
//  HeXunChat
//
//  Created by lvxue on 16/3/20.
//  Copyright © 2016年 lvxue. All rights reserved.
//

#import "HttpTool.h"
#import "AFNetworking.h"

@implementation HttpTool

+ (void)get:(NSString *)url params:(NSDictionary *)parms success:(void (^)(id))success failure:(void (^)(id))failure{
    
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    
    [manager GET:url parameters:parms progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {

        if (success) {
            
            success(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (error) {
            
            failure(error);
        }
    }];
}

+ (void)post:(NSString *)url params:(NSDictionary *)parms success:(void (^)(id))success failure:(void (^)(id))failure{

    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    
    [manager POST:url parameters:parms progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       
        if (success) {
            
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (failure) {
            
            failure(error);
        }
    }];
}

@end
