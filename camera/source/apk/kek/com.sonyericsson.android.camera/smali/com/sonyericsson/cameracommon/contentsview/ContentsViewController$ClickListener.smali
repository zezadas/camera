.class Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$1;

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    if-ne v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;->onClickThumbnailProgress()V

    .line 581
    :cond_0
    return-void
.end method
