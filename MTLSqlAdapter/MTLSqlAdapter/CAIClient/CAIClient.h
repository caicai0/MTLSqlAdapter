//
//  CAIClient.h
//  CNHC
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 user. All rights reserved.
//  本类实现所用的业务接口  数据类型可以根据实际情况修改

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "CAINewsList.h"
#import "CAIReportResult.h"
#import "CAINewsContentResult.h"
#import "CAINewsCommentResult.h"
#import "CAICommentPublishResult.h"
#import "CAICollectionResult.h"
#import "CAIRegistOrLoginResult.h"
#import "CAINonDatasResult.h"
#import "CAISubsribeResult.h"
#import "CAIUpgradeResult.h"
#import "CAILabelListResult.h"
#import "CAIUploadImageResult.h"
#import "CAIYiyantangListResult.h"
#import "CAIYiyantangRefreshResult.h"
#import "CAIYiyantangCommentListResult.h"
#import "CAIYiyantangContentResult.h"
#import "CAIPushDetailResult.h"
#import "CAIMessageAuthenticationResult.h"
#import "CAIMyMessageResult.h"
#import "CAIAuthorSyncResult.h"
#import "CAISpecailListResult.h"

@interface CAIClient : NSObject

//单例
+ (CAIClient *)shareClient;

#pragma mark - 独立接口方法实现

//头条新闻
- (AFHTTPRequestOperation *)newsListTopWithPage:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish;

//要闻,医院，投资，创新
- (AFHTTPRequestOperation *)newsListWithColumn:(NSInteger)column Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish;

//专栏新闻列表
- (AFHTTPRequestOperation *)newsListAnthorWithPage:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish;

//图说
- (AFHTTPRequestOperation *)newsListPhotoWithPage:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish;

//标签新闻
- (AFHTTPRequestOperation *)newsListLabelNewsWithLabel:(NSString *)labelId Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish;

//专栏作者发表的文章列表
- (AFHTTPRequestOperation *)newsListAuthorNewsWithAuthorId:(NSString *)authorId Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish;

////会员已订阅标签和专栏作者相关文章列表接口
- (AFHTTPRequestOperation *)newsListSubsnewsListWithMemcard:(NSString *)memcard Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish;

//搜索
- (AFHTTPRequestOperation *)newsListSearchListWithKeyword:(NSString *)keyword Page:(NSInteger)page publishTime:(NSString *)publishTime finish:(void(^)(CAINewsList *result,NSError *error))finish;

//上报接口
- (AFHTTPRequestOperation *)newsListReportParameters:(NSDictionary *)dic finish:(void(^)(CAIReportResult *result,NSError *error))finish;

//新闻内容
- (AFHTTPRequestOperation *)newsListContentWithNewsId:(NSString *)newsId finish:(void(^)(CAINewsContentResult *result,NSError *error))finish;

//新闻评论列表
- (AFHTTPRequestOperation *)newsCommentListWithNewsId:(NSString *)newsId page:(NSInteger)page pushTime:(NSString *)pushTime finish:(void(^)(CAINewsCommentResult *CommentListResult, NSError *error))finish;

// 个人评论
- (AFHTTPRequestOperation *)newsListCommentListWithUserId:(NSString *)userId page:(NSInteger)page pushTime:(NSString *)publishTime finish:(void (^)(CAINewsCommentResult *commentListResult, NSError *error))finish;

//发表评论
- (AFHTTPRequestOperation *)newsListCommentPostParameters:(NSDictionary *)dic finish:(void(^)(CAICommentPublishResult *result,NSError *error))finish;

//收藏列表同步
- (AFHTTPRequestOperation *)collectSyncWithMemcard:(NSString *)memcard maxTime:(NSString *)maxTime source:(NSString *)source finish:(void(^)(CAICollectionResult *result,NSError *error))finish;

//用户注册
- (AFHTTPRequestOperation *)memberRegisterWithNickName:(NSString *)nickName password:(NSString *)password registerType:(NSInteger)registerType userId:(NSString *)userId finish:(void(^)(CAIRegistOrLoginResult *result,NSError *error))finish;

//原生登陆
- (AFHTTPRequestOperation *)localLoginWithUserId:(NSString *)userId password:(NSString *)password finish:(void(^)(CAIRegistOrLoginResult *result,NSError *error))finish;

//第三方登陆
- (AFHTTPRequestOperation *)thirdPartLoginWithLoginType:(NSString *)loginType thirdPartId:(NSString *)thirdPartId nickName:(NSString *)nickName photo:(NSString *)photoUrlString finish:(void(^)(CAIRegistOrLoginResult *result,NSError *error))finish;

//订阅/取消订阅标签
- (AFHTTPRequestOperation *)subscribeLabelLabelId:(NSString *)labelId memcard:(NSString *)memcard flag:(NSInteger)flag finish:(void(^)(CAINonDatasResult *result,NSError *error))finish;

//订阅/取消订阅专栏
- (AFHTTPRequestOperation *)subscribeAuthorWithAuthorId:(NSString *)authorId memcard:(NSString *)memcard flag:(NSInteger)flag finish:(void(^)(CAINonDatasResult *result,NSError *error))finish;

//收藏/取消收藏
- (AFHTTPRequestOperation *)collectNewsWithNewsId:(NSString *)newsId memcard:(NSString *)memcard flag:(NSInteger)flag finish:(void(^)(CAICollectionResult *result,NSError *error))finish;

//同步订阅
- (AFHTTPRequestOperation *)syncSubsribeWithSource:(NSInteger)source memcard:(NSString *)memcard maxTime:(NSString *)maxTime finish:(void(^)(CAISubsribeResult *result,NSError *error))finish;

//修改用户信息
- (AFHTTPRequestOperation *)updateUserNickName:(NSString *)nickName memcard:(NSString *)memcard finish:(void(^)(CAINonDatasResult *result,NSError *error))finish;

- (AFHTTPRequestOperation *)updateUserMobile:(NSString *)mobile memcard:(NSString *)memcard finish:(void(^)(CAINonDatasResult *result,NSError *error))finish;

- (AFHTTPRequestOperation *)getUserInfoWithMemcard:(NSString *)memcard finish:(void(^)(CAIRegistOrLoginResult *result,NSError *error))finish;

//客户端版本升级接口
- (AFHTTPRequestOperation *)clientUpgradeWithCode:(NSString *)code clientType:(NSInteger)clientType finish:(void(^)(CAIUpgradeResult *result,NSError *error))finish;

//发送短信验证码 //flag:1注册 2加V 3修改手机号
- (AFHTTPRequestOperation *)sentMessageAuthenticationWithMobile:(NSString *)mobile flag:(NSInteger)flag finish:(void(^)(CAIMessageAuthenticationResult *result,NSError *error))finish;

//同步标签
- (AFHTTPRequestOperation *)syncLabelsWithMaxTime:(NSString *)maxTime finish:(void(^)(CAILabelListResult *result,NSError *error))finish;

//同步专栏
- (AFHTTPRequestOperation *)syncAnthorWithMaxTime:(NSString *)maxTime finish:(void(^)(CAIAuthorSyncResult *result,NSError *error))finish;

//上传个人头像
- (AFHTTPRequestOperation *)uploadHeaderImageWithFilePath:(NSString *)filePath finish:(void(^)(CAIUploadImageResult *result,NSError *error))finish;

//反馈  只要不返回 error 就是成功
- (AFHTTPRequestOperation *)feedbackWithContent:(NSString *)content qqOrPhone:(NSString *)qqOrPhone finish:(void(^)(CAINonDatasResult *result ,NSError *error))finish;

//医言堂列表接口
- (AFHTTPRequestOperation *)yiyantangListWithPage:(NSInteger)page pushTime:(NSString *)pushTime finish:(void(^)(CAIYiyantangListResult *result,NSError *error))finish;

//自动刷新
- (AFHTTPRequestOperation *)autoRefreshWithFtid:(NSString *)ftId pushTime:(NSString *)pushTime finish:(void(^)(CAIYiyantangRefreshResult *result,NSError *error))finish;

//我的消息
- (AFHTTPRequestOperation *)getMyMessageWithFtid:(NSString *)ftId memcard:(NSString *)memcard finish:(void(^)(CAIMyMessageResult *result,NSError *error))finish;

//访谈赞  只要不返回error  就是成功
- (AFHTTPRequestOperation *)FangtanPraiseWithQaid:(NSString *)qaid finish:(void(^)(CAINonDatasResult *result,NSError *error))finish;

//访谈评论列表
- (AFHTTPRequestOperation *)commentListOfFangTanWithQaid:(NSString *)qaid fangtanId:(NSString *)fangtanId page:(NSInteger)page pushTime:(NSString *)pushTime finish:(void(^)(CAIYiyantangCommentListResult *result,NSError *error))finish;

//访谈提问
- (AFHTTPRequestOperation *)fangtanSendQuestionWithContent:(NSString *)content memcard:(NSString *)memcard fangtanId:(NSString *)fangtanId qaid:(NSString *)qaid finish:(void(^)(CAINonDatasResult *result,NSError *error))finish;

//获取访谈详细说明接口
- (AFHTTPRequestOperation *)fangtanDetailWithFangtanId:(NSString *)fangtanId page:(NSInteger)page pushTime:(NSString *)pushTime finish:(void(^)(CAIYiyantangContentResult *result,NSError *error))finish;

//点赞接口
- (AFHTTPRequestOperation *)newsPraiseWithCommid:(NSString *)commid finish:(void(^)(CAINonDatasResult *result,NSError *error))finish;

//加V接口
- (AFHTTPRequestOperation *)addVipWithParameters:(NSDictionary *)parameters finish:(void(^)(CAINonDatasResult *result,NSError *error))finish;

//推送活动接口
- (AFHTTPRequestOperation *)pushActiveWithAdId:(NSString *)AdId finish:(void(^)(CAIPushDetailResult *result,NSError *error))finish;

//专题列表接口
- (AFHTTPRequestOperation *)specialListWithSpecialId:(NSString *)specialId finish:(void(^)(CAISpecailListResult *result,NSError *error))finish;
@end
