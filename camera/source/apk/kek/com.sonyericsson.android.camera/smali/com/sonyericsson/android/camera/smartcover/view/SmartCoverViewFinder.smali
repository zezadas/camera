.class public Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;
.super Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.source "SmartCoverViewFinder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;
.implements Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
.implements Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;,
        Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$BackButtonListener;,
        Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;,
        Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;,
        Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ReTrySetupHeadUpDisplayTask;,
        Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;
    }
.end annotation


# static fields
.field public static final ACTION_COVER_MODE_ALBUM:Ljava/lang/String; = "com.sonymobile.coverapp.ACTION_COVER_MODE_ALBUM"

.field private static final BACK_BUTTON_NOT_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private static final BACK_BUTTON_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

.field private mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

.field private mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

.field private mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

.field private mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

.field private mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

.field private mIsSetupHeadupDisplayInvoked:Z

.field private mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

.field private mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f0200c9

    const v2, 0x7f0200c8

    const/4 v1, -0x1

    .line 98
    const-class v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->TAG:Ljava/lang/String;

    .line 1108
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v0, v3, v3, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    sput-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->BACK_BUTTON_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 1113
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v0, v2, v2, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    sput-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->BACK_BUTTON_NOT_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V

    .line 116
    iput-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .line 119
    iput-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    .line 120
    iput-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 137
    iput-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->requestToRemoveSystemUi()V

    .line 151
    check-cast p1, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 160
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->disableAccessibilityTalkBack()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;Landroid/view/SurfaceHolder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    return-object v0
.end method

.method static synthetic access$300()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->BACK_BUTTON_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    return-object v0
.end method

.method static synthetic access$400()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->BACK_BUTTON_NOT_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    return-object v0
.end method

.method private addBackButton()V
    .locals 2

    .prologue
    .line 1388
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 1389
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1391
    return-void
.end method

.method private changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 2
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 1124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 1125
    return-void
.end method

.method private changeToPauseView()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 722
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 724
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    :cond_1
    return-void
.end method

.method private changeToPhotoCaptureView()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 810
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 812
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    :cond_1
    return-void
.end method

.method private changeToPhotoCaptureWaitForAfDoneView()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 797
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 799
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    :cond_1
    return-void
.end method

.method private changeToPhotoFocusDoneView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 781
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 783
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    :goto_0
    return-void

    .line 789
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoFocusView()V

    goto :goto_0
.end method

.method private changeToPhotoFocusSearchView()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 764
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 766
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoFocusView()V

    goto :goto_0
.end method

.method private changeToPhotoFocusView()V
    .locals 1

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    goto :goto_0
.end method

.method private changeToPhotoIdleView(Z)V
    .locals 2
    .param p1, "isResetFocusPositionNeeded"    # Z

    .prologue
    .line 699
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 703
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 706
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    :goto_0
    return-void

    .line 712
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 714
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showLeftIconContainer()V

    goto :goto_0
.end method

.method private changeToPhotoZoomingView()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 735
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 737
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hide()V

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    :goto_0
    return-void

    .line 747
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    goto :goto_0
.end method

.method private checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V
    .locals 9
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 250
    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-nez v4, :cond_0

    .line 293
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 256
    .local v2, "previewRect":Landroid/graphics/Rect;
    if-nez v2, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 259
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_1

    .line 260
    new-instance v4, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$SurfaceAvailableRetryTask;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;Landroid/view/SurfaceHolder;II)V

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARATION_FAILED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 273
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 276
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 279
    .local v3, "textureRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->computePreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 285
    .local v0, "finderRect":Landroid/graphics/Rect;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 287
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->notifyOnEvfPrepared(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 291
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->resizeEvfScope(II)V

    goto :goto_0
.end method

.method public static final isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "rectA"    # Landroid/graphics/Rect;
    .param p1, "rectB"    # Landroid/graphics/Rect;

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSettingsFromSharedPreferencesDeviceAndResourcees()V
    .locals 1

    .prologue
    .line 538
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .line 539
    return-void
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method private notifyOnEvfPrepared(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method private onSceneModeChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 0
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .prologue
    .line 948
    return-void
.end method

.method private onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V
    .locals 0
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 247
    return-void
.end method

.method private varargs onViewFinderStateChanged(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "currentState"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 593
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 678
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 603
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->setShouldStartFastCapture(Z)V

    .line 604
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->resumeView()V

    .line 605
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 610
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoIdleView(Z)V

    goto :goto_0

    .line 616
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoZoomingView()V

    goto :goto_0

    .line 622
    :pswitch_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoFocusSearchView()V

    goto :goto_0

    .line 626
    :pswitch_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoFocusSearchView()V

    goto :goto_0

    .line 633
    :pswitch_6
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoFocusDoneView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 637
    :pswitch_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoCaptureWaitForAfDoneView()V

    goto :goto_0

    .line 641
    :pswitch_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoCaptureView()V

    goto :goto_0

    .line 651
    :pswitch_9
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showContentsViewController()V

    goto :goto_0

    .line 655
    :pswitch_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->setShouldStartFastCapture(Z)V

    .line 656
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 657
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->pauseView()V

    .line 658
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPauseView()V

    goto :goto_0

    .line 662
    :pswitch_b
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoIdleView(Z)V

    goto :goto_0

    .line 667
    :pswitch_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 668
    iput-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    .line 669
    iput-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    .line 670
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v0, :cond_1

    .line 671
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->removeBackButton()V

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->release()V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private pauseView()V
    .locals 1

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->pause()V

    .line 583
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->clearPreInflatedViews()V

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .line 586
    return-void
.end method

.method private removeBackButton()V
    .locals 2

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 1397
    return-void
.end method

.method private resizeEvfScope(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 388
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "resizeEvfScope():[Already resized]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 397
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 398
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 399
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 401
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    return-void
.end method

.method private resizeViewfinderSize()V
    .locals 5

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0f006a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1312
    .local v2, "previewContainer":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    if-eqz v3, :cond_0

    .line 1313
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1314
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v3, v3, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->width:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1315
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v3, v3, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->height:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1317
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v0, v3, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    .line 1318
    .local v0, "appPadding":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1320
    .end local v0    # "appPadding":I
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private resumeView()V
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->resume()V

    .line 577
    :cond_0
    return-void
.end method

.method private setEarlyThumbnailView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setEarlyThumbnailView(Landroid/view/View;)V

    .line 1202
    :cond_0
    return-void
.end method

.method private setupBackButton()V
    .locals 4

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-nez v1, :cond_0

    .line 1361
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->addBackButton()V

    .line 1365
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    sget-object v2, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->BACK_BUTTON_NOT_PRESSED:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 1366
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    new-instance v2, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$BackButtonListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$BackButtonListener;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$1;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 1367
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    new-instance v2, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$2;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1375
    .local v0, "description":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1377
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1380
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1383
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1385
    return-void
.end method

.method private setupCaptureArea(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 2
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->updateViewFinderCaptureAreaTouchEventHandling()V

    .line 549
    return-void
.end method

.method private setupContentsView()V
    .locals 5

    .prologue
    .line 568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 571
    return-void
.end method

.method private setupHeadUpDisplay(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 7
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 420
    iget-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->isDeviceInSecurityLock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    if-eqz v2, :cond_0

    .line 495
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->joinInflateTask()V

    .line 431
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 435
    iget-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    new-instance v3, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ReTrySetupHeadUpDisplayTask;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ReTrySetupHeadUpDisplayTask;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    .line 448
    .local v0, "isHeadUpDesplayReady":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setPreInflatedHeadUpDisplay(Landroid/view/View;)V

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->requestSetupHeadUpDisplay()V

    .line 457
    if-nez v0, :cond_3

    .line 463
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setupViewFinderLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 464
    .local v1, "overlay":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 467
    .end local v1    # "overlay":Landroid/widget/RelativeLayout;
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->loadSettingsFromSharedPreferencesDeviceAndResourcees()V

    .line 468
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setupContentsView()V

    .line 469
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setupCaptureArea(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setupOnScreenCaptureButton(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 471
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setupRightContainer()V

    .line 473
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setOrientation(I)V

    .line 474
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeToPhotoIdleView(Z)V

    .line 485
    iget-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 489
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->clearPreInflatedViews()V

    .line 491
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    goto :goto_0
.end method

.method private setupOnScreenCaptureButton(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 3
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 562
    new-instance v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$1;)V

    .line 563
    .local v0, "photo":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 564
    return-void
.end method

.method private setupRightContainer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1324
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    const v7, 0x7f0f009e

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1327
    .local v2, "headupDisplay":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_1

    .line 1328
    iget-object v6, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    if-eqz v6, :cond_0

    .line 1329
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1330
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v6, v6, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->width:I

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1331
    iget-object v6, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v6, v6, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->height:I

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1333
    iget-object v6, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v1, v6, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->appPadding:I

    .line 1334
    .local v1, "appPadding":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1338
    .end local v1    # "appPadding":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00a9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1340
    .local v0, "actualSize":I
    iget-object v6, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1342
    .local v4, "thumbnailSize":I
    sub-int v6, v0, v4

    div-int/lit8 v5, v6, 0x2

    .line 1343
    .local v5, "topMargin":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    const v7, 0x7f0f0045

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v8, v5, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1345
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    const v7, 0x7f0f00a3

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1347
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    const v7, 0x7f0f00a9

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1350
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setupBackButton()V

    .line 1352
    .end local v0    # "actualSize":I
    .end local v4    # "thumbnailSize":I
    .end local v5    # "topMargin":I
    :cond_1
    return-void
.end method

.method private setupViewFinderLayout()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 498
    const/4 v1, 0x0

    .line 499
    .local v1, "overlay":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->SMART_COVER_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "overlay":Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 503
    .restart local v1    # "overlay":Landroid/widget/RelativeLayout;
    :cond_0
    if-nez v1, :cond_1

    .line 504
    iget-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1    # "overlay":Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 509
    .restart local v1    # "overlay":Landroid/widget/RelativeLayout;
    :cond_1
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, "captureFeedbackContextView":Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 511
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 512
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 513
    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 515
    return-object v1
.end method

.method private startEarlyThumbnailInsertAnimation(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(I)V

    .line 1208
    :cond_0
    return-void
.end method

.method private updateViewFinderCaptureAreaTouchEventHandling()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    new-instance v1, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V

    .line 555
    return-void
.end method


# virtual methods
.method public canSwitchStorage()Z
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isMenuAvailable()Z

    move-result v0

    return v0
.end method

.method public changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .locals 2
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .prologue
    .line 682
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 685
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->hide()V

    .line 689
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setVisibility(I)V

    .line 696
    :cond_1
    return-void
.end method

.method public checkSurfaceIsPreparedOrNot()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 240
    return-void
.end method

.method protected computePreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    const/4 v5, 0x0

    .line 305
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 306
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->TAG:Ljava/lang/String;

    const-string v4, "Preview size is not set."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 337
    :goto_0
    return-object v2

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    if-nez v3, :cond_2

    .line 311
    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {p1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    .line 315
    :cond_2
    int-to-float v3, p2

    int-to-float v4, p3

    div-float v1, v3, v4

    .line 316
    .local v1, "previewAspectRatio":F
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v3, v3, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->width:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v4, v4, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->height:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 318
    .local v0, "coverModeViewAspectRatio":F
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 320
    .local v2, "previewRect":Landroid/graphics/Rect;
    cmpl-float v3, v1, v0

    if-lez v3, :cond_3

    .line 323
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v3, v3, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->width:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v4, v4, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 331
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v3, v3, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    iget v4, v4, Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;->height:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public ensureVideoAutoReviewSettingHasLoaded()V
    .locals 0

    .prologue
    .line 1357
    return-void
.end method

.method public fadeoutCounter()V
    .locals 0

    .prologue
    .line 1220
    return-void
.end method

.method public getAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 1

    .prologue
    .line 1128
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method public getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 1

    .prologue
    .line 1137
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-object v0
.end method

.method public getRequestId(Z)I
    .locals 2
    .param p1, "isLoadingIconRequired"    # Z

    .prologue
    .line 1146
    const/4 v0, -0x1

    .line 1147
    .local v0, "requestId":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1148
    if-eqz p1, :cond_1

    .line 1149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createContentFrame()I

    move-result v0

    .line 1155
    :cond_0
    :goto_0
    return v0

    .line 1151
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result v0

    goto :goto_0
.end method

.method protected getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
    .locals 1

    .prologue
    .line 1400
    new-instance v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$3;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)V

    .line 1406
    .local v0, "listener":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
    return-object v0
.end method

.method public getTouchCapture()Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    return-object v0
.end method

.method public getVideoAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;
    .locals 1

    .prologue
    .line 1132
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    return-object v0
.end method

.method public hideHudIcons()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 823
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 824
    return-void
.end method

.method public isSetupHeadupDisplayInvoked()Z
    .locals 1

    .prologue
    .line 1416
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    return v0
.end method

.method public isTouchFocus()Z
    .locals 1

    .prologue
    .line 1231
    const/4 v0, 0x0

    return v0
.end method

.method public onCanceled()V
    .locals 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_CANCEL:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1275
    return-void
.end method

.method public onCloseCapturingModeSelector()V
    .locals 0

    .prologue
    .line 961
    return-void
.end method

.method public onCloseStorageDialog()V
    .locals 0

    .prologue
    .line 1250
    return-void
.end method

.method public onDeleted(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 1143
    return-void
.end method

.method public onFaceSelected(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CHANGE_SELECTED_FACE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1296
    return-void
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 6
    .param p1, "orient"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    .line 203
    const/4 v0, 0x1

    .line 204
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne p1, v1, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 213
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onLongPressed()V
    .locals 5

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_LONG_PRESS:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->FACE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1289
    return-void
.end method

.method public onModeFinish()V
    .locals 0

    .prologue
    .line 977
    return-void
.end method

.method public onModeSelect(Ljava/lang/String;)V
    .locals 0
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 969
    return-void
.end method

.method protected onOpenCapturingModeSelector()V
    .locals 0

    .prologue
    .line 953
    return-void
.end method

.method public onOpenStorageDialog()V
    .locals 0

    .prologue
    .line 1245
    return-void
.end method

.method public onReleased()V
    .locals 5

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->FACE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1282
    return-void
.end method

.method public varargs onStateChanged(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "currentState"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->onViewFinderStateChanged(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;[Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public onStorageAutoSwitch(Ljava/lang/String;)V
    .locals 3
    .param p1, "currentStorage"    # Ljava/lang/String;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_STORAGE_SHOULD_CHANGE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1262
    return-void
.end method

.method public onTouched()V
    .locals 5

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1269
    return-void
.end method

.method public removeEarlyThumbnailView()V
    .locals 1

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeEarlyThumbnailView()V

    .line 1216
    return-void
.end method

.method public requestInflate(Landroid/view/LayoutInflater;)V
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1237
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->getInflateItemsForFast()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->startInflateTask(Landroid/view/LayoutInflater;Ljava/util/List;)V

    .line 1240
    return-void
.end method

.method public varargs sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "updateEvent"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 828
    sget-object v8, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 944
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 831
    :pswitch_1
    aget-object v8, p2, v11

    check-cast v8, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-direct {p0, v8}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setupHeadUpDisplay(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    goto :goto_0

    .line 835
    :pswitch_2
    iget-object v8, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 840
    iget-object v8, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 844
    .local v1, "finderRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 845
    .local v7, "width":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 846
    .local v2, "height":I
    new-instance v6, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getHeight()I

    move-result v9

    invoke-direct {v6, v11, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 851
    .local v6, "textureRect":Landroid/graphics/Rect;
    invoke-static {v1, v6}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 853
    invoke-direct {p0, v7, v2}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->resizeEvfScope(II)V

    goto :goto_0

    .line 858
    .end local v1    # "finderRect":Landroid/graphics/Rect;
    .end local v2    # "height":I
    .end local v6    # "textureRect":Landroid/graphics/Rect;
    .end local v7    # "width":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    goto :goto_0

    .line 864
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    goto/16 :goto_0

    .line 871
    :pswitch_5
    aget-object v5, p2, v11

    check-cast v5, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .line 872
    .local v5, "sceneResult":Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->onSceneModeChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V

    goto/16 :goto_0

    .line 877
    .end local v5    # "sceneResult":Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;
    :pswitch_6
    aget-object v0, p2, v11

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .line 879
    .local v0, "faceResult":Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    iget-object v8, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    if-nez v8, :cond_1

    .line 880
    iget-object v8, v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 882
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->hasValidFaceId(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 885
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 887
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->setUuidFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    goto/16 :goto_0

    .line 909
    .end local v0    # "faceResult":Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    :pswitch_7
    aget-object v8, p2, v11

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setOrientation(I)V

    goto/16 :goto_0

    .line 914
    :pswitch_8
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->startCaptureFeedbackAnimation()V

    goto/16 :goto_0

    .line 919
    :pswitch_9
    aget-object v8, p2, v11

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setEarlyThumbnailView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 924
    :pswitch_a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->removeEarlyThumbnailView()V

    goto/16 :goto_0

    .line 930
    :pswitch_b
    aget-object v8, p2, v11

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 932
    .local v4, "requestId":I
    array-length v8, p2

    if-le v8, v10, :cond_2

    .line 933
    aget-object v3, p2, v10

    check-cast v3, Landroid/view/animation/Animation$AnimationListener;

    .line 934
    .local v3, "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {p0, v4, v3}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 936
    .end local v3    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_2
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->startEarlyThumbnailInsertAnimation(I)V

    goto/16 :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setCameraDevice(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0
    .param p1, "cameraDevice"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .line 192
    return-void
.end method

.method public setContentView()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setup(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public setCoverModeSizeInPixel(Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;)V
    .locals 1
    .param p1, "windowInfo"    # Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    .line 1300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCoverModeWindowInfo:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    if-eqz v0, :cond_0

    .line 1301
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->resizeViewfinderSize()V

    .line 1302
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setupRightContainer()V

    .line 1303
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->checkSurfaceIsPreparedOrNot()V

    .line 1305
    :cond_0
    return-void
.end method

.method protected setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    if-eqz v1, :cond_0

    .line 220
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 221
    .local v0, "degree":F
    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mBackButton:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setRotation(F)V

    .line 223
    .end local v0    # "degree":F
    :cond_0
    return-void
.end method

.method public setRecordingOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 1412
    return-void
.end method

.method public setStateMachine(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 1
    .param p1, "stateMachine"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 177
    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->addOnStateChangedListener(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;)V

    .line 187
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .line 188
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->removeOnStateChangedListener(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;)V

    goto :goto_0
.end method

.method public startCaptureFeedbackAnimation()V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-static {}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory;->createDefaultAnimation()Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V

    .line 1196
    :cond_0
    return-void
.end method

.method public startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1212
    return-void
.end method

.method public startHideThumbnail()V
    .locals 4

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 1163
    iget-object v2, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mActivity:Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    const v3, 0x7f040010

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1167
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$1;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)V

    .line 1184
    .local v1, "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1187
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1188
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 369
    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 375
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V

    .line 235
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-nez v0, :cond_0

    .line 409
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "CameraDevice has aleady been released."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopLiveViewFinder()V

    goto :goto_0
.end method

.method public updateGeotagIcon()V
    .locals 0

    .prologue
    .line 1422
    return-void
.end method
