.class Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;
.super Ljava/lang/Object;
.source "PreviewFrameGrabber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConvertYuvToJpegAndCallbackTask"
.end annotation


# instance fields
.field final mYuvData:[B

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;[B)V
    .locals 0
    .param p2, "yuvData"    # [B

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->mYuvData:[B

    .line 115
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->mYuvData:[B

    if-nez v3, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    const/4 v4, 0x0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->callbackCaptureToUiThread([B)V
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;[B)V

    .line 194
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v20, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 131
    .local v20, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    new-instance v2, Landroid/graphics/YuvImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->mYuvData:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mPreviewFormat:I
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$300(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameWidth:I
    invoke-static {v5}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameHeight:I
    invoke-static {v6}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 135
    .local v2, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v18, "jpegOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v19, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameWidth:I
    invoke-static {v8}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameHeight:I
    invoke-static {v9}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v10}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v10

    iget-object v10, v10, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v10, v10, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v11, ".JPG"

    sget-object v12, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    .line 160
    .local v19, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->convertYuvToJpegOutputStream(Landroid/graphics/YuvImage;Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    move-result-object v20

    .line 169
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_1

    .line 171
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :cond_1
    :goto_1
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_2

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->callbackCaptureToUiThread([B)V
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;[B)V

    .line 189
    :goto_2
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 190
    :catch_0
    move-exception v17

    .line 192
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 172
    .end local v17    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v17

    .line 173
    .restart local v17    # "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    sget-object v20, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_1

    .line 184
    .end local v17    # "e":Ljava/io/IOException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    const/4 v4, 0x0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->callbackCaptureToUiThread([B)V
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$200(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;[B)V

    goto :goto_2
.end method
