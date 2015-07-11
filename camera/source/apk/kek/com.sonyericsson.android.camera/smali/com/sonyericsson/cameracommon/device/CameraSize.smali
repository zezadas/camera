.class public Lcom/sonyericsson/cameracommon/device/CameraSize;
.super Ljava/lang/Object;
.source "CameraSize.java"


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.05

.field public static final MIN_RECORDING_DURATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraSize"

.field public static final VIDEO_MAX_SIZE:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSize(III)J
    .locals 4
    .param p0, "audioBitRate"    # I
    .param p1, "bitRate"    # I
    .param p2, "second"    # I

    .prologue
    .line 89
    add-int v0, p0, p1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertCameraSize(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    const/4 v3, 0x0

    .line 242
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static convertCameraSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p0, :cond_1

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    :cond_0
    return-object v1

    .line 250
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v1, "rectList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 252
    .local v2, "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_2

    .line 253
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/device/CameraSize;->convertCameraSize(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getAspectRatio(DD)I
    .locals 2
    .param p0, "width"    # D
    .param p2, "height"    # D

    .prologue
    .line 49
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p0

    div-double/2addr v0, p2

    double-to-int v0, v0

    return v0
.end method

.method public static getAspectRatio(Landroid/graphics/Rect;)I
    .locals 4
    .param p0, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getAspectRatio(DD)I

    move-result v0

    return v0
.end method

.method public static getAverageFileSize(II)J
    .locals 2
    .param p0, "audioBitRate"    # I
    .param p1, "bitRate"    # I

    .prologue
    .line 66
    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/device/CameraSize;->computeSize(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDispayHeightWithoutNavigationBar(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getDispayWidthWithoutNavigationBar(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static getIdealPictureRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "currentPictureRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    .line 95
    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x1020

    const/16 v2, 0xc18

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 98
    :sswitch_1
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xcc0

    const/16 v2, 0x990

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 101
    :sswitch_2
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x720 -> :sswitch_2
        0xc20 -> :sswitch_1
        0xf50 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getMinFileSize(II)J
    .locals 2
    .param p0, "audioBitRate"    # I
    .param p1, "bitRate"    # I

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/device/CameraSize;->computeSize(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOptimalPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .locals 16
    .param p0, "baseRect"    # Landroid/graphics/Rect;
    .param p1, "maxRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    move-object/from16 v3, p1

    .line 141
    .local v3, "optimalSize":Landroid/graphics/Rect;
    const v2, 0x7fffffff

    .line 142
    .local v2, "minDiff":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v12, v7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v14, v7

    div-double v8, v12, v14

    .line 143
    .local v8, "ratio":D
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 148
    .local v6, "previewSize":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-gt v7, v12, :cond_0

    .line 149
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-ne v7, v12, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-ne v7, v12, :cond_2

    .line 153
    move-object v3, v6

    .line 176
    .end local v6    # "previewSize":Landroid/graphics/Rect;
    :cond_1
    return-object v3

    .line 158
    .restart local v6    # "previewSize":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v12, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v14, v7

    div-double v4, v12, v14

    .line 160
    .local v4, "previewRatio":D
    sub-double v12, v8, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 161
    .local v10, "ratioDiff":D
    const-wide v12, 0x3fa999999999999aL    # 0.05

    cmpg-double v7, v10, v12

    if-gtz v7, :cond_0

    .line 162
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 164
    .local v1, "lengthDiff":I
    if-ge v1, v2, :cond_0

    .line 165
    move-object v3, v6

    .line 166
    move v2, v1

    goto :goto_0
.end method

.method public static getOptimalVideoSnapshotSize(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "videoSize"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "supportedSnapshotSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v1, 0x0

    .line 223
    .local v1, "optimalSize":Landroid/graphics/Rect;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 224
    .local v2, "size":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gt v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 226
    if-nez v1, :cond_1

    .line 227
    move-object v1, v2

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 232
    move-object v1, v2

    goto :goto_0

    .line 238
    .end local v2    # "size":Landroid/graphics/Rect;
    :cond_2
    return-object v1
.end method

.method public static getOptimalVideoSnapshotSizeFromCamerSizeList(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "videoSize"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .local p1, "supportedSnapshotSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v6, 0x0

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 213
    .local v2, "size":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getOptimalVideoSnapshotSize(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3
.end method

.method public static getVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "videoRect"    # Landroid/graphics/Rect;
    .param p1, "defaultRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getOptimalPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static isAspectRatioDifferent(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "currentRect"    # Landroid/graphics/Rect;
    .param p1, "newRect"    # Landroid/graphics/Rect;

    .prologue
    .line 197
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getAspectRatio(Landroid/graphics/Rect;)I

    move-result v0

    .line 198
    .local v0, "currentRatio":I
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getAspectRatio(Landroid/graphics/Rect;)I

    move-result v2

    .line 199
    .local v2, "newRatio":I
    const/4 v1, 0x0

    .line 200
    .local v1, "diff":Z
    if-eq v0, v2, :cond_0

    .line 201
    const/4 v1, 0x1

    .line 205
    :cond_0
    return v1
.end method
