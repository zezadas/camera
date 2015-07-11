.class public Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlRotator;
.super Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;
.source "TransitionControllerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeControlRotator"
.end annotation


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "fromX"    # F
    .param p2, "fromY"    # F
    .param p3, "fromZ"    # F
    .param p4, "toX"    # F
    .param p5, "toY"    # F
    .param p6, "toZ"    # F

    .prologue
    .line 149
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;-><init>(FFFFFF)V

    .line 150
    return-void
.end method


# virtual methods
.method public bridge synthetic setFromCondition(FFF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # F
    .param p3, "x2"    # F

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->setFromCondition(FFF)V

    return-void
.end method

.method public bridge synthetic setTargetRenderBase(Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->setTargetRenderBase(Lcom/sonymobile/cameracommon/opengl/RenderBase;)V

    return-void
.end method

.method public bridge synthetic setToCondition(FFF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # F
    .param p3, "x2"    # F

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->setToCondition(FFF)V

    return-void
.end method

.method public update(F)V
    .locals 5
    .param p1, "progress"    # F

    .prologue
    .line 154
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 155
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlRotator;->mTarget:Lcom/sonymobile/cameracommon/opengl/RenderBase;

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlRotator;->mFromX:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlRotator;->mDifX:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlRotator;->mFromY:F

    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlRotator;->mDifY:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlRotator;->mFromZ:F

    iget v4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlRotator;->mDifZ:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->rotate(FFF)V

    .line 161
    return-void
.end method
