.class Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$3;
.super Ljava/lang/Object;
.source "SmartCoverViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)V
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$3;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 3
    .param p1, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$3;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$500(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.coverapp.ACTION_COVER_MODE_ALBUM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1404
    return-void
.end method
