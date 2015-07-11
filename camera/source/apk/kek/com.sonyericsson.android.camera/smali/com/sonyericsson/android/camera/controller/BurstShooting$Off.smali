.class Lcom/sonyericsson/android/camera/controller/BurstShooting$Off;
.super Ljava/lang/Object;
.source "BurstShooting.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/BurstShooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Off"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/BurstShooting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting$1;

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$Off;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public getSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public requestContinue()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method
