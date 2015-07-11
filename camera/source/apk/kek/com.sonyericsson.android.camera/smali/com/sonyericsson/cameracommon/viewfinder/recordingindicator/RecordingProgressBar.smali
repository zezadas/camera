.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;
.super Landroid/widget/ImageView;
.source "RecordingProgressBar.java"


# instance fields
.field private mProgressBarWidth:I

.field private mProgressIcon:Landroid/graphics/drawable/Drawable;

.field private mProgressRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 30
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 30
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 30
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 43
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 81
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    sub-int v1, v3, v4

    .line 84
    .local v1, "left":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    .end local v1    # "left":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    add-int v2, v3, v4

    .line 89
    .local v2, "right":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_video_recording_progress_indicator_icn:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_constraint_progress_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 53
    return-void
.end method

.method public setProgress(II)V
    .locals 6
    .param p1, "progress"    # I
    .param p2, "limit"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "ratio":I
    if-eqz p2, :cond_0

    .line 65
    int-to-double v2, p1

    int-to-double v4, p2

    div-double/2addr v2, v4

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 68
    :cond_0
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->invalidate()V

    .line 70
    return-void
.end method
