.class Lcom/sonyericsson/android/camera/view/CameraWindow$1;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/CameraWindow;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/CameraWindow;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$1;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$1;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    # invokes: Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->access$400(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContent(ILandroid/net/Uri;)V

    .line 1325
    return-void
.end method
