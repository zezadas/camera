.class public Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;
.super Landroid/widget/ImageView;
.source "CaptureArea.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureArea"


# instance fields
.field private mIsLongPressed:Z

.field private mIsTouched:Z

.field private mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

.field private mTouchListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;

.field private mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    .line 38
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsLongPressed:Z

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 44
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mTouchListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    .local v0, "toucharea_margin":I
    new-instance v1, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v1, p1, p0, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mTouchListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;)Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    return-object v0
.end method

.method private convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .param p1, "viewPoint"    # Landroid/graphics/Point;

    .prologue
    .line 100
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 101
    .local v0, "locationOfView":[I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->getLocationOnScreen([I)V

    .line 103
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v4, v0, v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isEventContainedInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    return v0
.end method

.method public onDoubleCanceled()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_0
.end method

.method public onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point0"    # Landroid/graphics/Point;
    .param p2, "point1"    # Landroid/graphics/Point;

    .prologue
    .line 222
    return-void
.end method

.method public onDoubleRotated(FF)V
    .locals 0
    .param p1, "degreeVsOrigin"    # F
    .param p2, "degreeVsLast"    # F

    .prologue
    .line 241
    return-void
.end method

.method public onDoubleScaled(FFF)V
    .locals 2
    .param p1, "currentLength"    # F
    .param p2, "previousLength"    # F
    .param p3, "originalLength"    # F

    .prologue
    .line 226
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sub-float v0, p1, p2

    .line 233
    .local v0, "scaleLength":F
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaScaled(F)V

    goto :goto_0
.end method

.method public onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point0"    # Landroid/graphics/Point;
    .param p2, "point1"    # Landroid/graphics/Point;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaIsReadyToScale()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "velocX"    # F
    .param p4, "velocY"    # F

    .prologue
    .line 286
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsLongPressed:Z

    .line 293
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v1, :cond_0

    .line 294
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 296
    .local v0, "curPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaLongPressed(Landroid/graphics/Point;)V

    .line 299
    .end local v0    # "curPoint":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public onOverTripleCanceled()V
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 304
    return-void
.end method

.method public onSingleCanceled()V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_0
.end method

.method public onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->isTouched()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaMoved(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public onSingleReleased(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsLongPressed:Z

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    .line 182
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsLongPressed:Z

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaReleased(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "release"    # Landroid/graphics/Point;
    .param p2, "remain"    # Landroid/graphics/Point;

    .prologue
    .line 246
    return-void
.end method

.method public onSingleStopped(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaStopped()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 308
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v1, :cond_0

    .line 309
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 311
    .local v0, "curPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V

    .line 314
    .end local v0    # "curPoint":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public onSingleTouched(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mIsTouched:Z

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaTouched(Landroid/graphics/Point;)V

    .line 137
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->release()V

    .line 67
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 69
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    return-void
.end method

.method public setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;

    .line 121
    return-void
.end method
