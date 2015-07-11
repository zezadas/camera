.class public Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;
.super Ljava/lang/Object;
.source "FaceDetectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$1;,
        Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;,
        Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static computeClosesDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 5
    .param p0, "faceRect"    # Landroid/graphics/Rect;
    .param p1, "centerPosition"    # Landroid/graphics/Rect;

    .prologue
    .line 121
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFaceFromDeviceToPreview(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 125
    .local v0, "faceRectPreview":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v1, v3, v4

    .line 126
    .local v1, "xDistance":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v2, v3, v4

    .line 130
    .local v2, "yDistance":I
    if-gez v1, :cond_0

    .line 131
    mul-int/lit8 v1, v1, -0x1

    .line 135
    :cond_0
    if-gez v2, :cond_1

    .line 136
    mul-int/lit8 v2, v2, -0x1

    .line 139
    :cond_1
    add-int v3, v1, v2

    return v3
.end method

.method public static createFaceIdentificationRequest(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Ljava/util/List;
    .locals 8
    .param p0, "detectionResult"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    const/4 v5, 0x0

    .line 194
    .local v5, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;>;"
    iget-object v6, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 195
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .restart local v5    # "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;>;"
    iget-object v6, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    .line 197
    .local v0, "extFace":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v6

    iget-object v7, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget-object v7, v7, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFaceFromDeviceToPreview(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 200
    .local v1, "faceRect":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget v6, v6, Landroid/hardware/Camera$Face;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 201
    .local v3, "id":Ljava/lang/Integer;
    new-instance v4, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;-><init>(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 205
    .local v4, "request":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v0    # "extFace":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    .end local v1    # "faceRect":Landroid/graphics/Rect;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/Integer;
    .end local v4    # "request":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;
    :cond_0
    return-object v5
.end method

.method private static createSortedDistanceList(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 8
    .param p0, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .param p1, "centerPosition"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 85
    if-nez p0, :cond_0

    move-object v5, v6

    .line 111
    :goto_0
    return-object v5

    .line 89
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    if-nez v7, :cond_1

    move-object v5, v6

    .line 90
    goto :goto_0

    .line 94
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v5, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;>;"
    const/4 v1, 0x0

    .line 98
    .local v1, "i":I
    iget-object v7, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    .line 100
    .local v0, "extFace":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    iget-object v7, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget-object v7, v7, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {v7, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->computeClosesDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 102
    .local v3, "tempDistance":I
    new-instance v4, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;

    invoke-direct {v4, v1, v3}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;-><init>(II)V

    .line 104
    .local v4, "tempItem":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    goto :goto_1

    .line 109
    .end local v0    # "extFace":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    .end local v3    # "tempDistance":I
    .end local v4    # "tempItem":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    :cond_2
    new-instance v7, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;

    invoke-direct {v7, v6}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;-><init>(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$1;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static dumpDistanceMapList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;>;"
    return-void
.end method

.method private static getFaceIdentifyNameByUuid(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "faceIdResultList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    const/4 v2, 0x0

    .line 68
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v2

    .line 72
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;

    .line 73
    .local v0, "faceIdResult":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;
    iget-object v3, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;->mUUid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;->mName:Ljava/lang/String;

    const-string v4, "NO NAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    iget-object v2, v0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFaceInformationList(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Landroid/graphics/Rect;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .locals 11
    .param p1, "faceDetectResultList"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .param p2, "centerPosition"    # Landroid/graphics/Rect;
    .param p3, "userSelectedUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;",
            "Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;"
        }
    .end annotation

    .prologue
    .local p0, "faceIdResultList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    const/4 v4, 0x0

    .line 255
    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-object v4

    .line 264
    :cond_1
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->createSortedDistanceList(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v5

    .line 267
    .local v5, "sortedDistanceList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;>;"
    if-eqz v5, :cond_0

    .line 276
    new-instance v4, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    invoke-direct {v4}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;-><init>()V

    .line 278
    .local v4, "resultList":Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    invoke-virtual {v4, p3}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->setUserTouchUuid(Ljava/lang/String;)V

    .line 281
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;

    .line 282
    .local v0, "distanceItem":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->getArrayIndex()I

    move-result v7

    .line 284
    .local v7, "tempIndex":I
    iget-object v9, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    .line 285
    .local v1, "extFace":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    iget-object v9, v1, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget v9, v9, Landroid/hardware/Camera$Face;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    .local v8, "uuid":Ljava/lang/String;
    invoke-static {p0, v8}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->getFaceIdentifyNameByUuid(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 290
    .local v6, "tempData":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    new-instance v6, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .end local v6    # "tempData":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    iget-object v9, v1, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget-object v9, v9, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v10, v1, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->smileScore:I

    invoke-direct {v6, v3, v8, v9, v10}, Lcom/sonyericsson/cameracommon/focusview/NamedFace;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;I)V

    .line 296
    .restart local v6    # "tempData":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->addNamedFace(Lcom/sonyericsson/cameracommon/focusview/NamedFace;)V

    goto :goto_1

    .line 299
    .end local v0    # "distanceItem":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    .end local v1    # "extFace":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "tempData":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .end local v7    # "tempIndex":I
    .end local v8    # "uuid":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->logFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 300
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->logFaceIdentificationResult(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static hasValidFaceId(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 375
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 376
    .local v2, "isSupport":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    .line 377
    .local v0, "face":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    iget-object v3, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget v3, v3, Landroid/hardware/Camera$Face;->id:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 379
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 383
    .end local v0    # "face":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    :cond_1
    return-object v2
.end method

.method public static isValidFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Z
    .locals 3
    .param p0, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "isValid":Z
    if-eqz p0, :cond_0

    .line 401
    iget-object v1, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->indexOfSelectedFace:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->indexOfSelectedFace:I

    if-ltz v1, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 406
    :cond_0
    return v0
.end method

.method public static logFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 7
    .param p0, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 143
    if-nez p0, :cond_1

    .line 144
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    const-string v5, "onFaceDetection: result is null"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void

    .line 148
    :cond_1
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFaceDetection: Number of faces: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFaceDetection: Selected index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "i":I
    iget-object v4, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    .line 154
    .local v0, "extFace":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExtFACE["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "logRecord":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget v5, v5, Landroid/hardware/Camera$Face;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.score = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget v5, v5, Landroid/hardware/Camera$Face;->score:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.leftEye = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget-object v5, v5, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.mouth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget-object v5, v5, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.rect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.rightEye = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SmileScore = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->smileScore:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto/16 :goto_0
.end method

.method public static logFaceIdentificationResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    if-nez p0, :cond_1

    .line 172
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    const-string v4, "onFaceDetection: resultList is null"

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    return-void

    .line 176
    :cond_1
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFaceIdentification: Size of list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;

    .line 179
    .local v2, "result":Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFaceIdentification: FACE["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Name  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFaceIdentification: FACE["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Rect  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFaceIdentification: FACE["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] UUid  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;->mUUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 186
    goto :goto_0
.end method

.method public static overwriteTaggedRectangle(Ljava/util/HashMap;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 9
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "faceList"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;",
            ")",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "rectangles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;>;"
    const/4 v7, 0x0

    .line 215
    .local v7, "returnRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    const/4 v6, 0x0

    .line 217
    .local v6, "oldUuid":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 220
    .local v5, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 222
    .local v4, "isFindKey":Z
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 223
    .local v1, "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    iget-object v8, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 224
    const/4 v4, 0x1

    .line 229
    .end local v1    # "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_2
    if-nez v4, :cond_0

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "returnRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    check-cast v7, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 231
    .restart local v7    # "returnRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    move-object v6, v5

    .line 236
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isFindKey":Z
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 238
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {p0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_4
    return-object v7
.end method

.method public static setUuidFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .locals 4
    .param p0, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 390
    const/4 v2, 0x0

    .line 391
    .local v2, "index":I
    iget-object v3, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    .line 392
    .local v0, "face":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    iget-object v3, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iput v2, v3, Landroid/hardware/Camera$Face;->id:I

    .line 393
    add-int/lit8 v2, v2, 0x1

    .line 394
    goto :goto_0

    .line 395
    .end local v0    # "face":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    :cond_0
    return-object p0
.end method

.method public static sortRectangles(Ljava/util/HashMap;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 8
    .param p1, "faceList"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;",
            "Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;",
            ")",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "rectangles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;>;"
    const/4 v4, 0x0

    .line 311
    .local v4, "topRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 312
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 316
    .local v2, "lastIndex":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 319
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 320
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v6

    iget-object v1, v6, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    .line 321
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getUserSelectedUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 314
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "lastIndex":I
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v2

    .restart local v2    # "lastIndex":I
    goto :goto_0

    .line 326
    .restart local v0    # "i":I
    .restart local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 327
    .local v3, "tempRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v3, :cond_0

    .line 328
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 332
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->bringToFront()V

    .line 333
    move-object v4, v3

    goto :goto_2

    .line 339
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "tempRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_3
    move v0, v2

    :goto_3
    if-ltz v0, :cond_7

    .line 340
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v6

    iget-object v1, v6, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    .line 341
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getUserSelectedUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 339
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 346
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 347
    .restart local v3    # "tempRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v3, :cond_4

    .line 348
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    if-nez v6, :cond_6

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 351
    :cond_6
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->bringToFront()V

    .line 352
    move-object v4, v3

    goto :goto_4

    .line 358
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "tempRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_7
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getUserSelectedUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceByUuid(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v5

    .line 359
    .local v5, "touchFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    if-eqz v5, :cond_8

    .line 360
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getUserSelectedUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 361
    .restart local v3    # "tempRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v3, :cond_8

    .line 362
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->bringToFront()V

    .line 363
    move-object v4, v3

    .line 367
    .end local v3    # "tempRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_8
    return-object v4
.end method
