.class public Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
.super Landroid/widget/RelativeLayout;
.source "Zoombar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/zoombar/Zoombar$2;,
        Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;
    }
.end annotation


# static fields
.field public static final DELAY_ZOOMBAR_HIDE:I = 0x3e8

.field public static final MIN_VALUE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private SRZ_LIMIT_POSITION:F

.field private mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

.field private final mHideEvent:Ljava/lang/Runnable;

.field private mLastMaxValue:I

.field private mLastValue:I

.field private mMaxPosition:Landroid/graphics/Point;

.field private mMinPosition:Landroid/graphics/Point;

.field private mThumbBase:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastMaxValue:I

    .line 51
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMinPosition:Landroid/graphics/Point;

    .line 52
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    .line 59
    sget-object v1, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->NORMAL:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    .line 62
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->SRZ_LIMIT_POSITION:F

    .line 275
    new-instance v1, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$1;-><init>(Lcom/sonyericsson/cameracommon/zoombar/Zoombar;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    .line 76
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 78
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->zoombar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->zoombar_indicator:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mThumbBase:Landroid/widget/RelativeLayout;

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->prepareMinMaxPositions()V

    .line 82
    return-void
.end method

.method private onZoomChanged(II)I
    .locals 3
    .param p1, "current"    # I
    .param p2, "maxDigital"    # I

    .prologue
    .line 154
    if-gez p1, :cond_0

    .line 155
    const/4 p1, 0x0

    .line 157
    :cond_0
    if-le p1, p2, :cond_1

    .line 158
    move p1, p2

    .line 161
    :cond_1
    iput p1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastValue:I

    .line 162
    iput p2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastMaxValue:I

    .line 166
    if-eqz p2, :cond_2

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMinPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p1

    div-int v0, v1, p2

    .line 173
    .local v0, "x":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mThumbBase:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 175
    return p1

    .line 169
    .end local v0    # "x":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "x":I
    goto :goto_0
.end method

.method private onZoomChangedWithSuperResolutionInternal(III)I
    .locals 4
    .param p1, "current"    # I
    .param p2, "maxSuperResolution"    # I
    .param p3, "maxDigital"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "visCurrent":I
    if-ge p1, p2, :cond_0

    .line 128
    int-to-float v1, p3

    iget v2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->SRZ_LIMIT_POSITION:F

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 137
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    move-result v1

    return v1

    .line 131
    :cond_0
    int-to-float v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->SRZ_LIMIT_POSITION:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-int v2, p3, p2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-int v2, p1, p2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, p3

    iget v3, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->SRZ_LIMIT_POSITION:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0
.end method

.method private prepareMinMaxPositions()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_padding_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMinPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_slider_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_thumb_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMinPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mThumbBase:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mThumbBase:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 206
    :cond_0
    return-void
.end method

.method private updateLookAndFeel()V
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$2;->$SwitchMap$com$sonyericsson$cameracommon$zoombar$Zoombar$Type:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 236
    :pswitch_0
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_zoom_bar_portrait_icn:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setBackgroundResource(I)V

    goto :goto_0

    .line 240
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_zoom_bar_clear_supported_dz_on_clear_work_portrait_icn:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setBackgroundResource(I)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 269
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setVisibility(I)V

    .line 273
    return-void
.end method

.method public hideDelayed()V
    .locals 4

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 259
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    :cond_0
    return-void
.end method

.method public initZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    .line 213
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onZoomChanged(III)I
    .locals 3
    .param p1, "current"    # I
    .param p2, "maxSuperResolution"    # I
    .param p3, "maxDigital"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "ret":I
    sget-object v1, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$2;->$SwitchMap$com$sonyericsson$cameracommon$zoombar$Zoombar$Type:[I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    return v0

    .line 109
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    move-result v0

    .line 110
    goto :goto_0

    .line 113
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChangedWithSuperResolutionInternal(III)I

    move-result v0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSensorOrientation(I)V
    .locals 3
    .param p1, "orient"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 216
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateLookAndFeel()V

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setPivotX(F)V

    .line 218
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setPivotY(F)V

    .line 220
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setRotation(F)V

    .line 228
    :goto_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastMaxValue:I

    if-ltz v0, :cond_0

    .line 229
    iget v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastValue:I

    iget v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastMaxValue:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    .line 231
    :cond_0
    return-void

    .line 223
    :cond_1
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setRotation(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 248
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setVisibility(I)V

    .line 252
    return-void
.end method

.method public updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateLookAndFeel()V

    .line 91
    return-void
.end method

.method public zoom(II)I
    .locals 1
    .param p1, "current_value"    # I
    .param p2, "max_value"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    move-result v0

    return v0
.end method
