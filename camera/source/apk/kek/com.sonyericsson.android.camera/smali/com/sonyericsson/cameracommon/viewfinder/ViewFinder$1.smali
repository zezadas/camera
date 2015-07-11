.class Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 1
    .param p1, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->access$000(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->viewContent(Landroid/app/Activity;)V

    .line 342
    :cond_0
    return-void
.end method
