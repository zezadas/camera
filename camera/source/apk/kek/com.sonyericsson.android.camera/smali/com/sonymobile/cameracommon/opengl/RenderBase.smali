.class public abstract Lcom/sonymobile/cameracommon/opengl/RenderBase;
.super Ljava/lang/Object;
.source "RenderBase.java"


# static fields
.field protected static final FLOAT_SIZE_IN_BYTE:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mGlobalMatrix:[F

.field private mIsVisible:Z

.field protected mRootView:Landroid/view/View;

.field protected mSequencedLocalMatrix:[F


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    .line 27
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    .line 30
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mIsVisible:Z

    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 47
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getHeightNorm()F
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getLocalGlobalMatrix()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 115
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 116
    .local v0, "childrenGM":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 119
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 120
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 122
    return-object v0
.end method

.method protected getWidthNorm()F
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mIsVisible:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mContext:Landroid/content/Context;

    .line 151
    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    .line 152
    return-void
.end method

.method public abstract render()V
.end method

.method public rotate(FFF)V
    .locals 1
    .param p1, "rotRadX"    # F
    .param p2, "rotRadY"    # F
    .param p3, "rotRadZ"    # F

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->rotate([FFFF)V

    .line 176
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->scale([FFFF)V

    .line 188
    return-void
.end method

.method public setGlobalMatrix([F)V
    .locals 2
    .param p1, "matrix"    # [F

    .prologue
    .line 102
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    .line 105
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 106
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mIsVisible:Z

    .line 135
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "transX"    # F
    .param p2, "transY"    # F
    .param p3, "transZ"    # F

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->translate([FFFF)V

    .line 164
    return-void
.end method

.method public updateRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    .line 55
    return-void
.end method
