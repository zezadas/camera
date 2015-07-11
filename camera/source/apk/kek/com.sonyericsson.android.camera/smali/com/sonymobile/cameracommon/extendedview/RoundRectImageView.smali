.class public Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
.super Landroid/widget/ImageView;
.source "RoundRectImageView.java"


# instance fields
.field private mClipPath:Landroid/graphics/Path;

.field private mDstRect:Landroid/graphics/RectF;

.field private mRadiusSet:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    .line 42
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->initialize()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    .line 53
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->initialize()V

    .line 54
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 65
    return-void
.end method

.method private updateClipPath()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 117
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 118
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 99
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->updateClipPath()V

    .line 102
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    aput p1, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->updateClipPath()V

    .line 79
    return-void
.end method

.method public setRadius(FFFF)V
    .locals 2
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomRight"    # F
    .param p4, "bottomLeft"    # F

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 83
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 84
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 85
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x4

    aput p3, v0, v1

    .line 87
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x5

    aput p3, v0, v1

    .line 88
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x6

    aput p4, v0, v1

    .line 89
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x7

    aput p4, v0, v1

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->updateClipPath()V

    .line 92
    return-void
.end method
