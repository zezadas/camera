.class public Lcom/sonyericsson/cameracommon/focusview/SmileScore;
.super Landroid/widget/ImageView;
.source "SmileScore.java"


# static fields
.field private static final GAUGE_BOTTOM_A:I = 0xb2

.field private static final GAUGE_BOTTOM_B:I = 0xe5

.field private static final GAUGE_BOTTOM_G:I = 0xb5

.field private static final GAUGE_BOTTOM_R:I = 0x33

.field private static final GAUGE_TOP_A:I = 0xb2

.field private static final GAUGE_TOP_B:I = 0xcc

.field private static final GAUGE_TOP_G:I = 0x99

.field private static final GAUGE_TOP_R:I = 0x0

.field public static final SMILE_MAX:I = 0x64

.field public static final SMILE_MIN:I = 0x0

.field private static final SMILE_UNIT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SmileScore"

.field private static final sColorPaints:[Landroid/graphics/Paint;


# instance fields
.field private mFrameHeight:I

.field private mIndicatorStep:F

.field private mIndicatorWidth:I

.field private mSmileScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "bitA":F
    const v3, 0x3f028f5c    # 0.51f

    .line 54
    .local v3, "bitR":F
    const v2, 0x3e8f5c29    # 0.28f

    .line 55
    .local v2, "bitG":F
    const/high16 v1, 0x3e800000    # 0.25f

    .line 57
    .local v1, "bitB":F
    new-array v6, v13, [Landroid/graphics/Paint;

    sput-object v6, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    .line 58
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v13, :cond_0

    .line 59
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v6, 0x43320000    # 178.0f

    int-to-float v7, v4

    mul-float/2addr v7, v12

    add-float/2addr v6, v7

    float-to-int v6, v6

    const v7, 0x3f028f5c    # 0.51f

    int-to-float v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v7, v12

    float-to-int v7, v7

    const/high16 v8, 0x43190000    # 153.0f

    const v9, 0x3e8f5c29    # 0.28f

    int-to-float v10, v4

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x434c0000    # 204.0f

    const/high16 v10, 0x3e800000    # 0.25f

    int-to-float v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 65
    sget-object v6, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aput-object v5, v6, v4

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method private getSmileScoreRect(FFFF)Landroid/graphics/RectF;
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 178
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 180
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 197
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    invoke-virtual {v0, p2, p1, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 186
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 187
    iput p4, v0, Landroid/graphics/RectF;->left:F

    .line 188
    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 191
    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 192
    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 193
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_padding_left:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 140
    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_frame_padding_left:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 142
    .local v5, "paddingLeft_frame":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_frame_padding_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 145
    .local v3, "paddingBottom_frame":I
    add-int v8, v4, v5

    int-to-float v2, v8

    .line 146
    .local v2, "left":F
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    sub-int/2addr v8, v3

    int-to-float v7, v8

    .line 147
    .local v7, "top":F
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v8, v8

    add-float v6, v2, v8

    .line 148
    .local v6, "right":F
    const/4 v0, 0x0

    .line 150
    .local v0, "bottom":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v8, 0x64

    if-ge v1, v8, :cond_0

    .line 151
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v8, v1, :cond_1

    .line 170
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 172
    return-void

    .line 156
    :cond_1
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float v0, v7, v8

    .line 157
    int-to-float v8, v3

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    .line 159
    invoke-direct {p0, v2, v7, v6, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v9, v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 167
    :cond_2
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    sub-float/2addr v7, v8

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isForLandscape()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_frame_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    .line 115
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    .line 118
    return-void
.end method

.method public setSmileScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    .line 129
    return-void
.end method
