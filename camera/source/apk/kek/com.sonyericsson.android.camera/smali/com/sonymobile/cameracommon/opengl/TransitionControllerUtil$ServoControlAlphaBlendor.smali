.class public Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;
.super Ljava/lang/Object;
.source "TransitionControllerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServoControlAlphaBlendor"
.end annotation


# instance fields
.field private mActualAlpha:F

.field private final mGainP:F

.field private final mInitialAlpha:F

.field private mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

.field private mTargetAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "initialAlpha"    # F
    .param p2, "gainP"    # F

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

    .line 514
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mInitialAlpha:F

    .line 515
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->resetActualAlpha()V

    .line 516
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mInitialAlpha:F

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTargetAlpha:F

    .line 518
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mGainP:F

    .line 519
    return-void
.end method


# virtual methods
.method public resetActualAlpha()V
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mInitialAlpha:F

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    .line 530
    return-void
.end method

.method public setTargetElement(Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;)V
    .locals 0
    .param p1, "target"    # Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

    .line 523
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 548
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTargetAlpha:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    sub-float v0, v1, v2

    .line 549
    .local v0, "dif":F
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mGainP:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    .line 551
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    invoke-interface {v1, v2}, Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;->setAlpha(F)V

    .line 552
    return-void
.end method

.method public updateTargetAlpha(F)V
    .locals 0
    .param p1, "targetAlpha"    # F

    .prologue
    .line 538
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTargetAlpha:F

    .line 539
    return-void
.end method
