.class public Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;
.super Ljava/lang/Object;
.source "PreloadThumbnail.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mIsAnimationEnd:Z

.field private mIsContentCreated:Z

.field private mRequestId:I

.field private final mThumbnail:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Landroid/view/View;)V
    .locals 2
    .param p1, "contentsViewController"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentsViewController should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    if-nez p2, :cond_1

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Thumbnail view should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 35
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    .line 36
    return-void
.end method


# virtual methods
.method public disableClick()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public enableClick()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mRequestId:I

    return v0
.end method

.method public getThumbnailView()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsAnimationEnd:Z

    .line 83
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsContentCreated:Z

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeEarlyThumbnailView()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 89
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 96
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsAnimationEnd:Z

    .line 103
    return-void
.end method

.method public onContentCreated()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsContentCreated:Z

    .line 72
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsAnimationEnd:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeEarlyThumbnailView()V

    .line 75
    :cond_0
    return-void
.end method

.method public prepareAnimation()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsContentCreated:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsAnimationEnd:Z

    .line 53
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "requestId"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mRequestId:I

    .line 44
    return-void
.end method
