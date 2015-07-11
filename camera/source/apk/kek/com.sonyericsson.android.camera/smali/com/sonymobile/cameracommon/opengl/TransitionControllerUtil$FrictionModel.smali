.class public Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;
.super Ljava/lang/Object;
.source "TransitionControllerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrictionModel"
.end annotation


# instance fields
.field private final mFrictionRate:F

.field private final mGravityAccel:F

.field private final mInitialVeloc:F

.field private mIsStopped:Z

.field private mLastPosit:F

.field private mLastVeloc:F

.field private final mStartTimestamp:J


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "frictionRate"    # F
    .param p2, "initialVeloc"    # F

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    const v0, 0x411ce80a

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mGravityAccel:F

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mLastPosit:F

    .line 575
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mLastVeloc:F

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mIsStopped:Z

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mStartTimestamp:J

    .line 590
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mFrictionRate:F

    .line 591
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mInitialVeloc:F

    .line 592
    return-void
.end method


# virtual methods
.method public getCurrentDistance()F
    .locals 10

    .prologue
    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mStartTimestamp:J

    sub-long v2, v6, v8

    .line 626
    .local v2, "diffTime":J
    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v4, v5, v6

    .line 629
    .local v4, "elapsedTime":F
    iget v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mFrictionRate:F

    const v6, 0x411ce80a

    mul-float v0, v5, v6

    .line 630
    .local v0, "curAccel":F
    const/4 v5, 0x0

    iget v6, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mInitialVeloc:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 631
    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v0, v5

    .line 635
    :cond_0
    iget v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mInitialVeloc:F

    mul-float v6, v0, v4

    add-float v1, v5, v6

    .line 636
    .local v1, "curVeloc":F
    iget v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mLastVeloc:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 638
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mIsStopped:Z

    .line 639
    iget v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mLastPosit:F

    .line 646
    :goto_0
    return v5

    .line 641
    :cond_1
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mLastVeloc:F

    .line 644
    iget v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mInitialVeloc:F

    mul-float/2addr v5, v4

    mul-float v6, v0, v4

    mul-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mLastPosit:F

    .line 646
    iget v5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mLastPosit:F

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$FrictionModel;->mIsStopped:Z

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method
