.class Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;
.super Ljava/lang/Object;
.source "FaceIdentificationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestTask"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mYuvByteArray:[B

.field private final mYuvFormat:I

.field private final mYuvHeight:I

.field private final mYuvOrientation:I

.field private final mYuvWidth:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;[BIIIILjava/util/List;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;)V
    .locals 0
    .param p2, "yuvByteArray"    # [B
    .param p3, "yuvFormat"    # I
    .param p4, "yuvWidth"    # I
    .param p5, "yuvHeight"    # I
    .param p6, "yuvOrientation"    # I
    .param p8, "callback"    # Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIII",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;",
            ">;",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p7, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;>;"
    iput-object p1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvByteArray:[B

    .line 340
    iput p3, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvFormat:I

    .line 341
    iput p4, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvWidth:I

    .line 342
    iput p5, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvHeight:I

    .line 343
    iput p6, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvOrientation:I

    .line 344
    iput-object p7, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mRequestList:Ljava/util/List;

    .line 345
    iput-object p8, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mCallback:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;

    .line 346
    return-void
.end method

.method private eraseOldResultsInCache()V
    .locals 4

    .prologue
    .line 470
    iget-object v3, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mFaceIdVsCharacteristicCache:Ljava/util/Map;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$700(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 471
    .local v0, "cachedUuidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 472
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mFaceIdVsCharacteristicCache:Ljava/util/Map;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$700(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$FaceCharacteristic;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$FaceCharacteristic;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 483
    .end local v2    # "uuid":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private splitRequestsIntoResultsInCacheAndNonHitRequests(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;>;"
    .local p2, "hitList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    .local p3, "noHitList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;

    .line 494
    .local v2, "request":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;
    iget-object v3, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mFaceIdVsCharacteristicCache:Ljava/util/Map;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$700(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v2, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;->mUUid:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    new-instance v1, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;

    iget-object v4, v2, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;->mUUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mFaceIdVsCharacteristicCache:Ljava/util/Map;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$700(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, v2, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;->mUUid:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$FaceCharacteristic;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$FaceCharacteristic;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;->mRect:Landroid/graphics/Rect;

    invoke-direct {v1, v4, v3, v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 504
    .local v1, "oneResult":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
    .end local v1    # "oneResult":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;
    :cond_0
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    .end local v2    # "request":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->eraseOldResultsInCache()V

    .line 358
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v19, "resultListToClient":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v18, "requestListToService":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mRequestList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v5, v1, v2}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->splitRequestsIntoResultsInCacheAndNonHitRequests(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 368
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$1000(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$NotifyFaceIdentifiedTask;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mCallback:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;

    move-object/from16 v0, v19

    invoke-direct {v6, v7, v8, v0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$NotifyFaceIdentifiedTask;-><init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;Ljava/util/List;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    new-instance v4, Landroid/graphics/YuvImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvByteArray:[B

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvFormat:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvHeight:I

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 392
    .local v4, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 393
    .local v13, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvHeight:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6, v13}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 397
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 399
    .local v12, "jpegBytes":[B
    :try_start_0
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_1
    const/4 v13, 0x0

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsReleased:Z
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$100(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$402(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mResultListMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$500(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$400(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mCallbackMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$600(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$400(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mCallback:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v17, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;

    invoke-direct/range {v17 .. v17}, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;-><init>()V

    .line 424
    .local v17, "requestInfo":Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$400(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;->mRequestUuid:Ljava/lang/String;

    .line 425
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;->mJpgbinary:[B

    .line 426
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->mYuvOrientation:I

    move-object/from16 v0, v17

    iput v5, v0, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;->mAngle:I

    .line 429
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v15, "rectParamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam$RectParams;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;

    .line 432
    .local v16, "request":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;
    new-instance v14, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam$RectParams;

    invoke-direct {v14}, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam$RectParams;-><init>()V

    .line 434
    .local v14, "rectParams":Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam$RectParams;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;->mUUid:Ljava/lang/String;

    iput-object v5, v14, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam$RectParams;->mFaceUuid:Ljava/lang/String;

    .line 435
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;->mRect:Landroid/graphics/Rect;

    iput-object v5, v14, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam$RectParams;->mFaceRect:Landroid/graphics/Rect;

    .line 436
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 400
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "rectParams":Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam$RectParams;
    .end local v15    # "rectParamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam$RectParams;>;"
    .end local v16    # "request":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;
    .end local v17    # "requestInfo":Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;
    :catch_0
    move-exception v10

    .line 402
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 442
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v15    # "rectParamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam$RectParams;>;"
    .restart local v17    # "requestInfo":Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;
    :cond_2
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;->mRectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 446
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRemoteFaceRecognition:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$000(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mServiceCallback:Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognitionCallback;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$1100(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognitionCallback;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v5, v0, v6}, Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognition;->requestFaceRecognition(Lcom/sonymobile/photoanalyzer/service/FaceRecognitionParam;Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognitionCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 456
    :catch_1
    move-exception v10

    .line 457
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$1000(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$NotifyFaceIdentifiedTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mCallbackMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$600(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;
    invoke-static {v9}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$400(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v5, v9}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$NotifyFaceIdentifiedTask;-><init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mResultListMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$500(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$400(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mCallbackMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$600(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$400(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    const/4 v6, 0x0

    # setter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mRequestUUid:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$402(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$RequestTask;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    const/4 v6, 0x0

    # setter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mIsAlreadyRequested:Z
    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$802(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Z)Z

    goto/16 :goto_0
.end method
