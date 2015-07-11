.class Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;
.super Ljava/lang/Object;
.source "ContentPallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;->onClick(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    .line 268
    :cond_0
    return-void
.end method
