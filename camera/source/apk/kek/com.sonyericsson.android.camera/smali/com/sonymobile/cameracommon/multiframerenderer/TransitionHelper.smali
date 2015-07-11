.class public abstract Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;
.super Ljava/lang/Object;
.source "TransitionHelper.java"


# instance fields
.field private mDurationMills:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsActive:Z

.field private mStartTime:J


# direct methods
.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "durationMillis"    # J
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mStartTime:J

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mIsActive:Z

    .line 44
    long-to-float v0, p1

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mDurationMills:F

    .line 45
    iput-object p3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 46
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mStartTime:J

    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->update()V

    .line 83
    return-void
.end method

.method protected abstract apply(F)V
.end method

.method public changeDuration(F)V
    .locals 0
    .param p1, "durationMillis"    # F

    .prologue
    .line 132
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mDurationMills:F

    .line 133
    return-void
.end method

.method protected getCurrentInterpolation()F
    .locals 6

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mDurationMills:F

    div-float v1, v2, v3

    .line 122
    .local v1, "t":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 123
    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 128
    .local v0, "interpolation":F
    return v0
.end method

.method protected getLinearInterpolation(FFF)F
    .locals 1
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "interpolation"    # F

    .prologue
    .line 117
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method protected getLinearInterpolation(IIF)I
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "interpolation"    # F

    .prologue
    .line 104
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    int-to-float v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mIsActive:Z

    return v0
.end method

.method protected abstract onFinish()V
.end method

.method public start()V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mStartTime:J

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mIsActive:Z

    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->update()V

    .line 75
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 52
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mIsActive:Z

    if-eqz v1, :cond_1

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "finished":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mDurationMills:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->getCurrentInterpolation()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->apply(F)V

    .line 61
    if-eqz v0, :cond_1

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->mIsActive:Z

    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/TransitionHelper;->onFinish()V

    .line 66
    .end local v0    # "finished":Z
    :cond_1
    return-void
.end method
