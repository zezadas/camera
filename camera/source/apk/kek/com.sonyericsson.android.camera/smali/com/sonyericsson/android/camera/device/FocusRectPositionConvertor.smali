.class public Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;
.super Ljava/lang/Object;
.source "FocusRectPositionConvertor.java"


# static fields
.field private static final FOCUS_RECTS_PATTERN:Ljava/util/regex/Pattern;

.field public static final MULTIFOCUS_RECT_HEIGHT_RATIO:F = 0.14f

.field public static final MULTIFOCUS_RECT_WIDTH_RATIO:F = 0.11f

.field public static final MULTIFOCUS_RECT_XDIST_RATIO:F = 0.22f

.field public static final MULTIFOCUS_RECT_YDIST_RATIO:F = 0.14f

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->TAG:Ljava/lang/String;

    .line 118
    const-string v0, "\\( *([0-9]+) *, *([0-9]+) *, *([0-9]+) *, *([0-9]+) *\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->FOCUS_RECTS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToPreview(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 14
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "previewSize"    # Landroid/graphics/Rect;
    .param p2, "maxPictureSize"    # Landroid/graphics/Rect;

    .prologue
    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float v5, v11, v12

    .line 193
    .local v5, "srcAspect":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float v0, v11, v12

    .line 195
    .local v0, "destAspect":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v2, v11

    .line 196
    .local v2, "destWidth":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v1, v11

    .line 203
    .local v1, "destHeight":F
    cmpl-float v11, v0, v5

    if-lez v11, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v11, v12

    .line 232
    .local v7, "srcToDestRatio":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float v6, v11, v7

    .line 234
    .local v6, "srcHeight":F
    iget v11, p0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v7

    float-to-int v4, v11

    .line 236
    .local v4, "left":I
    iget v11, p0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v7

    sub-float v12, v6, v1

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-int v9, v11

    .line 238
    .local v9, "top":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v7

    float-to-int v10, v11

    .line 240
    .local v10, "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v7

    float-to-int v3, v11

    .line 243
    .local v3, "height":I
    invoke-static {v4, v9, v10, v3}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getRect(IIII)Landroid/graphics/Rect;

    move-result-object v11

    .line 284
    .end local v6    # "srcHeight":F
    :goto_0
    return-object v11

    .line 272
    .end local v3    # "height":I
    .end local v4    # "left":I
    .end local v7    # "srcToDestRatio":F
    .end local v9    # "top":I
    .end local v10    # "width":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v11, v12

    .line 273
    .restart local v7    # "srcToDestRatio":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float v8, v11, v7

    .line 275
    .local v8, "srcWidth":F
    iget v11, p0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v7

    sub-float v12, v8, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-int v4, v11

    .line 277
    .restart local v4    # "left":I
    iget v11, p0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v7

    float-to-int v9, v11

    .line 279
    .restart local v9    # "top":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v7

    float-to-int v10, v11

    .line 281
    .restart local v10    # "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v7

    float-to-int v3, v11

    .line 284
    .restart local v3    # "height":I
    invoke-static {v4, v9, v10, v3}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getRect(IIII)Landroid/graphics/Rect;

    move-result-object v11

    goto :goto_0
.end method

.method public static getFixedMultiFocusRectangles(Landroid/graphics/Rect;)[Landroid/graphics/RectF;
    .locals 15
    .param p0, "previewSize"    # Landroid/graphics/Rect;

    .prologue
    const/4 v14, 0x0

    const v10, 0x3e0f5c29    # 0.14f

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    .line 76
    const/high16 v1, 0x3f400000    # 0.75f

    .line 77
    .local v1, "baseAspect":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 78
    .local v2, "currentAspect":F
    const v4, 0x3de147ae    # 0.11f

    .line 79
    .local v4, "focusW":F
    div-float v8, v10, v2

    mul-float v3, v8, v1

    .line 80
    .local v3, "focusH":F
    const v5, 0x3e6147ae    # 0.22f

    .line 81
    .local v5, "focusX":F
    div-float v8, v10, v2

    mul-float v6, v8, v1

    .line 83
    .local v6, "focusY":F
    new-instance v0, Landroid/graphics/RectF;

    div-float v8, v4, v11

    sub-float v8, v13, v8

    div-float v9, v3, v11

    sub-float v9, v13, v9

    div-float v10, v4, v11

    add-float/2addr v10, v13

    div-float v11, v3, v11

    add-float/2addr v11, v13

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    .local v0, "base":Landroid/graphics/RectF;
    const/4 v8, 0x5

    new-array v7, v8, [Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v8, v7, v14

    const/4 v8, 0x1

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v9, v7, v8

    .line 97
    .local v7, "relativeRects":[Landroid/graphics/RectF;
    aget-object v8, v7, v14

    neg-float v9, v6

    invoke-virtual {v8, v12, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 98
    const/4 v8, 0x1

    aget-object v8, v7, v8

    neg-float v9, v5

    invoke-virtual {v8, v9, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 99
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-virtual {v8, v12, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 100
    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-virtual {v8, v5, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 101
    const/4 v8, 0x4

    aget-object v8, v7, v8

    invoke-virtual {v8, v12, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 102
    return-object v7
.end method

.method public static final getFocusAreasOnPreview(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 7
    .param p0, "focusRects"    # Ljava/lang/String;
    .param p1, "previewSize"    # Landroid/graphics/Rect;
    .param p2, "maxPictureSize"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget-object v3, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->FOCUS_RECTS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 140
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 160
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-static {v1, p1, p2}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->convertToPreview(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-object v2
.end method

.method public static getMaxPictureSize(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor$1;-><init>()V

    .line 173
    .local v0, "sizeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/graphics/Rect;>;"
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    return-object v1
.end method

.method public static getMultiFocusRectangles(I)[Landroid/graphics/RectF;
    .locals 16
    .param p0, "cameraId"    # I

    .prologue
    .line 27
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v6

    .line 31
    .local v6, "previewSize":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 32
    .local v9, "useDummyData":Z
    if-eqz v9, :cond_1

    .line 33
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getFixedMultiFocusRectangles(Landroid/graphics/Rect;)[Landroid/graphics/RectF;

    move-result-object v7

    .line 63
    :cond_0
    :goto_0
    return-object v7

    .line 36
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v4

    .line 37
    .local v4, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v10, v4, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_MULTI_FOCUS_AREAS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 38
    .local v1, "focusCount":I
    if-lez v1, :cond_3

    .line 39
    iget-object v10, v4, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MULTI_FOCUS_RECTS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    .local v2, "focusRects":Ljava/lang/String;
    iget-object v10, v4, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getMaxPictureSize(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v5

    .line 41
    .local v5, "maxPictureSize":Landroid/graphics/Rect;
    invoke-static {v2, v6, v5}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getFocusAreasOnPreview(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "absoluteRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 45
    sget-object v10, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Camera doesn\'t have \'sony-multi-focus-rects\' parameter, but \'sony-max-multi-focus-num\' is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getFixedMultiFocusRectangles(Landroid/graphics/Rect;)[Landroid/graphics/RectF;

    move-result-object v7

    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v7, v10, [Landroid/graphics/RectF;

    .line 51
    .local v7, "relativeRects":[Landroid/graphics/RectF;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 53
    .local v8, "src":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget v12, v8, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    iget v13, v8, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v10, v7, v3

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v0    # "absoluteRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v2    # "focusRects":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "maxPictureSize":Landroid/graphics/Rect;
    .end local v7    # "relativeRects":[Landroid/graphics/RectF;
    .end local v8    # "src":Landroid/graphics/Rect;
    :cond_3
    sget-object v10, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->TAG:Ljava/lang/String;

    const-string v11, "Camera doesn\'t have \'sony-max-multi-focus-num\'."

    invoke-static {v10, v11}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getFixedMultiFocusRectangles(Landroid/graphics/Rect;)[Landroid/graphics/RectF;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private static getRect(IIII)Landroid/graphics/Rect;
    .locals 3
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 289
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p0, p2

    add-int v2, p1, p3

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 296
    .local v0, "rect":Landroid/graphics/Rect;
    return-object v0
.end method

.method public static getSingleFocusRectangle()Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 110
    const v3, 0x3e570a3d    # 0.21f

    .line 111
    .local v3, "width":F
    const v0, 0x3e23d70a    # 0.16f

    .line 112
    .local v0, "height":F
    sub-float v4, v5, v3

    div-float v1, v4, v6

    .line 113
    .local v1, "left":F
    sub-float v4, v5, v0

    div-float v2, v4, v6

    .line 114
    .local v2, "top":F
    new-instance v4, Landroid/graphics/RectF;

    add-float v5, v1, v3

    add-float v6, v2, v0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method
