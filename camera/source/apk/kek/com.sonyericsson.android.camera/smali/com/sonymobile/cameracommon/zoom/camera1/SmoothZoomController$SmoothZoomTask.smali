.class Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;
.super Ljava/lang/Object;
.source "SmoothZoomController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmoothZoomTask"
.end annotation


# instance fields
.field private final mTargetZoom:I

.field private mTaskStartTimestampMillis:J

.field final synthetic this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;I)V
    .locals 2
    .param p2, "targetZoom"    # I

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->mTaskStartTimestampMillis:J

    .line 171
    iput p2, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->mTargetZoom:I

    .line 172
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 176
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomStartRequired:Z
    invoke-static {v7}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$100(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$200(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/hardware/Camera;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->mTaskStartTimestampMillis:J

    .line 181
    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$200(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 182
    .local v2, "camParam":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 185
    .local v0, "actZoom":I
    iget v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->mTargetZoom:I

    if-ge v0, v7, :cond_1

    .line 186
    add-int/lit8 v5, v0, 0x1

    .line 202
    .local v5, "nextTrg":I
    :goto_1
    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 203
    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$200(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 206
    new-instance v1, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;

    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    iget-object v8, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$200(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/hardware/Camera;

    move-result-object v8

    invoke-direct {v1, v7, v5, v12, v8}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;-><init>(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;IZLandroid/hardware/Camera;)V

    .line 207
    .local v1, "callbackTask":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mUiWorker:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$300(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->mTaskStartTimestampMillis:J

    sub-long/2addr v8, v10

    long-to-int v4, v8

    .line 212
    .local v4, "ellapsedTimeMillis":I
    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mZoomChangeInterval:I
    invoke-static {v7}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$400(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)I

    move-result v7

    sub-int v6, v7, v4

    .line 213
    .local v6, "sleepTimeMillis":I
    if-lez v6, :cond_0

    .line 215
    int-to-long v8, v6

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v1    # "callbackTask":Ljava/lang/Runnable;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "ellapsedTimeMillis":I
    .end local v5    # "nextTrg":I
    .end local v6    # "sleepTimeMillis":I
    :cond_1
    iget v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->mTargetZoom:I

    if-ge v7, v0, :cond_2

    .line 188
    add-int/lit8 v5, v0, -0x1

    .restart local v5    # "nextTrg":I
    goto :goto_1

    .line 193
    .end local v5    # "nextTrg":I
    :cond_2
    new-instance v1, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;

    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    iget v8, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->mTargetZoom:I

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v10}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$200(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/hardware/Camera;

    move-result-object v10

    invoke-direct {v1, v7, v8, v9, v10}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;-><init>(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;IZLandroid/hardware/Camera;)V

    .line 194
    .restart local v1    # "callbackTask":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mUiWorker:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$300(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    iget-object v7, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # setter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomStartRequired:Z
    invoke-static {v7, v12}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$102(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;Z)Z

    .line 224
    .end local v0    # "actZoom":I
    .end local v1    # "callbackTask":Ljava/lang/Runnable;
    .end local v2    # "camParam":Landroid/hardware/Camera$Parameters;
    :cond_3
    return-void

    .line 221
    :cond_4
    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SmoothZoomController : Camera is released."

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
