.class Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;
.super Landroid/os/AsyncTask;
.source "ContentResolverUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncDeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

.field private final mUri:Landroid/net/Uri;

.field private final mWithMpo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZLcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "withMpo"    # Z
    .param p4, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mUri:Landroid/net/Uri;

    .line 41
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mWithMpo:Z

    .line 42
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .line 43
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mWithMpo:Z

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->deleteImageImpl(Landroid/content/Context;Landroid/net/Uri;Z)Z
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->access$000(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;->onDeleted(ZLandroid/net/Uri;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
