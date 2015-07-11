.class public Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;
.super Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;
.source "DetectedFaceRectangles.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$1;,
        Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

.field private mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

.field private mFocusedRectangleResId:I

.field private final mRectangles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;-><init>(Landroid/view/ViewGroup;)V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    .line 79
    return-void
.end method

.method private addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "preInflateView"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 129
    :goto_0
    return-void

    .line 109
    :cond_0
    if-eqz p3, :cond_1

    .line 111
    move-object v0, p3

    .line 119
    .local v0, "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 125
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    .end local v0    # "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_1
    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .restart local v0    # "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    goto :goto_1
.end method

.method private logRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 245
    sget-object v0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face position("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method private logTaggedRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V
    .locals 3
    .param p1, "rect"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .prologue
    .line 250
    sget-object v0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rectangle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectangleLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectangleTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectangleWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectangleHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method private startAnimation(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;I)V
    .locals 1
    .param p1, "rectangle"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .param p2, "orientation"    # I

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->startRectangleAnimation(I)V

    goto :goto_0
.end method

.method private updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;I)V
    .locals 4
    .param p1, "rectangle"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .param p2, "namedFace"    # Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .param p3, "orientation"    # I

    .prologue
    .line 216
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 219
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v2, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-eq v1, v2, :cond_0

    .line 222
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 224
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->startAnimation(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;I)V

    .line 227
    iget-object v1, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v2, v3, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->updateNameTag(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;I)V

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUpdated()V

    .line 233
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 234
    return-void
.end method

.method private updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V
    .locals 9
    .param p1, "selectedFace"    # Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .param p2, "orientation"    # I
    .param p3, "useSmileGauge"    # Z

    .prologue
    .line 496
    if-nez p1, :cond_1

    .line 519
    :cond_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 501
    .local v7, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 502
    .local v0, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz p3, :cond_2

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    .line 505
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 509
    .local v8, "rect":Landroid/graphics/Rect;
    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugesPosition(IIIII)V

    .line 511
    iget v1, p1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileScore(I)V

    .line 513
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 514
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    goto :goto_0

    .line 516
    .end local v8    # "rect":Landroid/graphics/Rect;
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeFacePriority(Ljava/lang/String;)V
    .locals 4
    .param p1, "selected"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v3, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-ne v2, v3, :cond_0

    .line 370
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->select(Landroid/graphics/Rect;Z)V

    .line 374
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iget v3, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedRectangleResId:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->startRectanglePressAnimation()V

    goto :goto_1

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v3, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_0

    .line 379
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected deselect()V
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->hide()V

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-ne v0, v1, :cond_0

    .line 533
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    .line 535
    :cond_0
    return-void
.end method

.method public disableTouchDetectedFace()V
    .locals 3

    .prologue
    .line 382
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 383
    .local v1, "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setIsAbleToTouch(Z)V

    goto :goto_0

    .line 385
    .end local v1    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 134
    return-void
.end method

.method public getTopPriorityFace()Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    return-object v0
.end method

.method protected hide()V
    .locals 3

    .prologue
    .line 328
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 330
    .local v1, "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    .line 331
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->stopAnimation()V

    goto :goto_0

    .line 334
    .end local v1    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 335
    return-void
.end method

.method public hideOthers(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    .line 344
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->stopAnimation()V

    goto :goto_0

    .line 347
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected init(Landroid/view/LayoutInflater;[Landroid/view/View;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "preInflatedView"    # [Landroid/view/View;

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "view":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz p2, :cond_0

    .line 93
    aget-object v1, p2, v0

    .end local v1    # "view":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 95
    .restart local v1    # "view":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dummy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "view":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_1
    sget v2, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->PRIORITY:I

    iput v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedRectangleResId:I

    .line 99
    return-void
.end method

.method protected onAfFail(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 293
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 294
    .local v1, "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->startFadeoutAnimation(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V

    goto :goto_0

    .line 296
    .end local v1    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method protected onAfSuccess(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 300
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 303
    .local v0, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v0, :cond_0

    .line 304
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->SUCCESS:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 305
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->hideOthers(Ljava/lang/String;)V

    .line 308
    .end local v0    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method protected onRecording(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 312
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->SUCCESS:I

    iput v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedRectangleResId:I

    .line 313
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 316
    .local v0, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v0, :cond_0

    .line 317
    iget v1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedRectangleResId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 321
    .end local v0    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method public final onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    invoke-interface {v0, p2}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;->onFaceRectTouchCancel(Landroid/view/MotionEvent;)V

    .line 444
    :cond_0
    return-void
.end method

.method public final onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 399
    .local v7, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 400
    .local v8, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->changeFacePriority(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectangleLeft()I

    move-result v2

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectangleTop()I

    move-result v3

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectangleWidth()I

    move-result v4

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectangleHeight()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;->onChangeFocusFace(Ljava/lang/String;IIII)V

    .line 414
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_1
    return-void
.end method

.method public final onRectTouchLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;->onFaceRectLongPress(Landroid/view/MotionEvent;)V

    .line 451
    :cond_0
    return-void
.end method

.method public final onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    invoke-interface {v0, p2}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;->onFaceRectTouchUp(Landroid/view/MotionEvent;)V

    .line 429
    :cond_0
    return-void
.end method

.method protected resetColor()V
    .locals 3

    .prologue
    .line 284
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 285
    .local v1, "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    sget v2, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_0

    .line 288
    .end local v1    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->PRIORITY:I

    iput v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedRectangleResId:I

    .line 289
    return-void
.end method

.method protected select(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "doAnimation"    # Z

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-ne v0, v1, :cond_0

    .line 524
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    .line 526
    :cond_0
    return-void
.end method

.method public final setChangeFocusFaceListener(Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mChangeFocusFaceListener:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    .line 461
    return-void
.end method

.method public final setDisplayRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 480
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 481
    .local v1, "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setDisplayRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 483
    .end local v1    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method protected setPosition([Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "position"    # [Landroid/graphics/Rect;

    .prologue
    .line 540
    return-void
.end method

.method public final setSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 486
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 487
    .local v1, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getDimenId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileLevel(I)V

    goto :goto_0

    .line 489
    .end local v1    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->hide()V

    .line 490
    return-void
.end method

.method protected setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V
    .locals 4
    .param p1, "state"    # Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    .line 259
    sget-object v2, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$1;->$SwitchMap$com$sonyericsson$android$camera$view$FocusRectanglesManager$RectangleState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 261
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->resetColor()V

    goto :goto_0

    .line 264
    :pswitch_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedRectangleResId:I

    .line 265
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 267
    .local v1, "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    iget v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedRectangleResId:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 269
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hideNameTag()V

    .line 270
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_1

    .line 274
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->resetColor()V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setSurfaceSize(IIIZ)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "orientation"    # I
    .param p4, "alignParentLeft"    # Z

    .prologue
    .line 474
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 475
    .local v1, "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v1, p1, p2, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSize(IIZ)V

    goto :goto_0

    .line 477
    .end local v1    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method protected show()V
    .locals 4

    .prologue
    .line 351
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v3, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v3, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-ne v2, v3, :cond_1

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 353
    .local v1, "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    goto :goto_0

    .line 356
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->hide()V

    .line 358
    :cond_2
    return-void
.end method

.method public updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;IZ)V
    .locals 8
    .param p1, "resultList"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .param p2, "orientation"    # I
    .param p3, "isOneshotVideo"    # Z

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->hide()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 153
    .local v5, "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearUpdated()V

    goto :goto_1

    .line 156
    .end local v5    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v6, 0x5

    if-ge v0, v6, :cond_5

    .line 157
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 159
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v2

    .line 163
    .local v2, "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 165
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 175
    .local v3, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :goto_3
    if-eqz v3, :cond_3

    .line 177
    invoke-direct {p0, v3, v2, p2}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;I)V

    .line 156
    .end local v2    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .end local v3    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    .restart local v2    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-static {v6, v7, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->overwriteTaggedRectangle(Ljava/util/HashMap;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v3

    .restart local v3    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    goto :goto_3

    .line 183
    .end local v2    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .end local v3    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 184
    .restart local v5    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isUpdate()Z

    move-result v6

    if-nez v6, :cond_6

    .line 185
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    .line 186
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setIsAbleToTouch(Z)V

    goto :goto_4

    .line 188
    :cond_6
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setIsAbleToTouch(Z)V

    goto :goto_4

    .line 193
    .end local v5    # "value":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_7
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mRectangles:Ljava/util/HashMap;

    invoke-static {v6, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->sortRectangles(Ljava/util/HashMap;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v4

    .line 195
    .local v4, "topRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v4, :cond_0

    .line 197
    iget v6, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedRectangleResId:I

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 200
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceByUuid(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 202
    if-nez p3, :cond_0

    .line 204
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mFocusedFace:Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->isUseSmileGuage()Z

    move-result v7

    invoke-direct {p0, v6, p2, v7}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V

    goto/16 :goto_0
.end method
