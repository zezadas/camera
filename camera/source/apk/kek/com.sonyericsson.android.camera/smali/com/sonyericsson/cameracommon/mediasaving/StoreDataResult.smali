.class public Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
.super Ljava/lang/Object;
.source "StoreDataResult.java"


# instance fields
.field public final savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

.field public final storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 22
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    .line 28
    :goto_0
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .line 29
    return-void

    .line 25
    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mResultCode:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mTextId:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
