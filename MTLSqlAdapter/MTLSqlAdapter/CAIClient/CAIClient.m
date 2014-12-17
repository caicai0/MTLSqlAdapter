//
//  CAIClient.m
//  CNHC
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "CAIClient.h"
#import "CAINet.h"

@implementation CAIClient

//单例部分
static CAIClient *shareClient = nil;
static dispatch_once_t onceToken;
+(id)shareClient{
    dispatch_once(&onceToken, ^{
        shareClient = [[CAIClient alloc]init];
    });
    return shareClient;
}

//初始化
- (instancetype)init
{
    self = [super init];
    if (self) {
        CAINet * net = [CAINet shareClient];
        net.baseUrlString = @"http://192.168.1.92:8080/appserver/";
        net.baseUrlString = @"http://115.29.250.28:8080/app/";
        net.baseUrlString = @"http://mobile.cn-healthcare.com/";
    }
    return self;
}

#pragma mark - type类型下的接口

- (AFHTTPRequestOperation *)newsListTopWithPage:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish{
    NSDictionary *params = @{@"page":@(page),
                              @"pushtime":publishTime
                              };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_top.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsList class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListWithColumn:(NSInteger)column Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish{
    NSDictionary *params = @{@"page":@(page),
                             @"pushtime":publishTime,
                             @"column":@(column)
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_get.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsList class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListAnthorWithPage:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish{
    NSDictionary *params = @{@"page":@(page),
                             @"pushtime":publishTime
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_author.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsList class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListPhotoWithPage:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish{
    NSDictionary *params = @{@"page":@(page),
                             @"pushtime":publishTime
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_photo.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsList class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListLabelNewsWithLabel:(NSString *)labelId Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish{
    NSDictionary *params = @{@"page":@(page),
                             @"pushtime":publishTime,
                             @"labelId":labelId
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_labelnews.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsList class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListAuthorNewsWithAuthorId:(NSString *)authorId Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish{
    NSDictionary *params = @{@"page":@(page),
                             @"pushtime":publishTime,
                             @"authorId":authorId
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_authornews.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsList class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListSubsnewsListWithMemcard:(NSString *)memcard Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish{
    NSDictionary *params = @{@"page":@(page),
                             @"pushtime":publishTime,
                             @"memcard":memcard
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/member_subsnewslist.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsList class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListSearchListWithKeyword:(NSString *)keyword Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish{
    NSDictionary *params = @{@"page":@(page),
                             @"pushtime":publishTime,
                             @"keyword":keyword
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_search.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsList class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListReportParameters:(NSDictionary *)dic finish:(void(^)(CAIReportResult *result,NSError *error))finish{
    AFHTTPRequestOperation * op = [[CAINet shareClient]post:@"phone/newsl_report1.xhtml" parameters:dic finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIReportResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListContentWithNewsId:(NSString *)newsId finish:(void(^)(CAINewsContentResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"newsId":newsId
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_content.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsContentResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsCommentListWithNewsId:(NSString *)newsId page:(NSInteger)page pushTime:(NSString *)pushTime finish:(void(^)(CAINewsCommentResult *CommentListResult, NSError *error))finish{
    NSDictionary *params = @{
                             @"newsId":newsId,
                             @"pushtime":pushTime,
                             @"page":@(page)
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_comment.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsCommentResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListCommentListWithUserId:(NSString *)userId page:(NSInteger)page pushTime:(NSString *)publishTime finish:(void (^)(CAINewsCommentResult *, NSError *))finish{
    NSDictionary *params = @{
                             @"userid":userId,
                             @"pushtime":publishTime,
                             @"page":@(page)
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/member_mycomment.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINewsCommentResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsListCommentPostParameters:(NSDictionary *)dic finish:(void(^)(CAICommentPublishResult *result,NSError *error))finish{
    AFHTTPRequestOperation * op = [[CAINet shareClient]post:@"phone/member_commentPub.xhtml" parameters:dic finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAICommentPublishResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)collectSyncWithMemcard:(NSString *)memcard maxTime:(NSString *)maxTime source:(NSString *)source finish:(void(^)(CAICollectionResult *result,NSError *error))finish{
    NSMutableDictionary * params = [NSMutableDictionary dictionary];
    if (memcard) {
        params[@"memcard"] = memcard;
    }
    if (maxTime) {
        params[@"maxtime"] = maxTime;
    }
    if (source) {
        params[@"source"] = source;
    }
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/member_collectSync.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAICollectionResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)memberRegisterWithNickName:(NSString *)nickName password:(NSString *)password registerType:(NSInteger)registerType userId:(NSString *)userId finish:(void(^)(CAIRegistOrLoginResult *result,NSError *error))finish{
    NSDictionary * dic = @{
                           @"nickname":nickName,
                           @"password":password,
                           @"registerType":@(registerType),
                           @"userid":userId
                           };
    AFHTTPRequestOperation * op = [[CAINet shareClient]post:@"phone/member_register.xhtml" parameters:dic finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIRegistOrLoginResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)localLoginWithUserId:(NSString *)userId password:(NSString *)password finish:(void(^)(CAIRegistOrLoginResult *result,NSError *error))finish{
    NSDictionary * dic = @{
                           @"loginType":@"local",
                           @"userid":userId,
                           @"password":password
                           };
    AFHTTPRequestOperation * op = [[CAINet shareClient]post:@"phone/member_login.xhtml" parameters:dic finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIRegistOrLoginResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)thirdPartLoginWithLoginType:(NSString *)loginType thirdPartId:(NSString *)thirdPartId nickName:(NSString *)nickName photo:(NSString *)photoUrlString finish:(void(^)(CAIRegistOrLoginResult *result,NSError *error))finish{
    NSDictionary * dic = @{
                           @"loginType":loginType,
                           @"otherId":thirdPartId,
                           @"nickname":nickName,
                           @"photo":photoUrlString
                           };
    AFHTTPRequestOperation * op = [[CAINet shareClient]post:@"phone/member_login.xhtml" parameters:dic finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIRegistOrLoginResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)subscribeLabelLabelId:(NSString *)labelId memcard:(NSString *)memcard flag:(NSInteger)flag finish:(void(^)(CAINonDatasResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"memcard":memcard,
                             @"labelId":labelId,
                             @"flag":@(flag)
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/member_labelsubs.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINonDatasResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)subscribeAuthorWithAuthorId:(NSString *)authorId memcard:(NSString *)memcard flag:(NSInteger)flag finish:(void(^)(CAINonDatasResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"memcard":memcard,
                             @"authorId":authorId,
                             @"flag":@(flag)
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/member_authorsubs.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINonDatasResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)collectNewsWithNewsId:(NSString *)newsId memcard:(NSString *)memcard flag:(NSInteger)flag finish:(void(^)(CAICollectionResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"memcard":memcard,
                             @"newsId":newsId,
                             @"flag":@(flag)
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/member_collect.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAICollectionResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)syncSubsribeWithSource:(NSInteger)source memcard:(NSString *)memcard maxTime:(NSString *)maxTime finish:(void(^)(CAISubsribeResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"memcard":memcard,
                             @"source":@(source),
                             @"maxtime":maxTime
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/member_subscriptionsync.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAISubsribeResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)updateUserNickName:(NSString *)nickName memcard:(NSString *)memcard finish:(void(^)(CAINonDatasResult *result,NSError *error))finish{
    NSDictionary * dic = @{
                           @"memcard":memcard,
                           @"nickname":nickName
                           };
    AFHTTPRequestOperation * op = [[CAINet shareClient]post:@"phone/member_updateinfo.xhtml" parameters:dic finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINonDatasResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)updateUserMobile:(NSString *)mobile memcard:(NSString *)memcard finish:(void(^)(CAINonDatasResult *result,NSError *error))finish{
    NSDictionary * dic = @{
                           @"memcard":memcard,
                           @"mobile":mobile
                           };
    AFHTTPRequestOperation * op = [[CAINet shareClient]post:@"phone/member_updateinfo.xhtml" parameters:dic finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINonDatasResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)getUserInfoWithMemcard:(NSString *)memcard finish:(void(^)(CAIRegistOrLoginResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"memcard":memcard,
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/member_synsinfo.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIRegistOrLoginResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)clientUpgradeWithCode:(NSString *)code clientType:(NSInteger)clientType finish:(void(^)(CAIUpgradeResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"code":code,
                             @"clienttype":@(clientType)
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_upgrade.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIUpgradeResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)sentMessageAuthenticationWithMobile:(NSString *)mobile flag:(NSInteger)flag finish:(void(^)(CAIMessageAuthenticationResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"mobile":mobile,
                             @"flag":@(flag)
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_smsnumber.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIMessageAuthenticationResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)syncLabelsWithMaxTime:(NSString *)maxTime finish:(void(^)(CAILabelListResult *result,NSError *error))finish{
    NSParameterAssert(maxTime);
    NSDictionary *params = @{
                             @"maxtime":maxTime
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_labelsync.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAILabelListResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)syncAnthorWithMaxTime:(NSString *)maxTime finish:(void(^)(CAIAuthorSyncResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"maxtime":maxTime
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_authorsync.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIAuthorSyncResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)uploadHeaderImageWithFilePath:(NSString *)filePath finish:(void(^)(CAIUploadImageResult *result,NSError *error))finish{
    //handler/
    AFHTTPRequestOperation * op = [[CAINet shareClient]uploadImageWithUrlString:@"http://www.cn-healthcare.com/handler/phone/member_headphoto.xhtml" filePath:filePath finish:^(NSDictionary *dic, NSError * error) {
        [self handleResponsObject:dic netError:error resultClass:[CAIUploadImageResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)feedbackWithContent:(NSString *)content qqOrPhone:(NSString *)qqOrPhone finish:(void(^)(CAINonDatasResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"content":content,
                             @"qq_phone":qqOrPhone
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/member_feedback.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINonDatasResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)yiyantangListWithPage:(NSInteger)page pushTime:(NSString *)pushTime finish:(void(^)(CAIYiyantangListResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"page":@(page),
                             @"pushtime":pushTime
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/ft_ftlist.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIYiyantangListResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)autoRefreshWithFtid:(NSString *)ftId pushTime:(NSString *)pushTime finish:(void(^)(CAIYiyantangRefreshResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"ftid":ftId,
                             @"pushtime":pushTime
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/ft_refresh.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIYiyantangRefreshResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)getMyMessageWithFtid:(NSString *)ftId memcard:(NSString *)memcard finish:(void(^)(CAIMyMessageResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"ftid":ftId,
                             @"memcard":memcard
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/ft_mymsg.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIMyMessageResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)FangtanPraiseWithQaid:(NSString *)qaid finish:(void(^)(CAINonDatasResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"qaid":qaid
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/ft_support.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINonDatasResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)commentListOfFangTanWithQaid:(NSString *)qaid fangtanId:(NSString *)fangtanId page:(NSInteger)page pushTime:(NSString *)pushTime finish:(void(^)(CAIYiyantangCommentListResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"qaid":qaid,
                             @"ftid":fangtanId,
                             @"page":@(page),
                             @"pushtime":pushTime
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/ft_comment.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIYiyantangCommentListResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)fangtanSendQuestionWithContent:(NSString *)content memcard:(NSString *)memcard fangtanId:(NSString *)fangtanId qaid:(NSString *)qaid finish:(void(^)(CAINonDatasResult *result,NSError *error))finish{
    
    NSMutableDictionary * dic = [NSMutableDictionary dictionary];
    if (content) {
        dic[@"content"] = content;
    }
    if (memcard) {
        dic[@"memcard"] = memcard;
    }
    if (fangtanId) {
        dic[@"ftid"] = fangtanId;
    }
    if (qaid) {
        dic[@"qaid"] = qaid;
    }
    AFHTTPRequestOperation * op = [[CAINet shareClient]post:@"phone/ft_sendquestion.xhtml" parameters:dic finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINonDatasResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)fangtanDetailWithFangtanId:(NSString *)fangtanId page:(NSInteger)page pushTime:(NSString *)pushTime finish:(void(^)(CAIYiyantangContentResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"ftid":fangtanId,
                             @"page":@(page),
                             @"pushtime":pushTime
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/ft_gettalk.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIYiyantangContentResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)newsPraiseWithCommid:(NSString *)commid finish:(void(^)(CAINonDatasResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"commid":commid
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_support.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINonDatasResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)addVipWithParameters:(NSDictionary *)parameters finish:(void(^)(CAINonDatasResult *result,NSError *error))finish;{
    AFHTTPRequestOperation * op = [[CAINet shareClient]post:@"phone/member_updatev.xhtml" parameters:parameters finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAINonDatasResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)pushActiveWithAdId:(NSString *)AdId finish:(void(^)(CAIPushDetailResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"adid":AdId
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_getad.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAIPushDetailResult class] finish:finish];
    }];
    return op;
}

- (AFHTTPRequestOperation *)specialListWithSpecialId:(NSString *)specialId finish:(void(^)(CAISpecailListResult *result,NSError *error))finish{
    NSDictionary *params = @{
                             @"id":specialId
                             };
    AFHTTPRequestOperation * op = [[CAINet shareClient]get:@"phone/newsl_zt.xhtml" paramaters:params finish:^(NSDictionary *responsObject, NSError *error) {
        [self handleResponsObject:responsObject netError:error resultClass:[CAISpecailListResult class] finish:finish];
    }];
    return op;
}

#pragma mark - privateFounctions

- (void)handleResponsObject:(NSDictionary *)dic netError:(NSError *)error resultClass:(Class)class finish:(void(^)(id result,NSError *error))finish{
//    NSLog(@" dic :%@\n-------------------------------------\n",dic);
//    NSLog(@" error:%@\n-------------------------------------\n",error);
    if (error) {
        if (finish) {
            finish(nil,error);//网络连接错误
        }
    }else{
        NSError *adapterError = nil;
        id list = [MTLJSONAdapter modelOfClass:class fromJSONDictionary:dic error:&adapterError];
        if (error) {
            if (finish) {
                finish(nil,error);//数据解析错误
            }
        }else{
            if (finish) {
                finish(list,nil);
            }
        }
    }
}

@end
