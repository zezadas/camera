.class abstract Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;
.super Ljava/lang/Object;
.source "Shooting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/Shooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CaptureRequest"
.end annotation


# instance fields
.field public final mIsFirstShot:Z

.field public mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/Shooting;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/Shooting;ZLcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 0
    .param p2, "isFirstShot"    # Z
    .param p3, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->mIsFirstShot:Z

    .line 148
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 149
    return-void
.end method


# virtual methods
.method public capture()V
    .locals 3

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->mIsFirstShot:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->this$0:Lcom/sonyericsson/android/camera/controller/Shooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Z)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 155
    :cond_0
    return-void
.end method

.method public abstract store([B)V
.end method
