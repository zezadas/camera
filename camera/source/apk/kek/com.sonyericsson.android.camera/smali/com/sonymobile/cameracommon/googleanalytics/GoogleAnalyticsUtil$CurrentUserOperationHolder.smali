.class Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;
.super Ljava/lang/Object;
.source "GoogleAnalyticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentUserOperationHolder"
.end annotation


# instance fields
.field private mShootingNum:I

.field private mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mShootingNum:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;-><init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mShootingNum:I

    .line 101
    return-void
.end method

.method public sendUserOperation()V
    .locals 7

    .prologue
    .line 85
    iget-object v1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .line 87
    .local v1, "userOperation":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    if-eqz v1, :cond_0

    .line 88
    iget v2, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mShootingNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "shootingNum":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;->getCategory()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Shots"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0    # "shootingNum":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->clear()V

    .line 94
    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V
    .locals 1
    .param p1, "operation"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .prologue
    .line 67
    invoke-interface {p1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mShootingNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mShootingNum:I

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    if-nez v0, :cond_1

    .line 73
    iput-object p1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    invoke-interface {p1, v0}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;->updateOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .line 76
    return-void
.end method

.method public setViewerLaunched()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;->getViewer()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V

    .line 82
    :cond_0
    return-void
.end method
