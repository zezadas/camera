.class Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinateUtil;
.super Ljava/lang/Object;
.source "LayoutCoordinateUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static coodinatePosition(ILandroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 10
    .param p0, "orientation"    # I
    .param p1, "target"    # Landroid/view/View;
    .param p2, "targetRect"    # Landroid/graphics/Rect;
    .param p3, "rotationSourceArea"    # Landroid/graphics/Rect;
    .param p4, "rotationDestPosition"    # Landroid/graphics/Point;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 78
    iget v6, p2, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->left:I

    sub-int v4, v6, v7

    .line 79
    .local v4, "xOnRotationSourceArea":I
    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    sub-int v5, v6, v7

    .line 82
    .local v5, "yOnRotationSourceArea":I
    invoke-virtual {p1, v4}, Landroid/view/View;->setLeft(I)V

    .line 83
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, Landroid/view/View;->setRight(I)V

    .line 84
    invoke-virtual {p1, v5}, Landroid/view/View;->setTop(I)V

    .line 85
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1, v6}, Landroid/view/View;->setBottom(I)V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotY(F)V

    .line 90
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotation(F)V

    .line 92
    const/4 v6, 0x1

    if-ne p0, v6, :cond_0

    .line 95
    iget v0, p4, Landroid/graphics/Point;->x:I

    .line 96
    .local v0, "offsetX":I
    iget v6, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int v1, v6, v7

    .line 99
    .local v1, "offsetY":I
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 100
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 105
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-direct {v2, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Rect;->offset(II)V

    move-object v3, v2

    .line 118
    .end local v2    # "rect":Landroid/graphics/Rect;
    .local v3, "rect":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 110
    .end local v0    # "offsetX":I
    .end local v1    # "offsetY":I
    .end local v3    # "rect":Ljava/lang/Object;
    :cond_0
    iget v0, p4, Landroid/graphics/Point;->x:I

    .line 111
    .restart local v0    # "offsetX":I
    iget v1, p4, Landroid/graphics/Point;->y:I

    .line 112
    .restart local v1    # "offsetY":I
    int-to-float v6, v0

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 113
    int-to-float v6, v1

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 116
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v2, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    .restart local v2    # "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    move-object v3, v2

    .line 118
    .restart local v3    # "rect":Ljava/lang/Object;
    goto :goto_0
.end method
