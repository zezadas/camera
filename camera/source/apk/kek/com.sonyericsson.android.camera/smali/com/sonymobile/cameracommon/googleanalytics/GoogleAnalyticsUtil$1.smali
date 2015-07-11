.class Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;
.super Ljava/lang/Object;
.source "GoogleAnalyticsUtil.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->loadGtmContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;->this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 234
    check-cast p1, Lcom/google/android/gms/tagmanager/ContainerHolder;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 2
    .param p1, "containerHolder"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 238
    if-eqz p1, :cond_1

    .line 239
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 242
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-eqz v0, :cond_0

    .line 247
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->setContainerHolder(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    .line 253
    iget-object v1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;->this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    # getter for: Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->access$400(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushInitDefaultsToDataLayer(Landroid/content/Context;)V

    .line 260
    iget-object v1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;->this$0:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    # getter for: Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->access$400(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->setContainerDefaults(Landroid/content/Context;)V

    .line 273
    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :cond_1
    return-void
.end method
