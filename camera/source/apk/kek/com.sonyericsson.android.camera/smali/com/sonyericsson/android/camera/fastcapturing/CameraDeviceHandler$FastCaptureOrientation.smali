.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;
.super Landroid/view/OrientationEventListener;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastCaptureOrientation"
.end annotation


# instance fields
.field private mOrientation:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2692
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .line 2693
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 2689
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    .line 2694
    return-void
.end method


# virtual methods
.method getOrientation()I
    .locals 3

    .prologue
    .line 2703
    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v0

    .line 2705
    .local v0, "normOrientation":I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$3300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    packed-switch v2, :pswitch_data_0

    .line 2713
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$3300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, v0

    rem-int/lit16 v1, v2, 0x168

    .line 2716
    .local v1, "orientation":I
    :goto_0
    return v1

    .line 2707
    .end local v1    # "orientation":I
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$3300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, v0

    rem-int/lit16 v1, v2, 0x168

    .line 2708
    .restart local v1    # "orientation":I
    goto :goto_0

    .line 2710
    .end local v1    # "orientation":I
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$3300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v2, v2, 0x168

    sub-int/2addr v2, v0

    rem-int/lit16 v1, v2, 0x168

    .line 2711
    .restart local v1    # "orientation":I
    goto :goto_0

    .line 2705
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 2698
    iput p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    .line 2699
    return-void
.end method
