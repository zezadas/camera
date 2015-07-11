.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

.field final synthetic val$originalUri:Landroid/net/Uri;

.field final synthetic val$requestId:I

.field final synthetic val$resultCode:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;IZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 5588
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iput p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->val$requestId:I

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->val$resultCode:Z

    iput-object p4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->val$originalUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5591
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    monitor-enter v1

    .line 5592
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5593
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->val$requestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 5594
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->val$resultCode:Z

    if-eqz v0, :cond_1

    .line 5595
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->val$requestId:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->val$originalUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContent(ILandroid/net/Uri;)V

    .line 5607
    :cond_0
    :goto_0
    monitor-exit v1

    .line 5608
    return-void

    .line 5599
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 5600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_0

    .line 5607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5603
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 5604
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
