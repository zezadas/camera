.class public Lcom/sonyericsson/cameracommon/utility/ViewUtility;
.super Ljava/lang/Object;
.source "ViewUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:F = 0.001f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getCenter(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p0, "p1"    # Landroid/graphics/Point;
    .param p1, "p2"    # Landroid/graphics/Point;

    .prologue
    .line 174
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getEstimatedRealScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v12, "window"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 71
    .local v11, "wm":Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 72
    .local v4, "disp":Landroid/view/Display;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 73
    .local v9, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 78
    iget v12, v9, Landroid/graphics/Point;->y:I

    iget v13, v9, Landroid/graphics/Point;->x:I

    if-ge v12, v13, :cond_1

    .line 79
    iget v1, v9, Landroid/graphics/Point;->x:I

    .line 80
    .local v1, "appWidth":I
    iget v0, v9, Landroid/graphics/Point;->y:I

    .line 87
    .local v0, "appHeight":I
    :goto_0
    const/4 v5, 0x0

    .line 88
    .local v5, "estimatedSize":Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    add-int v10, v1, v0

    .line 89
    .local v10, "smallestDiff":I
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->values()[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    move-result-object v2

    .local v2, "arr$":[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v8, v2, v6

    .line 90
    .local v8, "screen":Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->getWidth()I

    move-result v12

    sub-int v12, v1, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->getHeight()I

    move-result v13

    sub-int v13, v0, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int v3, v12, v13

    .line 92
    .local v3, "diff":I
    if-ge v3, v10, :cond_0

    .line 94
    move v10, v3

    .line 95
    move-object v5, v8

    .line 89
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "appHeight":I
    .end local v1    # "appWidth":I
    .end local v2    # "arr$":[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .end local v3    # "diff":I
    .end local v5    # "estimatedSize":Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "screen":Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .end local v10    # "smallestDiff":I
    :cond_1
    iget v1, v9, Landroid/graphics/Point;->y:I

    .line 83
    .restart local v1    # "appWidth":I
    iget v0, v9, Landroid/graphics/Point;->x:I

    .restart local v0    # "appHeight":I
    goto :goto_0

    .line 99
    .restart local v2    # "arr$":[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .restart local v5    # "estimatedSize":Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v10    # "smallestDiff":I
    :cond_2
    if-nez v5, :cond_3

    .line 100
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "getEstimatedRealScreenRect():[Not supported screen size.]"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 104
    :cond_3
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->getAsRect()Landroid/graphics/Rect;

    move-result-object v12

    return-object v12
.end method

.method public static getPixel(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 16
    const/4 v2, 0x0

    .line 19
    .local v2, "ret":Z
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 20
    .local v0, "locationOfView":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    aget v3, v0, v5

    aget v4, v0, v7

    aget v5, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 27
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 29
    return v2
.end method

.method public static isSimilarAspect(FF)Z
    .locals 2
    .param p0, "aspect1"    # F
    .param p1, "aspect2"    # F

    .prologue
    .line 152
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimilarAspect(IIII)Z
    .locals 6
    .param p0, "width1"    # I
    .param p1, "height1"    # I
    .param p2, "width2"    # I
    .param p3, "height2"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 134
    if-lt p0, v2, :cond_0

    if-lt p1, v2, :cond_0

    if-lt p2, v2, :cond_0

    if-ge p3, v2, :cond_2

    :cond_0
    move v2, v3

    .line 140
    :cond_1
    :goto_0
    return v2

    .line 137
    :cond_2
    int-to-float v4, p0

    int-to-float v5, p1

    div-float v0, v4, v5

    .line 138
    .local v0, "aspect1":F
    int-to-float v4, p2

    int-to-float v5, p3

    div-float v1, v4, v5

    .line 140
    .local v1, "aspect2":F
    sub-float v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-lez v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public static isSimilarAspectRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "rect1"    # Landroid/graphics/Rect;
    .param p1, "rect2"    # Landroid/graphics/Rect;

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->isSimilarAspect(IIII)Z

    move-result v0

    return v0
.end method
