.class public Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;
.super Ljava/lang/Object;
.source "FocusRectanglesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$1;,
        Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

.field private mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

.field private mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field private mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

.field private mIsTouchCapture:Z

.field private mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

.field private mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

.field private mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

.field private mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field private mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 73
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-void
.end method


# virtual methods
.method public changeRectangle(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 2
    .param p1, "capMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "focusMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .param p3, "smile"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->inactivate()V

    .line 406
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->DEFAULT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    .line 466
    return-void

    .line 408
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    goto :goto_0

    .line 410
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    goto :goto_0

    .line 415
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    goto :goto_0

    .line 428
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    goto :goto_0

    .line 430
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    goto :goto_0

    .line 434
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    goto :goto_0

    .line 438
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    goto :goto_0

    .line 442
    :pswitch_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    goto :goto_0

    .line 446
    :pswitch_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    goto :goto_0

    .line 458
    :pswitch_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 408
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 428
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public claerObjectRectangle()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->deselect()V

    .line 256
    return-void
.end method

.method public clearFaceRectangle()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->deselect()V

    .line 288
    return-void
.end method

.method public clearTouchRectangle()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->deselect()V

    .line 272
    return-void
.end method

.method public disableTouchDetectedFace()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->disableTouchDetectedFace()V

    .line 301
    return-void
.end method

.method public getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object v0
.end method

.method public getTopPriorityFace()Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->getTopPriorityFace()Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->hide()V

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->hide()V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->hide()V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->hide()V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->hide()V

    .line 169
    return-void
.end method

.method public hideFaceRectangle()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->hide()V

    .line 284
    return-void
.end method

.method public hideObjectRectangle()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->hide()V

    .line 252
    return-void
.end method

.method public hideTouchRectangle()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->hide()V

    .line 268
    return-void
.end method

.method public inactivate()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->hide()V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->setState(Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;)V

    .line 181
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceSizeChanged(IIIZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .param p4, "isAlignLeft"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->setSurfaceSize(IIIZ)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->setSurfaceSize(IIIZ)V

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->setSurfaceSize(IIIZ)V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->setSurfaceSize(IIIZ)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->setSurfaceSize(IIIZ)V

    .line 219
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setAfRectanglePosition(III)V

    .line 220
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->release()V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->release()V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->release()V

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->release()V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->release()V

    .line 191
    return-void
.end method

.method public setAfRectanglePosition(III)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 375
    invoke-static {}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getSingleFocusRectangle()Landroid/graphics/RectF;

    move-result-object v2

    .line 376
    .local v2, "relativePosition":Landroid/graphics/RectF;
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/RectF;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v4, p1, p2, p3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPositionToSurface([Landroid/graphics/RectF;III)[Landroid/graphics/Rect;

    move-result-object v3

    .line 379
    .local v3, "singleAfRect":[Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->setPosition([Landroid/graphics/Rect;)V

    .line 382
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v0

    .line 383
    .local v0, "cameraId":I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/FocusRectPositionConvertor;->getMultiFocusRectangles(I)[Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4, p1, p2, p3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPositionToSurface([Landroid/graphics/RectF;III)[Landroid/graphics/Rect;

    move-result-object v1

    .line 386
    .local v1, "multiAfRects":[Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->setPosition([Landroid/graphics/Rect;)V

    .line 387
    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, p1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->changeRectangle(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    goto :goto_0
.end method

.method public setChangeFocusFaceListener(Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->setChangeFocusFaceListener(Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;)V

    .line 159
    return-void
.end method

.method public setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne v0, p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->changeRectangle(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    goto :goto_0
.end method

.method public setPreInfalteMap(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V
    .locals 0
    .param p1, "focusRectanglesViewList"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    .line 85
    return-void
.end method

.method public setRectangleColor(Lcom/sonyericsson/cameracommon/focusview/RectangleColor;Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 2
    .param p1, "color"    # Lcom/sonyericsson/cameracommon/focusview/RectangleColor;
    .param p2, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 470
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$1;->$SwitchMap$com$sonyericsson$cameracommon$focusview$RectangleColor:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 488
    :goto_0
    return-void

    .line 472
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->resetColor()V

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->resetColor()V

    goto :goto_0

    .line 476
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->onAfFail(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->onAfFail(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    goto :goto_0

    .line 480
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->onAfSuccess(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->onAfSuccess(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    goto :goto_0

    .line 484
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->onRecording(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->onRecording(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    if-ne v0, p1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->setSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 396
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->changeRectangle(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    goto :goto_0
.end method

.method public setTouchCapture(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mIsTouchCapture:Z

    .line 248
    return-void
.end method

.method public setupRectangles(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewFinder"    # Landroid/widget/FrameLayout;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 98
    new-instance v1, Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-direct {v1, p2}, Lcom/sonyericsson/android/camera/view/SingleRectangle;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->singleAfView:Landroid/widget/RelativeLayout;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->init(Landroid/view/LayoutInflater;[Landroid/view/View;)V

    .line 107
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-direct {v1, p2}, Lcom/sonyericsson/android/camera/view/MultiRectangles;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    .line 108
    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_MULTI_FOCUS_AREAS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    .local v0, "num":I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->init(Landroid/view/LayoutInflater;I)V

    .line 113
    new-instance v1, Lcom/sonyericsson/android/camera/view/TouchRectangle;

    invoke-direct {v1, p2}, Lcom/sonyericsson/android/camera/view/TouchRectangle;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->touchAfView:Landroid/widget/RelativeLayout;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->init(Landroid/view/LayoutInflater;[Landroid/view/View;)V

    .line 122
    :goto_1
    new-instance v1, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-direct {v1, p2}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->init(Landroid/view/LayoutInflater;[Landroid/view/View;)V

    .line 130
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->setDisplayRect(Landroid/graphics/Rect;)V

    .line 133
    new-instance v1, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-direct {v1, p2}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->trackedObjectView:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->init(Landroid/view/LayoutInflater;[Landroid/view/View;)V

    .line 142
    :goto_3
    iput-object v5, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusRectanglesViewList:Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->changeRectangle(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 148
    return-void

    .line 104
    .end local v0    # "num":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->init(Landroid/view/LayoutInflater;[Landroid/view/View;)V

    goto/16 :goto_0

    .line 119
    .restart local v0    # "num":I
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->init(Landroid/view/LayoutInflater;[Landroid/view/View;)V

    goto :goto_1

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->init(Landroid/view/LayoutInflater;[Landroid/view/View;)V

    goto :goto_2

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->init(Landroid/view/LayoutInflater;[Landroid/view/View;)V

    goto :goto_3
.end method

.method public showAfRectangle(I)V
    .locals 2
    .param p1, "zoomStep"    # I

    .prologue
    .line 323
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->show()V

    goto :goto_0

    .line 329
    :pswitch_1
    if-nez p1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->show()V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->hide()V

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->showAsFrame()V

    goto :goto_0

    .line 338
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->DEFAULT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->getTopPriorityFace()Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-ne v0, v1, :cond_0

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->showAsFrame()V

    goto :goto_0

    .line 350
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->DEFAULT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->showAsFrame()V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public showCurrentAfRectangle()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mCurrentRectangle:Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;->show()V

    .line 364
    return-void
.end method

.method public startObjectTrackingAnimation(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 493
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mIsTouchCapture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->select(Landroid/graphics/Rect;Z)V

    .line 494
    return-void

    .line 493
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTouchDownAnimation(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 499
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mIsTouchCapture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->select(Landroid/graphics/Rect;Z)V

    .line 500
    return-void

    .line 499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTouchUpAnimation(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 505
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mIsTouchCapture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->startTouchUpAnimation(Landroid/graphics/Rect;Z)V

    .line 506
    return-void

    .line 505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startViewFinder()V
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->NORMAL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setRectangleColor(Lcom/sonyericsson/cameracommon/focusview/RectangleColor;Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mSingleRectangles:Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->show()V

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mMultiRectangles:Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->show()V

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->show()V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->show()V

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->show()V

    .line 318
    return-void
.end method

.method public updateFaceRectangle(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;IZ)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .param p2, "orientation"    # I
    .param p3, "isOneshotVideo"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mFaceRectangles:Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles;->updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;IZ)V

    .line 293
    return-void
.end method

.method public updateObjectRectangle(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mObjectRectangle:Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->setPosition([Landroid/graphics/Rect;)V

    .line 264
    :cond_0
    return-void
.end method

.method public updateTouchRectangle(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->mTouchRectangles:Lcom/sonyericsson/android/camera/view/TouchRectangle;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->setPosition([Landroid/graphics/Rect;)V

    .line 280
    :cond_0
    return-void
.end method
