.class public Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# static fields
.field private static final ROTATION_FIRSTHALF_END_DEGREE:I = -0x5a

.field private static final ROTATION_FIRSTHALF_START_DEGREE:I = 0x0

.field private static final ROTATION_LASTHALF_END_DEGREE:I = 0x0

.field private static final ROTATION_LASTHALF_START_DEGREE:I = 0x5a


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mFromDegrees:F

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 101
    iput p1, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mFromDegrees:F

    .line 102
    iput p2, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mToDegrees:F

    .line 103
    iput p3, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mCenterX:F

    .line 104
    iput p4, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mCenterY:F

    .line 105
    return-void
.end method

.method public static newRotateFirstHalfInstance(FF)Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;
    .locals 3
    .param p0, "centerX"    # F
    .param p1, "centerY"    # F

    .prologue
    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method public static newRotateLastHalfInstance(FF)Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;
    .locals 3
    .param p0, "centerX"    # F
    .param p1, "centerY"    # F

    .prologue
    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 116
    iget v4, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mFromDegrees:F

    .line 117
    .local v4, "fromDegrees":F
    iget v6, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 120
    .local v3, "degrees":F
    iget v1, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mCenterX:F

    .line 121
    .local v1, "centerX":F
    iget v2, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mCenterY:F

    .line 122
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 123
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 125
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 126
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 127
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 129
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 130
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 131
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 111
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 112
    return-void
.end method
