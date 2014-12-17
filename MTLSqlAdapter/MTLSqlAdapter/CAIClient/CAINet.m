//
//  CAINetClient.m
//  netWork
//
//  Created by mac on 14/11/17.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "CAINet.h"
#import "HTTPHeader.h"
#import "AFNetworking.h"

#define HTTPTIMEOUT 30;

@interface CAINet ()
@property (nonatomic, strong)NSOperationQueue *netOperationQueue;
@end

@implementation CAINet

//单例部分
static CAINet *shareClient = nil;
static dispatch_once_t onceToken;
+(id)shareClient{
    dispatch_once(&onceToken, ^{
        shareClient = [[CAINet alloc]init];
    });
    return shareClient;
}

//初始化
- (instancetype)init{
    self = [super init];
    if (self) {
        self.netOperationQueue = [NSOperationQueue mainQueue];
        self.baseUrlString = nil;
        self.baseHeaderField = nil;
    }
    return self;
}

+ (NSMutableURLRequest *)requestWithUrl:(NSURL *)url method:(NSString *)httpMethod{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setTimeoutInterval:30];
    if ([httpMethod isEqualToString:@"GET"]) {
        request.HTTPMethod = httpMethod;
    }else if([httpMethod isEqualToString:@"POST"]){
        request.HTTPMethod = httpMethod;
    }
    [HTTPHeader addSameHeaderParametersToRquest:request];
    return request;
}

- (NSString *)fullUrlStringWithUrlString:(NSString *)urlString{
    if (self.baseUrlString && ![urlString hasPrefix:@"http"]) {
        return [self.baseUrlString stringByAppendingString:urlString];
    }
    return urlString;
}

- (AFHTTPRequestOperation *)get:(NSString *)urlString paramaters:(NSDictionary *)paramters finish:(void(^)(NSDictionary *responsObject , NSError *error)) finish{
    urlString = [self fullUrlStringWithUrlString:urlString];
    NSError * error = nil;
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:urlString parameters:paramters error:&error];
    [HTTPHeader addSameHeaderParametersToRquest:request];
    if(error){
        if(finish){
            finish(nil,error);
        }
        return nil;
    }
    AFHTTPRequestOperation *op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    op.responseSerializer = [AFJSONResponseSerializer serializer];
    [op setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (finish) {
            finish(responseObject,nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (finish) {
            finish(nil,error);
        }
    }];
    [self.netOperationQueue addOperation:op];
    return op;
}
- (NSOperation *)post:(NSString *)urlString parameters:(NSDictionary *)paramters finish:(void(^)(NSDictionary *responsObject , NSError *error)) finish{
    urlString = [self fullUrlStringWithUrlString:urlString];
    NSURL *url = [NSURL URLWithString:[urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding ]];
    NSMutableURLRequest *request = [CAINet requestWithUrl:url method:@"POST"];
    [request addValue:@"application/json; encoding=utf-8" forHTTPHeaderField:@"Content-Type"];
    
    if (paramters && [paramters isKindOfClass:[NSDictionary class]] && paramters.count) {
        if ([NSJSONSerialization isValidJSONObject:paramters]) {
            NSError *error;
            NSData *jsonData = [NSJSONSerialization dataWithJSONObject:paramters options:NSJSONWritingPrettyPrinted error: &error];
            if (error) {
                NSLog(@"jsonerror:%@",error);
            }
            [request setHTTPBody:[NSMutableData dataWithData:jsonData]];
        }else{
            NSLog(@"paramters Json");
        }
    }else{
        [request setHTTPBody:[@"0" dataUsingEncoding:NSUTF8StringEncoding]];
    }
    
    AFHTTPRequestOperation *op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    NSLog(@"%@",request);
    op.responseSerializer = [AFJSONResponseSerializer serializer];
    [op setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (finish) {
            finish(responseObject,nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (finish) {
            finish(nil,error);
        }
    }];
    [self.netOperationQueue addOperation:op];
    return op;
}

- (NSOperation *)uploadImageWithUrlString:(NSString *)urlString filePath:(NSString *)filePath finish:(void (^)(NSDictionary *, NSError *))finish{
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    NSString *fileName = [filePath lastPathComponent];
    NSString *uploadUrl = [self fullUrlStringWithUrlString:urlString];

    AFHTTPRequestOperation * op = [self postRequestWithURL:uploadUrl postParems:parameters picFilePath:filePath picFileName:fileName];
    op.responseSerializer = [AFJSONResponseSerializer serializer];
    [op setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (finish) {
            finish(responseObject,nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (finish) {
            finish(nil,error);
        }
    }];
    
    [self.netOperationQueue addOperation:op];
    return op;
}

- (AFHTTPRequestOperation *)postRequestWithURL: (NSString *)url  // IN
                      postParems: (NSMutableDictionary *)postParems // IN
                     picFilePath: (NSString *)picFilePath  // IN
                     picFileName: (NSString *)picFileName;  // IN
{
    
    
    NSString *TWITTERFON_FORM_BOUNDARY = @"0xKhTmLbOuNdArY";
    //根据url初始化request
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]
                                                           cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                                       timeoutInterval:30];
    //得到图片的data
    NSData* data;
    if(picFilePath){
        UIImage *image=[UIImage imageWithContentsOfFile:picFilePath];
        //判断图片是不是png格式的文件
        if (UIImagePNGRepresentation(image)) {
            //返回为png图像。
            data = UIImagePNGRepresentation(image);
        }else {
            //返回为JPEG图像。
            data = UIImageJPEGRepresentation(image, 1.0);
        }
    }
    //http body的字符串
    NSMutableString *body=[[NSMutableString alloc]init];
    //参数的集合的所有key的集合
    NSArray *keys= [postParems allKeys];
    
    [body appendFormat:@"--%@\r\n",TWITTERFON_FORM_BOUNDARY];
    //遍历keys
    for(int i=0;i<[keys count];i++)
    {
        //得到当前key
        NSString *key=[keys objectAtIndex:i];
        //添加字段名称，换2行
        [body appendFormat:@"Content-Disposition: form-data; name=\"%@\"\r\n\r\n",key];
        //添加字段的值
        [body appendFormat:@"%@\r\n",[postParems objectForKey:key]];
        
        NSLog(@"添加字段的值==%@",[postParems objectForKey:key]);
    }
    
    if(picFilePath){
        //声明pic字段，文件名为boris.png
        [body appendFormat:@"Content-Disposition: form-data; name=\"%@\"; filename=\"%@\"\r\n",@"image",picFileName];
        //声明上传文件的格式
        [body appendFormat:@"Content-Type: image/png\r\n\r\n"];
    }
    
    //声明结束符：--AaB03x--
    NSString *end=[[NSString alloc]initWithFormat:@"\r\n--%@--\r\n",TWITTERFON_FORM_BOUNDARY];
    //声明myRequestData，用来放入http body
    NSMutableData *myRequestData=[NSMutableData data];
    
    //将body字符串转化为UTF8格式的二进制
    [myRequestData appendData:[body dataUsingEncoding:NSUTF8StringEncoding]];
    if(picFilePath){
        //将image的data加入
        [myRequestData appendData:data];
    }
    //加入结束符--AaB03x--
    [myRequestData appendData:[end dataUsingEncoding:NSUTF8StringEncoding]];
    
    //设置HTTPHeader中Content-Type的值
    NSString *content=[[NSString alloc]initWithFormat:@"multipart/form-data; boundary=%@",TWITTERFON_FORM_BOUNDARY];
    //设置HTTPHeader
    [request setValue:content forHTTPHeaderField:@"Content-Type"];
    //设置Content-Length
    [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[myRequestData length]] forHTTPHeaderField:@"Content-Length"];
    //设置http body
    [request setHTTPBody:[NSData dataWithData:myRequestData]];
    //http method
    [request setHTTPMethod:@"POST"];
    
    [HTTPHeader addSameHeaderParametersToRquest:request];
    
    
    AFHTTPRequestOperation * op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    return op;
}

@end
