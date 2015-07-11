.class public Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.super Ljava/lang/Object;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;
    }
.end annotation


# static fields
.field private static final FACE_RECT_REFRESH_TIMEOUT:I = 0xc8

.field private static final FOCUS_RECT_SET_DOWN_ANIMATION_START_DELAY_TIME:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final TRACKED_OBJECT_RECT_REFRESH_TIMEOUT:I = 0x3e8


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

.field private mCaptureArea:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

.field private mDevicePreviewHeight:I

.field private mDevicePreviewWidth:I

.field private mFaceRectangles:Ljava/util/HashMap;
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

.field private mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsFaceTouchCaptureEnabled:Z

.field private mIsFocusAnimationEnabled:Z

.field private mIsRecording:Z

.field private mIsRectPositionMirrored:Z

.field private mLastFaceDetectionResult:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

.field private mLatestSelectedFaceUuid:Ljava/lang/String;

.field private final mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

.field private mRectangles:Landroid/widget/RelativeLayout;

.field private final mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

.field private mSingleAfRect:Landroid/widget/RelativeLayout;

.field private mTouchAfRect:Landroid/widget/RelativeLayout;

.field private mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

.field private mUserTouchFaceUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;IILcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "focusEventListener"    # Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "focusRectanglesViewList"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    .param p6, "captureArea"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    .line 83
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    .line 89
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 105
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .line 108
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    .line 113
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    .line 118
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mUserTouchFaceUuid:Ljava/lang/String;

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    .line 127
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRectPositionMirrored:Z

    .line 161
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 164
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    .line 167
    iput p3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 168
    iput p4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 170
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .line 172
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    .line 175
    invoke-direct {p0, p5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceNameData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onObjectTrackedInternal(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Landroid/graphics/Point;
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mUserTouchFaceUuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .param p3, "x3"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeFacePriority(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetRectanglesColor()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object v0
.end method

.method private addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "preInflatedRect"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 290
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    move-object v2, v3

    .line 326
    :goto_0
    return-object v2

    .line 295
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 296
    .local v0, "defaultFaceRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 301
    .local v1, "faceParam":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 302
    .local v2, "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz p3, :cond_1

    .line 303
    move-object v2, p3

    .line 310
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 315
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 317
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 321
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 324
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 305
    :cond_1
    sget v4, Lcom/sonyericsson/cameracommon/R$layout;->face_rectangle:I

    invoke-virtual {p1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2    # "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .restart local v2    # "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    goto :goto_1
.end method

.method private changeFacePriority(Ljava/lang/String;)V
    .locals 7
    .param p1, "faceUuid"    # Ljava/lang/String;

    .prologue
    .line 1403
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1404
    .local v2, "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-nez v2, :cond_0

    .line 1405
    sget-object v4, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeFacePriority() faceUuid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :goto_0
    return-void

    .line 1409
    :cond_0
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1410
    .local v3, "viewRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFaceToDevice(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1414
    .local v0, "deviceRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1415
    .local v1, "point":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    invoke-interface {v4, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onFaceSelected(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .line 1515
    return-void
.end method

.method private faceResultToRectangles(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    .locals 5
    .param p2, "detectionResult"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .param p3, "setRectTranslucent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;",
            "Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "identifyResult":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    const/4 v4, 0x0

    .line 1423
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1427
    .local v0, "previewRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mUserTouchFaceUuid:Ljava/lang/String;

    invoke-static {p1, v2, v0, v3}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->getFaceInformationList(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Landroid/graphics/Rect;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    move-result-object v1

    .line 1434
    .local v1, "resultList":Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    if-nez v1, :cond_0

    .line 1443
    :goto_0
    return-void

    .line 1439
    :cond_0
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    invoke-direct {p0, v1, v2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;IZ)V

    goto :goto_0
.end method

.method private hideFaceRectangles(Z)V
    .locals 4
    .param p1, "translucentOnly"    # Z

    .prologue
    .line 1129
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1130
    .local v1, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_0

    .line 1136
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private hideTrackedObjectRecgantle()V
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1140
    return-void
.end method

.method private initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V
    .locals 20
    .param p1, "focusRectanglesViewList"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    .prologue
    .line 196
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->rectanglesContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 201
    .local v10, "inflater":Landroid/view/LayoutInflater;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    .line 205
    const/4 v7, 0x0

    .line 206
    .local v7, "faceViewList":[Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 207
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    .end local v7    # "faceViewList":[Landroid/view/View;
    check-cast v7, [Landroid/view/View;

    .line 209
    .restart local v7    # "faceViewList":[Landroid/view/View;
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 210
    const/4 v6, 0x0

    .line 211
    .local v6, "faceRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v7, :cond_1

    .line 212
    aget-object v6, v7, v8

    .end local v6    # "faceRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    check-cast v6, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 214
    .restart local v6    # "faceRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dummy"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1, v6}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 218
    .end local v6    # "faceRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->trackedObjectView:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 220
    sget v18, Lcom/sonyericsson/cameracommon/R$layout;->face_rectangle:I

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 224
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-object/from16 v18, v0

    sget v19, Lcom/sonyericsson/cameracommon/R$id;->rect_image:I

    invoke-virtual/range {v18 .. v19}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 225
    .local v9, "image":Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 226
    .local v14, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getObjectAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v5

    .line 227
    .local v5, "config":Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    iget v0, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    iget v0, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 233
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 236
    .local v13, "objParam":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_width:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 240
    .local v12, "objIconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_height:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 242
    .local v11, "objIconHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v11}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(II)V

    .line 245
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->singleAfView:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 247
    sget v18, Lcom/sonyericsson/cameracommon/R$layout;->fast_capturing_auto_focus_rectangles:I

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    .line 251
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v15, "singleParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->touchAfView:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 260
    sget v18, Lcom/sonyericsson/cameracommon/R$layout;->fast_capturing_auto_focus_rectangles:I

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 263
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    sget v19, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 265
    .local v3, "centerRect":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 266
    .local v4, "centerRectParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v16

    .line 267
    .local v16, "touchConfig":Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 268
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v17, "touchParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    .line 279
    return-void
.end method

.method private onObjectTrackedInternal(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .locals 12
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 1351
    iget-boolean v7, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mIsLost:Z

    if-eqz v7, :cond_0

    .line 1353
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1400
    :goto_0
    return-void

    .line 1359
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1363
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v3

    .line 1366
    .local v3, "finderRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 1367
    .local v5, "xRatio":F
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 1370
    .local v6, "yRatio":F
    iget-object v7, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v0, v7

    .line 1371
    .local v0, "centerX":I
    iget-object v7, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v1, v7

    .line 1373
    .local v1, "centerY":I
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getObjectAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v2

    .line 1374
    .local v2, "config":Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    new-instance v4, Landroid/graphics/Rect;

    iget v7, v2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v0, v7

    iget v8, v2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    iget v9, v2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v0

    iget v10, v2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1385
    .local v4, "objRect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 1386
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 1389
    iget-boolean v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    if-eqz v7, :cond_1

    .line 1390
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v8, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->SUCCESS:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1398
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 1399
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 1393
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v8, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_1
.end method

.method private playOnTouchDownAnimationForTouchFocusRect()V
    .locals 6

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1285
    .local v0, "rect":Landroid/widget/ImageView;
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 1289
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1294
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1313
    .end local v0    # "rect":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private playOnTouchUpAnimationForTouchFocusRect()V
    .locals 6

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1320
    .local v0, "rect":Landroid/widget/ImageView;
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1322
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 1324
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1329
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1348
    .end local v0    # "rect":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 2
    .param p1, "focusType"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    .line 1260
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    if-nez v0, :cond_0

    .line 1261
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1264
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchDownAnimationForTouchFocusRect()V

    goto :goto_0

    .line 1268
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchUpAnimationForTouchFocusRect()V

    goto :goto_0

    .line 1261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeObjectFocusRectAnimation()V
    .locals 2

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationObject(Landroid/view/View;)V

    .line 1168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAnimation()V

    .line 1169
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1170
    return-void
.end method

.method private removeSingleFocusRectAnimation()V
    .locals 3

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1158
    .local v0, "rect":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationSingle(Landroid/view/View;)V

    .line 1160
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1162
    return-void
.end method

.method private removeTouchFocusRectAnimation()V
    .locals 3

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1145
    .local v0, "rect":Landroid/widget/ImageView;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 1148
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationTouch(Landroid/view/View;)V

    .line 1150
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1152
    return-void
.end method

.method private resetFaceRectangleColor()V
    .locals 4

    .prologue
    .line 1180
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1181
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1183
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hideNameTag()V

    goto :goto_0

    .line 1185
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private resetObjectTrackingRectangleColor()V
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1190
    return-void
.end method

.method private resetRectanglesColor()V
    .locals 0

    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    .line 1174
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor()V

    .line 1175
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    .line 1176
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    .line 1177
    return-void
.end method

.method private resetSingleFocusRectangleColor()V
    .locals 3

    .prologue
    .line 1199
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1200
    .local v0, "singleRect":Landroid/widget/ImageView;
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->NORMAL:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1201
    return-void
.end method

.method private resetTouchFocusRectangleColor()V
    .locals 3

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1194
    .local v0, "touchRect":Landroid/widget/ImageView;
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->NORMAL:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    return-void
.end method

.method private setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 10
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "focusType"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    const/4 v9, 0x0

    .line 1203
    if-nez p1, :cond_0

    .line 1205
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9, v9}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 1257
    :goto_0
    return-void

    .line 1210
    :cond_0
    sget-object v6, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-ne p2, v6, :cond_1

    .line 1211
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 1215
    :cond_1
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 1216
    .local v3, "screenPosX":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 1219
    .local v4, "screenPosY":I
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 1223
    .local v2, "finderRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v5

    .line 1226
    .local v5, "touchConfig":Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    .line 1228
    iget v6, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v0, v6, 0x2

    .line 1238
    .local v0, "finderPosX":I
    :goto_1
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_4

    .line 1240
    iget v6, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v1, v6, 0x2

    .line 1251
    .local v1, "finderPosY":I
    :goto_2
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 1254
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1256
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    goto :goto_0

    .line 1229
    .end local v0    # "finderPosX":I
    .end local v1    # "finderPosY":I
    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v6, v3, :cond_3

    .line 1231
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .restart local v0    # "finderPosX":I
    goto :goto_1

    .line 1234
    .end local v0    # "finderPosX":I
    :cond_3
    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v6

    .restart local v0    # "finderPosX":I
    goto :goto_1

    .line 1241
    :cond_4
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v6, v4, :cond_5

    .line 1243
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .restart local v1    # "finderPosY":I
    goto :goto_2

    .line 1246
    .end local v1    # "finderPosY":I
    :cond_5
    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, v6

    .restart local v1    # "finderPosY":I
    goto :goto_2
.end method

.method private setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V
    .locals 1
    .param p1, "rect"    # Landroid/widget/RelativeLayout;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1046
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1048
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 1049
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1050
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1051
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1052
    iput p5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1055
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    :cond_0
    return-void
.end method

.method private updateFaceNameData(Ljava/util/List;)V
    .locals 2
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
    .line 910
    .local p1, "identifyResult":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 911
    return-void
.end method

.method private updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;IZ)V
    .locals 8
    .param p1, "resultList"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .param p2, "orientation"    # I
    .param p3, "isRectTranslucent"    # Z

    .prologue
    .line 926
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 932
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearUpdated()V

    goto :goto_1

    .line 935
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v6, 0x5

    if-ge v0, v6, :cond_5

    .line 936
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 938
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v3

    .line 940
    .local v3, "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    const/4 v4, 0x0

    .line 943
    .local v4, "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 945
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    check-cast v4, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 955
    .restart local v4    # "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :goto_3
    if-eqz v4, :cond_3

    .line 957
    invoke-direct {p0, v4, v3, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V

    .line 935
    .end local v3    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .end local v4    # "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 950
    .restart local v3    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .restart local v4    # "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-static {v6, v7, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->overwriteTaggedRectangle(Ljava/util/HashMap;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v4

    goto :goto_3

    .line 967
    .end local v3    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .end local v4    # "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 968
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isUpdate()Z

    move-result v6

    if-nez v6, :cond_6

    .line 969
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_4

    .line 974
    .end local v2    # "key":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-static {v6, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->sortRectangles(Ljava/util/HashMap;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v5

    .line 976
    .local v5, "topRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v5, :cond_0

    if-nez p3, :cond_0

    .line 978
    iget-boolean v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    if-eqz v6, :cond_8

    .line 979
    sget v6, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->SUCCESS:I

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 987
    :goto_5
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    goto/16 :goto_0

    .line 982
    :cond_8
    sget v6, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->PRIORITY:I

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_5
.end method

.method private updateFaceRectanglesData(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    .locals 1
    .param p1, "detectionResult"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .param p2, "setRectTranslucent"    # Z

    .prologue
    .line 905
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .line 906
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 907
    return-void
.end method

.method private updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V
    .locals 7
    .param p1, "targetRect"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .param p2, "namedFace"    # Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .param p3, "orientation"    # I
    .param p4, "isRectTranslucent"    # Z

    .prologue
    const/4 v3, 0x0

    .line 997
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v4

    iget-object v5, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 999
    .local v2, "viewRect":Landroid/graphics/Rect;
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRectPositionMirrored:Z

    if-eqz v4, :cond_2

    .line 1000
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1003
    .local v0, "displayWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 1007
    .end local v0    # "displayWidth":I
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 1010
    if-eqz p4, :cond_3

    .line 1011
    invoke-virtual {p1, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1013
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    .line 1019
    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v1, 0x1

    .line 1021
    .local v1, "isAlreadyDisplayed":Z
    :goto_2
    if-nez v1, :cond_0

    .line 1023
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->startRectangleAnimation(I)V

    .line 1027
    :cond_0
    iget-object v4, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    iget-object v5, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4, v5, v6, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->updateNameTag(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;I)V

    .line 1034
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUpdated()V

    .line 1037
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1038
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 1039
    invoke-virtual {p1, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1041
    :cond_1
    return-void

    .line 1005
    .end local v1    # "isAlreadyDisplayed":Z
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    goto :goto_0

    .line 1015
    :cond_3
    sget v4, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    invoke-virtual {p1, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_1

    :cond_4
    move v1, v3

    .line 1019
    goto :goto_2
.end method

.method private updateRectanglesCoordinates()V
    .locals 7

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v6

    .line 336
    .local v6, "finderRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V

    .line 344
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 345
    return-void
.end method


# virtual methods
.method protected checkAndChangeFacePriority(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 1447
    if-nez p1, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1450
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->isValidFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1451
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceDetectionResult indexOfSelectedFace illegal vaue. result.indexOfSelectedFace = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1457
    :cond_2
    iget-object v2, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    iget v3, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    .line 1459
    .local v0, "nowSelectedFace":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    iget-object v2, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget v2, v2, Landroid/hardware/Camera$Face;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "nowSelectedID":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1462
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeFacePriority(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearAllFocus()V
    .locals 0

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocusExceptFace()V

    .line 427
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    .line 428
    return-void
.end method

.method public clearAllFocusExceptFace()V
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 437
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 438
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearTouchFocus()V

    .line 439
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 440
    return-void
.end method

.method public clearExceptTouchFocus()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->clearExceptTouchFocus()V

    .line 423
    return-void
.end method

.method public clearFaceDetection()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 457
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    .line 458
    return-void
.end method

.method public clearObjectTracking()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V

    .line 462
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeObjectFocusRectAnimation()V

    .line 463
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor()V

    .line 464
    return-void
.end method

.method public clearSingleAutoFocus()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 451
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeSingleFocusRectAnimation()V

    .line 452
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    .line 453
    return-void
.end method

.method public clearTouchFocus()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 443
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeTouchFocusRectAnimation()V

    .line 446
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    .line 447
    return-void
.end method

.method public disableFaceTouchCapture()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    .line 184
    return-void
.end method

.method public enableFaceTouchCapture()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    .line 180
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1497
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    return v0
.end method

.method public isTouchFocus()Z
    .locals 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    const/4 v0, 0x1

    .line 1493
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocusCanceled()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onAutoFocusCanceled()V

    .line 379
    return-void
.end method

.method public onAutoFocusDone(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onAutoFocusDone(Z)V

    .line 375
    return-void
.end method

.method public onAutoFocusStarted()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onAutoFocusStarted()V

    .line 371
    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 397
    return-void
.end method

.method public onFaceLost()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mUserTouchFaceUuid:Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onFaceLost()V

    .line 407
    return-void
.end method

.method public onFaceNameDetected(Ljava/util/List;)V
    .locals 1
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
    .line 400
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onFaceNameDetected(Ljava/util/List;)V

    .line 401
    return-void
.end method

.method public onObjectLost()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onObjectLost()V

    .line 419
    return-void
.end method

.method public onObjectTracked(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onTrackedObjectStateUpdated(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    .line 415
    return-void
.end method

.method public onRecordingStart()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    .line 476
    return-void
.end method

.method public onRecordingStop()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    .line 480
    return-void
.end method

.method public onUiComponentOverlaid()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onUiComponentOverlaid()V

    .line 468
    return-void
.end method

.method public onUiComponentRemoved()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onUiComponentRemoved()V

    .line 472
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 349
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    .line 350
    return-void
.end method

.method public setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 5
    .param p1, "touchedPointOnScreen"    # Landroid/graphics/Point;
    .param p2, "setType"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    .line 382
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 383
    .local v0, "locationOfView":[I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 384
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 388
    .local v1, "pointOfView":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v2, v1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 389
    return-void
.end method

.method public setMirrored(Z)V
    .locals 0
    .param p1, "isMirrored"    # Z

    .prologue
    .line 1518
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRectPositionMirrored:Z

    .line 1519
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 1504
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    .line 1505
    return-void
.end method

.method public setUserTouchFaceUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mUserTouchFaceUuid:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1509
    return-void
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->startFaceDetection()V

    .line 393
    return-void
.end method

.method public startObjectTracking()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->startObjectTracking()V

    .line 411
    return-void
.end method

.method public updateDevicePreviewSize(II)V
    .locals 0
    .param p1, "devicePrevWidth"    # I
    .param p2, "devicePrevHeight"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 188
    iput p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 191
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    .line 192
    return-void
.end method
