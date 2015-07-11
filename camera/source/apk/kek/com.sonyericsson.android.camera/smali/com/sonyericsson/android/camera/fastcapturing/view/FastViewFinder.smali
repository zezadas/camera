.class public Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.super Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.source "FastViewFinder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;
.implements Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
.implements Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;
.implements Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionNonObjectTrackingStateListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionStateListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderStateListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$OnScreenCamcordButtonStateListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$OnScreenCaptureButtonStateListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingMenuOpenExecutor;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CameraSwitchExecutor;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$UiComponentBackgroundTouchEventHandler;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ReTrySetupHeadUpDisplayTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$PostUiInflatedTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

.field private mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

.field private mAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field private mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

.field private final mCameraSwitchExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mConditionIndicatorIcon:Landroid/widget/ImageView;

.field private mCounterView:Landroid/view/View;

.field private mCurrentDisplayingUiComponent:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

.field private mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

.field private mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

.field private final mInterceptSettingDialogKeyListener:Landroid/view/View$OnKeyListener;

.field private mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

.field private mIsInstantViewerOpened:Z

.field private mIsSetupHeadupDisplayInvoked:Z

.field private mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field private final mPostUiInflatedTask:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$PostUiInflatedTask;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRecordingOrientation:I

.field private mSceneIndicatorIcon:Landroid/widget/ImageView;

.field private mSceneIndicatorText:Landroid/widget/TextView;

.field private mSceneIndicatorTextRunnable:Ljava/lang/Runnable;

.field private mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

.field private mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

.field private final mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

.field private mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

.field private final mSettingMenuOpenExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingShortcutDialogOpenExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingShortcutGroupDialogOpenExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

.field private mSurfaceBlinderView:Landroid/view/View;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

.field private final mUiComponentBackgroundTouchEventHandler:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$UiComponentBackgroundTouchEventHandler;

.field private mVideoAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

.field private mVideoFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field private mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 254
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V

    .line 188
    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .line 194
    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    .line 195
    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 208
    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    .line 214
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsInstantViewerOpened:Z

    .line 222
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CameraSwitchExecutor;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CameraSwitchExecutor;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraSwitchExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 224
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingMenuOpenExecutor;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingMenuOpenExecutor;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingMenuOpenExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 226
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingShortcutDialogOpenExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 228
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingShortcutGroupDialogOpenExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 236
    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 250
    iput v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    .line 698
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$PostUiInflatedTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$PostUiInflatedTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPostUiInflatedTask:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$PostUiInflatedTask;

    .line 723
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$UiComponentBackgroundTouchEventHandler;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$UiComponentBackgroundTouchEventHandler;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mUiComponentBackgroundTouchEventHandler:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$UiComponentBackgroundTouchEventHandler;

    .line 1099
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mInterceptSettingDialogKeyListener:Landroid/view/View$OnKeyListener;

    .line 1121
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$2;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    .line 3767
    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    .line 258
    check-cast p1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 269
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 273
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .line 279
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->disableAccessibilityTalkBack()V

    .line 281
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    .line 283
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 284
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isAllDialogClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onToggleCameraSwitch()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onToggleMenuButton()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->generateChildrenSettinItem(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->hideBalloonTips()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->generateShortcutItemAdapter(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->convertTouchPointToDevicePreviewPositionRatio(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Landroid/view/SurfaceHolder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupAnimations()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeCurrentDisplayingUiComponent()V

    return-void
.end method

.method private addCountUpView(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    const/4 v2, -0x1

    .line 3770
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/burst/CountUpView;->createCountUpView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    .line 3771
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3773
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3775
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3776
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3778
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeContentOverlayView(ILandroid/view/View;)V

    .line 3780
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    invoke-virtual {v1, p1, v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContentOverlayView(ILandroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 3783
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    .line 3784
    return-void
.end method

.method private addItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;Z)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "item"    # Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 1321
    if-eqz p3, :cond_0

    .line 1322
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->generateShortcutSettingItem(Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 1326
    :goto_0
    return-object p1

    .line 1324
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/view/settings/SettingUtil;->getBlankItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addVideoChapter(Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;)V
    .locals 9
    .param p1, "chapter"    # Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v8

    .line 2576
    .local v8, "indicator":Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2592
    :cond_0
    :goto_0
    return-void

    .line 2581
    :cond_1
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->yuvData:[B

    iget-object v2, p1, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->format:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p1, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 2587
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2588
    .local v6, "compressedImage":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p1, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->rect:Landroid/graphics/Rect;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2589
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 2590
    .local v7, "compressedImageBytes":[B
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->orientation()I

    move-result v1

    invoke-virtual {v8, v7, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->addChapter([BI)V

    goto :goto_0
.end method

.method private cancelSelfTimerCountDownView()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->cancelSelfTimerCountDownAnimation()V

    .line 1044
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1047
    :cond_0
    return-void
.end method

.method private changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;Z)V
    .locals 7
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;
    .param p2, "isSelfTimerContdown"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3424
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3505
    :cond_0
    :goto_0
    return-void

    .line 3429
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3501
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewFinder.changeScreenButtonBackground():[Unexpected system bar status.] state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3435
    :pswitch_0
    if-eqz p2, :cond_2

    .line 3436
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 3446
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3447
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 3453
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_0

    .line 3441
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getCaptureButtonTypeAccoringToSelfTimerSetting()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_1

    .line 3449
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_2

    .line 3457
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getValueFromFrameSize(II)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 3460
    .local v0, "cap":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    if-eqz v0, :cond_0

    .line 3464
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->isMediaRecorderPauseAndResumeSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3466
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 3469
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 3472
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 3482
    :goto_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_0

    .line 3483
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 3484
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 3485
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 3474
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 3477
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 3480
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_3

    .line 3490
    .end local v0    # "cap":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->RESTART_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 3493
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 3496
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 3429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private changeToLayoutWithSetupState(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 2
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    .line 795
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 819
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setupHeadUpDisplay():[Illegal State]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoIdleView(Z)V

    .line 799
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->showBalloonTips()V

    .line 821
    :goto_0
    return-void

    .line 803
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoCaptureView()V

    goto :goto_0

    .line 807
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToVideoIdleView()V

    .line 809
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->showBalloonTips()V

    goto :goto_0

    .line 815
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToVideoRecordingView()V

    goto :goto_0

    .line 795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeToPauseView()V
    .locals 1

    .prologue
    .line 1950
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1952
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1964
    :goto_0
    return-void

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocus()V

    .line 1961
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    .line 1963
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeReviewWindow()V

    goto :goto_0
.end method

.method private changeToPhotoBurstView(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "startAnimation"    # Ljava/lang/Boolean;

    .prologue
    .line 2053
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2055
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 2061
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    .line 2064
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2065
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->startCaptureFeedbackAnimation()V

    goto :goto_0
.end method

.method private changeToPhotoCaptureView()V
    .locals 1

    .prologue
    .line 2041
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2043
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2050
    :goto_0
    return-void

    .line 2049
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    goto :goto_0
.end method

.method private changeToPhotoCaptureWaitForAfDoneView()V
    .locals 1

    .prologue
    .line 2029
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2031
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2038
    :goto_0
    return-void

    .line 2037
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    goto :goto_0
.end method

.method private changeToPhotoDialogView(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;)V
    .locals 2
    .param p1, "kind"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    .prologue
    .line 2134
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2161
    :goto_0
    return-void

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onUiComponentOverlaid()V

    .line 2142
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$UiComponentKind:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2160
    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    goto :goto_0

    .line 2144
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2145
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2146
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    goto :goto_1

    .line 2148
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2149
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    goto :goto_1

    .line 2154
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    goto :goto_1

    .line 2142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeToPhotoFocusDoneView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 2012
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2014
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2026
    :cond_0
    :goto_0
    return-void

    .line 2020
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoFocusView()V

    .line 2023
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onAutoFocusDone(Z)V

    goto :goto_0
.end method

.method private changeToPhotoFocusSearchView()V
    .locals 1

    .prologue
    .line 1995
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1997
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 2003
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoFocusView()V

    .line 2006
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onAutoFocusStarted()V

    goto :goto_0
.end method

.method private changeToPhotoFocusView()V
    .locals 1

    .prologue
    .line 1983
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1992
    :goto_0
    return-void

    .line 1988
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    .line 1991
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    goto :goto_0
.end method

.method private changeToPhotoIdleView(Z)V
    .locals 2
    .param p1, "isResetFocusPositionNeeded"    # Z

    .prologue
    .line 1862
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1864
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1888
    :goto_0
    return-void

    .line 1870
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;Z)V

    .line 1871
    if-eqz p1, :cond_2

    .line 1873
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 1878
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onRecordingStop()V

    .line 1880
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraId()I

    move-result v0

    if-nez v0, :cond_1

    .line 1882
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneIndicatorVisibleAllNotificationIndicators(I)V

    .line 1886
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showLeftIconContainer()V

    .line 1887
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setOrientation(I)V

    goto :goto_0

    .line 1876
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onUiComponentRemoved()V

    goto :goto_1
.end method

.method private changeToPhotoSelftimerView()V
    .locals 2

    .prologue
    .line 1891
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1893
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1904
    :goto_0
    return-void

    .line 1898
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;Z)V

    .line 1899
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 1900
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    .line 1901
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->showSelfTimerCountDownView()V

    .line 1902
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->startSelfTimerCountDownAnimation()V

    .line 1903
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setOrientation(I)V

    goto :goto_0
.end method

.method private changeToPhotoZoomingView()V
    .locals 1

    .prologue
    .line 1967
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1969
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1979
    :goto_0
    return-void

    .line 1975
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    .line 1978
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    goto :goto_0
.end method

.method private changeToReadyForRecordView()V
    .locals 1

    .prologue
    .line 2098
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2099
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2108
    :goto_0
    return-void

    .line 2104
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    .line 2107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    goto :goto_0
.end method

.method private changeToVideoIdleView()V
    .locals 2

    .prologue
    .line 1907
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1909
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1923
    :goto_0
    return-void

    .line 1915
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;Z)V

    .line 1918
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 1919
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onRecordingStop()V

    .line 1922
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneIndicatorVisibleAllNotificationIndicators(I)V

    goto :goto_0
.end method

.method private changeToVideoRecordingPauseView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1926
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1928
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1947
    :goto_0
    return-void

    .line 1934
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;Z)V

    .line 1937
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1938
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 1942
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 1943
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onRecordingStop()V

    .line 1946
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    goto :goto_0
.end method

.method private changeToVideoRecordingView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2070
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2071
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2095
    :goto_0
    return-void

    .line 2076
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->hide()V

    .line 2079
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;Z)V

    .line 2082
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 2084
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onRecordingStart()V

    .line 2086
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    .line 2089
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    .line 2092
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    .line 2094
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setOrientation(I)V

    goto :goto_0
.end method

.method private changeToVideoZoomingWhileRecordingView()V
    .locals 1

    .prologue
    .line 2118
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2120
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    :goto_0
    return-void

    .line 2126
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 2129
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    goto :goto_0
.end method

.method private checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V
    .locals 9
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 406
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-nez v4, :cond_0

    .line 451
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 412
    .local v2, "previewRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isCloseDeviceTaskWorking()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 415
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    .line 416
    new-instance v4, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SurfaceAvailableRetryTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Landroid/view/SurfaceHolder;II)V

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARATION_FAILED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 429
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_3
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 432
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 435
    .local v3, "textureRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->computePreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 441
    .local v0, "finderRect":Landroid/graphics/Rect;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 443
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->notifyOnEvfPrepared(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 447
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->clearSurfaceView()V

    .line 449
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->resizeEvfScope(II)V

    goto :goto_0
.end method

.method private clearSurfaceView()V
    .locals 2

    .prologue
    .line 3998
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 3999
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 4000
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 4001
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4002
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 4005
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

.method private closeCurrentDisplayingUiComponent()V
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCurrentDisplayingUiComponent:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    if-nez v0, :cond_0

    .line 2170
    :goto_0
    return-void

    .line 2168
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeCapturingModeSelector()V

    .line 2169
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeSettingDialog()V

    goto :goto_0
.end method

.method private closeSettingDialog()V
    .locals 1

    .prologue
    .line 3867
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    .line 3870
    :cond_0
    return-void
.end method

.method private convertTouchPointToDevicePreviewPositionRatio(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 8
    .param p1, "touchPointOnScreen"    # Landroid/graphics/Point;

    .prologue
    .line 3365
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 3366
    .local v1, "finderW":I
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 3369
    .local v0, "finderH":I
    iget v6, p1, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getLeft()I

    move-result v7

    sub-int v2, v6, v7

    .line 3370
    .local v2, "finderX":I
    iget v6, p1, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getTop()I

    move-result v7

    sub-int v3, v6, v7

    .line 3373
    .local v3, "finderY":I
    int-to-float v6, v2

    int-to-float v7, v1

    div-float v4, v6, v7

    .line 3374
    .local v4, "ratioX":F
    int-to-float v6, v3

    int-to-float v7, v0

    div-float v5, v6, v7

    .line 3376
    .local v5, "ratioY":F
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private createSelfTimerCountDownView(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 3
    .param p1, "selfTimer"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 1030
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 1031
    return-void
.end method

.method private createSettingChangeExecutor(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1313
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;

    invoke-direct {v0, p1, p2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;-><init>(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    .line 1316
    .local v0, "parameterChanger":Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;

    new-instance v2, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;

    invoke-direct {v2, v0}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$CloseExecutor;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V

    return-object v1
.end method

.method private doChangeCondition(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 4
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .prologue
    .line 2688
    iget-object v2, p1, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->create(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;)Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    move-result-object v0

    .line 2692
    .local v0, "condition":Lcom/sonymobile/cameracommon/view/RecognizedCondition;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getIconId()I

    move-result v1

    .line 2695
    .local v1, "conditionIconId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2696
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2697
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientationForUiNotRotateInRecording()I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 2699
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2703
    :goto_0
    return-void

    .line 2701
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private doChangeSceneMode(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 12
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2621
    iget-object v5, p1, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    invoke-static {v5}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->create(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)Lcom/sonymobile/cameracommon/view/RecognizedScene;

    move-result-object v3

    .line 2624
    .local v3, "scene":Lcom/sonymobile/cameracommon/view/RecognizedScene;
    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getIconId()I

    move-result v2

    .line 2625
    .local v2, "iconId":I
    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getTextId()I

    move-result v4

    .line 2628
    .local v4, "textId":I
    if-lez v2, :cond_1

    if-lez v4, :cond_1

    .line 2646
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2648
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const v6, 0x7f04000a

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2650
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2653
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientationForUiNotRotateInRecording()I

    move-result v6

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setRotation(F)V

    .line 2655
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2658
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientationForUiNotRotateInRecording()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2659
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2660
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2663
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const v6, 0x7f040008

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AlphaAnimation;

    .line 2667
    .local v1, "fadeoutAnimation":Landroid/view/animation/AlphaAnimation;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorTextRunnable:Ljava/lang/Runnable;

    if-nez v5, :cond_0

    .line 2668
    new-instance v5, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$3;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$3;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    iput-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorTextRunnable:Ljava/lang/Runnable;

    .line 2677
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2678
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->getStartOffset()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->getDuration()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2680
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2685
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "fadeoutAnimation":Landroid/view/animation/AlphaAnimation;
    :goto_1
    return-void

    .line 2630
    :cond_1
    iget-boolean v5, p1, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->isMacroRange:Z

    if-eqz v5, :cond_2

    .line 2633
    const v2, 0x7f020083

    .line 2634
    const v4, 0x7f09004c

    goto :goto_0

    .line 2637
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2638
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2639
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2640
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2682
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2683
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private generateChildrenSettinItem(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1276
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    const/4 v6, 0x0

    .line 1279
    .local v6, "values":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    const/4 v1, 0x0

    .line 1281
    .local v1, "currentValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v7, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 1296
    :goto_0
    if-eqz v6, :cond_1

    .line 1297
    move-object v0, v6

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 1298
    .local v5, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getIconId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getTextId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-direct {p0, p2, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->createSettingChangeExecutor(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    if-ne v1, v5, :cond_0

    move v7, v8

    :goto_2
    invoke-virtual {v9, v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1283
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getFlashOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v6

    move-object v7, v6

    .line 1284
    check-cast v7, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    check-cast v7, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    .line 1285
    goto :goto_0

    .line 1288
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v6

    .line 1289
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 1290
    goto :goto_0

    .line 1298
    .restart local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    .line 1307
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_1
    return-object v4

    .line 1281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateShortcutItemAdapter(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 7
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v6, 0x1

    .line 1153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->updateSelectability()V

    .line 1154
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 1155
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {p1, v4}, Lcom/sonyericsson/android/camera/view/settings/SettingList;->getSettingShortcutList(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/app/Activity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 1156
    .local v3, "item":Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1170
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v1

    .line 1171
    .local v1, "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    if-nez v1, :cond_1

    .line 1172
    invoke-direct {p0, v0, v3, v6}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->addItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;Z)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    goto :goto_0

    .line 1158
    .end local v1    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :pswitch_0
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->addItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;Z)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    .line 1159
    goto :goto_0

    .line 1162
    :pswitch_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1163
    sget-object v4, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->addItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;Z)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    goto :goto_0

    .line 1165
    :cond_0
    invoke-direct {p0, v0, v3, v6}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->addItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;Z)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    .line 1167
    goto :goto_0

    .line 1174
    .restart local v1    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isVisible(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->addItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;Z)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    goto :goto_0

    .line 1182
    .end local v1    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .end local v3    # "item":Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    :cond_2
    return-object v0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateShortcutSettingItem(Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 6
    .param p1, "shortcut"    # Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .prologue
    const/4 v5, 0x0

    .line 1219
    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1269
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut type[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1221
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 1222
    .local v0, "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKeyTextId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraSwitchExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    .line 1266
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :goto_0
    return-object v3

    .line 1230
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getFlashOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v2

    .line 1231
    .local v2, "values":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .end local v2    # "values":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    .line 1232
    .restart local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    if-nez v0, :cond_0

    .line 1233
    invoke-static {}, Lcom/sonyericsson/android/camera/view/settings/SettingUtil;->getBlankItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    goto :goto_0

    .line 1235
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getTextId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingShortcutGroupDialogOpenExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    goto :goto_0

    .line 1244
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 1245
    .restart local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    if-nez v0, :cond_1

    .line 1246
    invoke-static {}, Lcom/sonyericsson/android/camera/view/settings/SettingUtil;->getBlankItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    goto :goto_0

    .line 1248
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getTextId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingShortcutDialogOpenExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    goto :goto_0

    .line 1257
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList;->getDefaultTab(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v1

    .line 1258
    .local v1, "item":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    const v4, 0x7f020065

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getTextId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingMenuOpenExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    goto/16 :goto_0

    .line 1266
    .end local v1    # "item":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :pswitch_4
    invoke-static {}, Lcom/sonyericsson/android/camera/view/settings/SettingUtil;->getBlankItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    goto/16 :goto_0

    .line 1219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getCaptureButtonTypeAccoringToSelfTimerSetting()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .locals 2

    .prologue
    .line 3405
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3415
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    :goto_0
    return-object v0

    .line 3407
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_LONG:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    goto :goto_0

    .line 3409
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_SHORT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    goto :goto_0

    .line 3411
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_INSTANT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    goto :goto_0

    .line 3405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 8
    .param p1, "values"    # [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .prologue
    const/4 v5, 0x0

    .line 1448
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-eqz v6, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v2, v5

    .line 1463
    :cond_1
    :goto_0
    return-object v2

    .line 1452
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getFlashSetting()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    .line 1454
    .local v1, "currentFlashSetting":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    if-nez v1, :cond_3

    move-object v2, v5

    .line 1455
    goto :goto_0

    .line 1458
    :cond_3
    move-object v0, p1

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    .line 1459
    .local v2, "flash":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1458
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "flash":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    :cond_5
    move-object v2, v5

    .line 1463
    goto :goto_0
.end method

.method private getDownHeadUpDisplay()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1619
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1623
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->hideSurfaceBlinderView()V

    .line 1624
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->releaseSurfaceBlinderView()V

    .line 1626
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 1629
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->release()V

    .line 1631
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 1634
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    if-eqz v0, :cond_2

    .line 1635
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V

    .line 1636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->release()V

    .line 1637
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    .line 1641
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    .line 1642
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    .line 1643
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    .line 1646
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_3

    .line 1647
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->release()V

    .line 1648
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 1652
    :cond_3
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .line 1653
    return-void
.end method

.method private hideBalloonTips()V
    .locals 1

    .prologue
    .line 3842
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->hide()V

    .line 3843
    return-void
.end method

.method private hideSurfaceBlinderView()V
    .locals 3

    .prologue
    .line 3341
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3343
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3344
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 3345
    .local v0, "previewOverlayContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 3346
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3349
    .end local v0    # "previewOverlayContainer":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method private isAllDialogClosed()Z
    .locals 1

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->isStorageDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3880
    :cond_0
    const/4 v0, 0x0

    .line 3882
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p0, "rectA"    # Landroid/graphics/Rect;
    .param p1, "rectB"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 454
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 455
    .local v0, "aspectA":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 457
    .local v1, "aspectB":F
    mul-float v2, v0, v4

    float-to-int v2, v2

    mul-float v3, v1, v4

    float-to-int v3, v3

    if-ne v2, v3, :cond_0

    .line 458
    const/4 v2, 0x1

    .line 461
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Z
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    .line 1186
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    move-result-object v0

    .line 1187
    .local v0, "selectability":Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVisible(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z
    .locals 6
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    const/4 v5, 0x1

    .line 1192
    if-nez p1, :cond_1

    .line 1200
    :cond_0
    return v5

    .line 1195
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1196
    .local v2, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadSettingsFromSharedPreferencesDeviceAndResources()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->loadSettingsFromSharedPreferencesDeviceAndResources(I)V

    .line 792
    return-void
.end method

.method private loadSettingsFromSharedPreferencesDeviceAndResources(I)V
    .locals 5
    .param p1, "cameraId"    # I

    .prologue
    const/4 v4, 0x1

    .line 733
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .line 737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPrefs:Landroid/content/SharedPreferences;

    .line 742
    packed-switch p1, :pswitch_data_0

    .line 752
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 767
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    .line 777
    :cond_0
    if-nez p1, :cond_2

    .line 779
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 788
    :goto_2
    return-void

    .line 744
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    goto :goto_0

    .line 747
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    goto :goto_0

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-static {v0, v4, p1, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    goto :goto_1

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-static {v0, v4, p1, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    goto :goto_2

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 174
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

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->TAG:Ljava/lang/String;

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

    .line 179
    return-void
.end method

.method private notifyOnEvfPrepared(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateDevicePreviewSize(II)V

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->updateCaptureAreaSize()V

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 513
    return-void
.end method

.method private onCameraModeChangedTo(I)V
    .locals 7
    .param p1, "cameraType"    # I

    .prologue
    .line 2173
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCameraParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2174
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 2235
    :cond_0
    :goto_0
    return-void

    .line 2179
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2185
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v3, v4, Landroid/hardware/Camera$Size;->width:I

    .line 2186
    .local v3, "previewWidth":I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v2, v4, Landroid/hardware/Camera$Size;->height:I

    .line 2189
    .local v2, "previewHeight":I
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    int-to-float v5, v3

    int-to-float v6, v2

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v0

    .line 2192
    .local v0, "finderRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 2194
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    .line 2197
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v4, v3, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateDevicePreviewSize(II)V

    .line 2198
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 2200
    packed-switch p1, :pswitch_data_0

    .line 2229
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ViewFinder.onCameraModeChangedTo():[INVALID]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2203
    :pswitch_0
    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupCapturingModeSelectorButton(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 2206
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->updateViewFinderCaptureAreaTouchEventHandling(Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 2209
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->showShortcutTray()V

    .line 2210
    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupZoomBar(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 2234
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setOrientation(I)V

    goto :goto_0

    .line 2216
    :pswitch_1
    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupCapturingModeSelectorButton(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 2219
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->updateViewFinderCaptureAreaTouchEventHandling(Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 2222
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->showShortcutTray()V

    .line 2223
    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupZoomBar(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    goto :goto_1

    .line 2200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 2706
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2719
    :goto_0
    return-void

    .line 2711
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->updateUuidBeforeUpdateView(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 2712
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2713
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setMirrored(Z)V

    .line 2718
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    goto :goto_0

    .line 2715
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setMirrored(Z)V

    goto :goto_1
.end method

.method private onFaceNameDetected(Ljava/util/List;)V
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
    .line 2722
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2728
    :goto_0
    return-void

    .line 2727
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onFaceNameDetected(Ljava/util/List;)V

    goto :goto_0
.end method

.method private onLazyInitializationTaskRun()V
    .locals 0

    .prologue
    .line 2601
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupCapturingModeSelector()V

    .line 2602
    return-void
.end method

.method private onSceneModeChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .prologue
    .line 2605
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2617
    :cond_0
    :goto_0
    return-void

    .line 2609
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2615
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->doChangeSceneMode(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V

    .line 2616
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->doChangeCondition(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V

    goto :goto_0
.end method

.method private onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V
    .locals 0
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 403
    return-void
.end method

.method private onToggleCameraSwitch()V
    .locals 3

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_SWITCH_CAMERA:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1500
    return-void
.end method

.method private onToggleMenuButton()V
    .locals 4

    .prologue
    const/16 v3, 0x52

    .line 1487
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 1491
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finish()V

    .line 1496
    :goto_0
    return-void

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method private onTrackedObjectStateUpdated(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 2731
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2737
    :goto_0
    return-void

    .line 2736
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onObjectTracked(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    goto :goto_0
.end method

.method private varargs onViewFinderStateChanged(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "currentState"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1660
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1833
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1670
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->resumeView()V

    .line 1671
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getTargetCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->loadSettingsFromSharedPreferencesDeviceAndResources(I)V

    .line 1673
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 1678
    :pswitch_2
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCurrentDisplayingUiComponent:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    .line 1680
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoIdleView(Z)V

    .line 1683
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    .line 1684
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToDimSystemUi()V

    goto :goto_0

    .line 1686
    :cond_2
    aget-object v0, p2, v2

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    if-eq v0, v1, :cond_0

    .line 1687
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToDimSystemUi()V

    goto :goto_0

    .line 1693
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoSelftimerView()V

    goto :goto_0

    .line 1699
    :pswitch_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoZoomingView()V

    goto :goto_0

    .line 1706
    :pswitch_5
    aget-object v0, p2, v2

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCurrentDisplayingUiComponent:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    .line 1708
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCurrentDisplayingUiComponent:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoDialogView(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;)V

    .line 1709
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToRecoverSystemUi()V

    goto :goto_0

    .line 1717
    :pswitch_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToRemoveSystemUi()V

    .line 1718
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoFocusSearchView()V

    goto :goto_0

    .line 1722
    :pswitch_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoFocusSearchView()V

    goto :goto_0

    .line 1729
    :pswitch_8
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoFocusDoneView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1733
    :pswitch_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoCaptureWaitForAfDoneView()V

    goto :goto_0

    .line 1737
    :pswitch_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoCaptureView()V

    goto :goto_0

    .line 1744
    :pswitch_b
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoBurstView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1748
    :pswitch_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-eqz v0, :cond_3

    .line 1749
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 1753
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showContentsViewController()V

    goto :goto_0

    .line 1757
    :pswitch_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToVideoRecordingView()V

    .line 1759
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToDimSystemUi()V

    goto :goto_0

    .line 1763
    :pswitch_e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToVideoRecordingView()V

    .line 1766
    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_5

    .line 1767
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToDimSystemUi()V

    goto/16 :goto_0

    .line 1769
    :cond_5
    aget-object v0, p2, v2

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    if-eq v0, v1, :cond_0

    .line 1770
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToDimSystemUi()V

    goto/16 :goto_0

    .line 1788
    :pswitch_f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToVideoZoomingWhileRecordingView()V

    goto/16 :goto_0

    .line 1792
    :pswitch_10
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->hideSurfaceBlinderView()V

    .line 1793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1794
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->pauseView()V

    .line 1795
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPauseView()V

    goto/16 :goto_0

    .line 1800
    :pswitch_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-eqz v0, :cond_6

    .line 1801
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocus()V

    .line 1803
    :cond_6
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoIdleView(Z)V

    .line 1805
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToDimSystemUi()V

    goto/16 :goto_0

    .line 1809
    :pswitch_12
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->release()V

    .line 1812
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getDownHeadUpDisplay()V

    goto/16 :goto_0

    .line 1816
    :pswitch_13
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToVideoRecordingPauseView()V

    goto/16 :goto_0

    .line 1822
    :pswitch_14
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    goto/16 :goto_0

    .line 1826
    :pswitch_15
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToRemoveSystemUi()V

    .line 1827
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToReadyForRecordView()V

    goto/16 :goto_0

    .line 1660
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private openInstantViewer([BLjava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 12
    .param p1, "pictureData"    # [B
    .param p2, "videoPath"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    const/4 v6, 0x0

    .line 3606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsInstantViewerOpened:Z

    .line 3609
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_0

    .line 3610
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    const v1, 0x7f0f006c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 3612
    .local v11, "viewFinder":Landroid/widget/FrameLayout;
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v4, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v2, p3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v3, p3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-direct {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v7, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v8

    move-object v2, p1

    move-object v3, p2

    move-object v9, p0

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3625
    iput-boolean v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsInstantViewerOpened:Z

    .line 3626
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeReviewWindow()V

    .line 3629
    .end local v11    # "viewFinder":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method private pauseView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1579
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->pause()V

    .line 1581
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 1583
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->onPause()V

    .line 1591
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->clearPreInflatedViews()V

    .line 1592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    .line 1597
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 1598
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    .line 1599
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .line 1600
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 1601
    return-void
.end method

.method private preparationForInstantViewer()V
    .locals 2

    .prologue
    .line 3684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3686
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3687
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 3691
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_1

    .line 3692
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setUri(Landroid/net/Uri;)V

    .line 3694
    :cond_1
    return-void
.end method

.method private releaseSurfaceBlinderView()V
    .locals 3

    .prologue
    .line 3352
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3353
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3354
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 3355
    .local v0, "previewOverlayContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 3356
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3358
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    .line 3360
    .end local v0    # "previewOverlayContainer":Landroid/widget/FrameLayout;
    :cond_1
    return-void
.end method

.method private removeCountUpView(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 3798
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3799
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeContentOverlayView(ILandroid/view/View;)V

    .line 3801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    .line 3803
    :cond_0
    return-void
.end method

.method private removeSelfTimerCountDownView()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 1039
    :cond_0
    return-void
.end method

.method private resizeEvfScope(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 519
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 521
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "resizeEvfScope():[Already resized]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 528
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 529
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 530
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 532
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    return-void
.end method

.method private resumeView()V
    .locals 1

    .prologue
    .line 1569
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->resume()V

    .line 1571
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 1572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->onResume()V

    .line 1576
    :cond_0
    return-void
.end method

.method private setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 3787
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3788
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/burst/CountUpView;->setCount(Landroid/view/View;I)V

    .line 3790
    :cond_0
    return-void
.end method

.method private setEarlyThumbnailView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3745
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3746
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setEarlyThumbnailView(Landroid/view/View;)V

    .line 3748
    :cond_0
    return-void
.end method

.method private setSceneIndicatorVisibleAllNotificationIndicators(I)V
    .locals 4
    .param p1, "cameraType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1526
    packed-switch p1, :pswitch_data_0

    .line 1547
    :goto_0
    return-void

    .line 1529
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1531
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1539
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1540
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1544
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSceneNotificationIndicatorsInvisible(Z)V
    .locals 3
    .param p1, "recording"    # Z

    .prologue
    const/4 v2, 0x4

    .line 1551
    if-nez p1, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1553
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1559
    return-void
.end method

.method private setupAnimations()V
    .locals 3

    .prologue
    .line 1562
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1563
    .local v0, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0f0045

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1566
    return-void
.end method

.method private setupAutoReview()V
    .locals 3

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-nez v0, :cond_0

    .line 3558
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const v1, 0x7f0f0017

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .line 3559
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    .line 3561
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setAutoReviweDuration(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V

    .line 3562
    return-void
.end method

.method private setupCaptureArea(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 2
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    .line 889
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->updateCaptureAreaSize()V

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->updateViewFinderCaptureAreaTouchEventHandling(Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 893
    return-void
.end method

.method private setupCapturingModeSelectorButton(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 4
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    .line 3508
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDesplayReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3518
    :goto_0
    return-void

    .line 3513
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ModeName;->FAST_CAPTURING_CAMERA:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ModeName;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ModeName;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020012

    const v3, 0x7f0900d1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;-><init>(Ljava/lang/String;II)V

    .line 3517
    .local v0, "attribute":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setCurrentCapturingMode(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;)V

    goto :goto_0
.end method

.method private setupContentsView()V
    .locals 5

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 1072
    return-void
.end method

.method private setupFocusRectangles()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 829
    const/4 v3, 0x0

    .line 830
    .local v3, "devicePreviewWidth":I
    const/4 v4, 0x0

    .line 831
    .local v4, "devicePreviewHeight":I
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCameraParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_4

    .line 833
    :cond_0
    const/4 v3, 0x0

    .line 834
    const/4 v4, 0x0

    .line 843
    :goto_0
    new-instance v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    invoke-direct {v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;-><init>()V

    .line 844
    .local v5, "focusRectanglesViewList":Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->rectanglesContainer:Landroid/widget/RelativeLayout;

    .line 848
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    new-array v1, v7, [Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    .line 850
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->trackedObjectView:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 853
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->singleAfView:Landroid/widget/RelativeLayout;

    .line 856
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->touchAfView:Landroid/widget/RelativeLayout;

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-nez v0, :cond_2

    .line 863
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;IILcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isFaceDetectionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 874
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    if-ne v0, v1, :cond_5

    .line 875
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->enableFaceTouchCapture()V

    .line 881
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setVisibility(I)V

    .line 882
    return-void

    .line 836
    .end local v5    # "focusRectanglesViewList":Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCameraParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    .line 838
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCameraParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    goto/16 :goto_0

    .line 877
    .restart local v5    # "focusRectanglesViewList":Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->disableFaceTouchCapture()V

    goto :goto_1
.end method

.method private setupHeadUpDisplay(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 8
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 552
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isSecurePhotoLaunchedByIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    :cond_0
    iput-boolean v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    .line 557
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isDeviceInSecurityLock()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    if-eqz v3, :cond_2

    .line 650
    :goto_0
    return-void

    .line 562
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 568
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->joinInflateTask()V

    .line 570
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 572
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 574
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    new-instance v4, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ReTrySetupHeadUpDisplayTask;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ReTrySetupHeadUpDisplayTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 585
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v1

    .line 587
    .local v1, "isHeadUpDesplayReady":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isInflated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 588
    sget-object v3, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setPreInflatedHeadUpDisplay(Landroid/view/View;)V

    .line 591
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestSetupHeadUpDisplay()V

    .line 596
    if-nez v1, :cond_5

    .line 602
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupViewFinderLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 603
    .local v2, "overlay":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 606
    .end local v2    # "overlay":Landroid/widget/RelativeLayout;
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->loadSettingsFromSharedPreferencesDeviceAndResources()V

    .line 607
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupZoomBar(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 608
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupShortcutTray(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 609
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupContentsView()V

    .line 613
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupCaptureArea(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 614
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupFocusRectangles()V

    .line 616
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupOnScreenCaptureButton(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 617
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupCapturingModeSelectorButton(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 618
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupAutoReview()V

    .line 619
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupSceneNotificationIndicator()V

    .line 620
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupSelfTimerCountDownView()V

    .line 622
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setOrientation(I)V

    .line 623
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToLayoutWithSetupState(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    .line 630
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 631
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_6

    .line 632
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPostUiInflatedTask:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$PostUiInflatedTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 644
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->clearPreInflatedViews()V

    .line 646
    iput-boolean v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    goto/16 :goto_0
.end method

.method private setupOnScreenCaptureButton(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 6
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    const/4 v5, 0x0

    .line 976
    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;Z)V

    .line 979
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$OnScreenCaptureButtonStateListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$OnScreenCaptureButtonStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V

    .line 980
    .local v1, "photo":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$OnScreenCamcordButtonStateListener;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$OnScreenCamcordButtonStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Z)V

    .line 981
    .local v2, "video":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$OnScreenCamcordButtonStateListener;

    invoke-direct {v0, p0, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$OnScreenCamcordButtonStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Z)V

    .line 983
    .local v0, "pauseRestart":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 984
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_LONG:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 985
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_SHORT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 986
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_INSTANT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 987
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 988
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 989
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 992
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v3, v4, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 995
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->RESTART_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v3, v4, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 998
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 999
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1000
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE_IN_SEQUENTIAL_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 1003
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 1004
    return-void
.end method

.method private setupSceneNotificationIndicator()V
    .locals 4

    .prologue
    .line 1504
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 1509
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/Notification;

    .line 1511
    .local v0, "notification":Lcom/sonymobile/cameracommon/view/Notification;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getModeIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1515
    .end local v0    # "notification":Lcom/sonymobile/cameracommon/view/Notification;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const v2, 0x7f0f0071

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    .line 1516
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    .line 1519
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const v2, 0x7f0f006f

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    .line 1522
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    .line 1523
    return-void
.end method

.method private setupSelfTimerCountDownView()V
    .locals 3

    .prologue
    .line 1007
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1019
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setupSelfTimerCountDownView [Irregular value] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->createSelfTimerCountDownView(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 1023
    :goto_0
    return-void

    .line 1016
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->removeSelfTimerCountDownView()V

    goto :goto_0

    .line 1007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupShortcutTray(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 7
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    if-nez v0, :cond_0

    .line 1080
    new-instance v5, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {v5, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1082
    .local v5, "settingShortcutItems":Landroid/widget/ListView;
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v3

    const v4, 0x7f0f00a4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v4

    const v6, 0x7f0f009f

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .line 1089
    .end local v5    # "settingShortcutItems":Landroid/widget/ListView;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 1090
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->generateShortcutItemAdapter(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setupShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 1091
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mInterceptSettingDialogKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setOnInterceptKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1094
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->hideShortcutTray()V

    .line 1097
    :cond_1
    return-void
.end method

.method private setupViewFinderLayout()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "overlay":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "overlay":Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 658
    .restart local v1    # "overlay":Landroid/widget/RelativeLayout;
    :cond_0
    if-nez v1, :cond_1

    .line 659
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030012

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1    # "overlay":Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 664
    .restart local v1    # "overlay":Landroid/widget/RelativeLayout;
    :cond_1
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 666
    .local v0, "captureFeedbackContextView":Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 667
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 668
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 669
    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 670
    return-object v1
.end method

.method private setupZoomBar(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 3
    .param p1, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    .line 676
    .local v0, "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    if-eqz v0, :cond_0

    .line 677
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 684
    sget-object v1, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->PARTIAL_SUPER_RESOLUTION:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 681
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->NORMAL:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V

    goto :goto_0

    .line 677
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showBalloonTips()V
    .locals 2

    .prologue
    .line 3834
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->isBalloonTipsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3836
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->show()V

    .line 3837
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->setBalloonTipsOrientation(I)V

    .line 3839
    :cond_0
    return-void
.end method

.method private showSelfTimerCountDownView()V
    .locals 3

    .prologue
    .line 1050
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1053
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1054
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->removeSelfTimerCountDownView()V

    .line 1055
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 1056
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setVisibility(I)V

    .line 1058
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1059
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1061
    return-void
.end method

.method private startEarlyThumbnailInsertAnimation(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 3751
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3753
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(I)V

    .line 3755
    :cond_0
    return-void
.end method

.method private updateCaptureAreaSize()V
    .locals 2

    .prologue
    .line 897
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 899
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 900
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 901
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private updateSelectability()V
    .locals 2

    .prologue
    .line 1205
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->getSelectability(I)Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 1208
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 1209
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 1210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isCameraFront()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 1215
    :goto_0
    return-void

    .line 1213
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    goto :goto_0
.end method

.method private updateUiComponent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;)V
    .locals 0
    .param p1, "kind"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    .prologue
    .line 3893
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeToPhotoDialogView(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;)V

    .line 3894
    return-void
.end method

.method private updateUuidBeforeUpdateView(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 3942
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3943
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->isValidFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3949
    iget-object v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    iget v2, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    iget-object v1, v1, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget v0, v1, Landroid/hardware/Camera$Face;->id:I

    .line 3951
    .local v0, "uuid":I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setUserTouchFaceUuid(Ljava/lang/String;)V

    .line 3954
    .end local v0    # "uuid":I
    :cond_0
    return-void
.end method

.method private updateViewFinderCaptureAreaTouchEventHandling(Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V
    .locals 4
    .param p1, "touchCapture"    # Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
    .param p2, "state"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    .prologue
    const/4 v3, 0x1

    .line 908
    if-nez p1, :cond_0

    .line 972
    :goto_0
    return-void

    .line 914
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 928
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewFinder.updateViewFinderCaptureAreaTouchEventHandling()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 918
    :pswitch_0
    const/4 v0, 0x1

    .line 933
    .local v0, "cameraType":I
    :goto_1
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 936
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraId()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 938
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderStateListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V

    goto :goto_0

    .line 923
    .end local v0    # "cameraType":I
    :pswitch_2
    const/4 v0, 0x2

    .line 924
    .restart local v0    # "cameraType":I
    goto :goto_1

    .line 940
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isObjectTrackingSuppoted(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 942
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionStateListener;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V

    goto :goto_0

    .line 945
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionNonObjectTrackingStateListener;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionNonObjectTrackingStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V

    goto :goto_0

    .line 952
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraId()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 954
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V

    goto :goto_0

    .line 956
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 957
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isObjectTrackingSuppoted(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 959
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V

    goto/16 :goto_0

    .line 962
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V

    goto/16 :goto_0

    .line 967
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;)V

    goto/16 :goto_0

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 933
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public canSwitchStorage()Z
    .locals 1

    .prologue
    .line 3931
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isMenuAvailable()Z

    move-result v0

    return v0
.end method

.method public changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .locals 2
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .prologue
    const/4 v1, 0x4

    .line 1837
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1839
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1840
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideContentsViewController()V

    .line 1842
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1843
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setVisibility(I)V

    .line 1846
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1847
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1850
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1851
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1854
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1855
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1856
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1859
    :cond_3
    return-void
.end method

.method public checkSurfaceIsPreparedOrNot()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 396
    return-void
.end method

.method public closeReviewWindow()V
    .locals 1

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_0

    .line 3633
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hide()V

    .line 3635
    :cond_0
    return-void
.end method

.method public ensureVideoAutoReviewSettingHasLoaded()V
    .locals 5

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-nez v0, :cond_0

    .line 3543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPrefs:Landroid/content/SharedPreferences;

    .line 3547
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraId()I

    move-result v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    .line 3554
    :cond_0
    return-void
.end method

.method public fadeoutCounter()V
    .locals 2

    .prologue
    .line 3794
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCounterView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3795
    return-void
.end method

.method public getAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 1

    .prologue
    .line 3528
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object v0
.end method

.method public getFlashOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1434
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCameraParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1435
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 1436
    const/4 v3, 0x0

    .line 1444
    :goto_0
    return-object v3

    .line 1438
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 1440
    .local v2, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraId()I

    move-result v4

    invoke-direct {v0, v5, v3, v4}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZII)V

    .line 1444
    .local v0, "actMode":Lcom/sonyericsson/android/camera/ActionMode;
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v3

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 3381
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method public getOrientationForUiNotRotateInRecording()I
    .locals 1

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3391
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    .line 3393
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 1

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-object v0
.end method

.method public getRequestId(Z)I
    .locals 2
    .param p1, "isLoadingIconRequired"    # Z

    .prologue
    .line 3666
    const/4 v0, -0x1

    .line 3667
    .local v0, "requestId":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3668
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->preparationForInstantViewer()V

    .line 3669
    if-eqz p1, :cond_1

    .line 3670
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createContentFrame()I

    move-result v0

    .line 3675
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    .line 3678
    :cond_0
    return v0

    .line 3672
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

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
    .line 4016
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    return-object v0
.end method

.method public getTouchCapture()Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
    .locals 1

    .prologue
    .line 3847
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    return-object v0
.end method

.method public getVideoAutoReviewSetting()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;
    .locals 1

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    return-object v0
.end method

.method public hideHudIcons()V
    .locals 1

    .prologue
    .line 2112
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setSceneNotificationIndicatorsInvisible(Z)V

    .line 2115
    return-void
.end method

.method public isInTouchCaptureArea(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3397
    const/4 v0, 0x0

    .line 3398
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    if-eqz v1, :cond_0

    .line 3399
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mViewFinderCaptureArea:Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3401
    :cond_0
    return v0
.end method

.method public isSetupHeadupDisplayInvoked()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsSetupHeadupDisplayInvoked:Z

    return v0
.end method

.method public isTouchFocus()Z
    .locals 1

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-nez v0, :cond_0

    .line 3857
    const/4 v0, 0x0

    .line 3859
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->isTouchFocus()Z

    move-result v0

    goto :goto_0
.end method

.method public onCanceled()V
    .locals 3

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_CANCEL:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3967
    return-void
.end method

.method public onClickThumbnailProgress()V
    .locals 3

    .prologue
    .line 3987
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_TOUCH_CONTENT_PROGRESS:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3988
    return-void
.end method

.method public onCloseCapturingModeSelector()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2756
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2758
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2759
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2762
    :cond_0
    return-void
.end method

.method public onCloseStorageDialog()V
    .locals 5

    .prologue
    .line 3923
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3924
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3927
    :cond_0
    return-void
.end method

.method public onDeleted(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3660
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeContentInfo()V

    .line 3661
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 3662
    return-void
.end method

.method public onFaceSelected(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CHANGE_SELECTED_FACE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3995
    return-void
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 6
    .param p1, "orient"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    .line 329
    const/4 v0, 0x1

    .line 330
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne p1, v1, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 339
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onLongPressed()V
    .locals 5

    .prologue
    .line 3978
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_LONG_PRESS:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->FACE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3981
    return-void
.end method

.method public onModeFinish()V
    .locals 2

    .prologue
    .line 2851
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeCapturingModeSelector()V

    .line 2852
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2853
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2854
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    if-eqz v0, :cond_0

    .line 2855
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->hideShortcutTray()V

    .line 2856
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs(Z)V

    .line 2864
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->abort()V

    .line 2865
    return-void

    .line 2860
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    goto :goto_0
.end method

.method public onModeSelect(Ljava/lang/String;)V
    .locals 8
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2770
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeCapturingModeSelector()V

    .line 2774
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2780
    .local v4, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isInLockTaskMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2782
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->abort(Z)V

    .line 2785
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2786
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/sonyericsson/cameracommon/intent/IntentConstants;->CAMERA_UI_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2787
    const-string v5, "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2788
    const-string v5, "com.sonyericsson.android.camera.extra.launchedByFastCapturing"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2790
    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ModeName;->FAST_CAPTURING_CAMERA:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ModeName;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ModeName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2791
    .local v0, "callingMode":Ljava/lang/String;
    const-string v5, "calling-mode"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2794
    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2823
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 2826
    .local v3, "isActivityAvailable":Z
    if-eqz v3, :cond_0

    .line 2828
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->startActivity(Landroid/content/Intent;)V

    .line 2829
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->overridePendingTransition(II)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2836
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestSuspend()V

    .line 2840
    .end local v0    # "callingMode":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isActivityAvailable":Z
    .end local v4    # "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :goto_2
    return-void

    .line 2775
    :catch_0
    move-exception v1

    .line 2776
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The specified mode is not supported. mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2796
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "callingMode":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :pswitch_0
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2800
    :pswitch_1
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2804
    :pswitch_2
    const-string v5, "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2808
    :pswitch_3
    const-string v5, "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2812
    :pswitch_4
    const-string v5, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2816
    :pswitch_5
    const-string v5, "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2831
    .restart local v3    # "isActivityAvailable":Z
    :catch_1
    move-exception v1

    .line 2832
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->TAG:Ljava/lang/String;

    const-string v6, "launchAdvancedCamera failed."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2838
    .end local v0    # "callingMode":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isActivityAvailable":Z
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->abort()V

    goto :goto_2

    .line 2794
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onOpenCapturingModeSelector()V
    .locals 5

    .prologue
    .line 2741
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeSettingDialog()V

    .line 2744
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mUiComponentBackgroundTouchEventHandler:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$UiComponentBackgroundTouchEventHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2749
    return-void
.end method

.method public onOpenStorageDialog()V
    .locals 5

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCurrentDisplayingUiComponent:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    if-nez v0, :cond_1

    .line 3919
    :cond_0
    :goto_0
    return-void

    .line 3910
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeSettingDialog()V

    .line 3911
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeCapturingModeSelector()V

    .line 3915
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3916
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onReleased()V
    .locals 5

    .prologue
    .line 3971
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->FACE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3974
    return-void
.end method

.method public onReviewWindowClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3652
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsInstantViewerOpened:Z

    .line 3654
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3655
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToDimSystemUi()V

    .line 3656
    return-void
.end method

.method public onReviewWindowOpen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3639
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3643
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f0f006c

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3645
    .local v0, "viewFinder":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3647
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToRecoverSystemUi()V

    .line 3648
    return-void
.end method

.method public onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3806
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setAdditionalSettings(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z

    move-result v0

    .line 3807
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 3831
    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :goto_0
    return-void

    .line 3811
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3813
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPrefs:Landroid/content/SharedPreferences;

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-static {v1, v3, p2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->storeParameter(Landroid/content/SharedPreferences;ILcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_0

    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_1
    move-object v1, p2

    .line 3818
    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPhotoSelfTimerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 3819
    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    move-result-object v1

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_1
    invoke-direct {p0, v4, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->changeScreenButtonImage(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;Z)V

    .line 3823
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupSelfTimerCountDownView()V

    .line 3824
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mPrefs:Landroid/content/SharedPreferences;

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-static {v1, v2, p2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->storeParameter(Landroid/content/SharedPreferences;ILcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_0

    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_1
    move v1, v3

    .line 3819
    goto :goto_1

    .line 3811
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs onStateChanged(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "currentState"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 322
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onViewFinderStateChanged(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;[Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method public onStorageAutoSwitch(Ljava/lang/String;)V
    .locals 3
    .param p1, "currentStorage"    # Ljava/lang/String;

    .prologue
    .line 3938
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_STORAGE_SHOULD_CHANGE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3939
    return-void
.end method

.method public onTouched()V
    .locals 5

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3961
    return-void
.end method

.method public openCapturingModeSelector(Ljava/lang/String;)V
    .locals 1
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 4009
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->canCurrentStateHandleAsynchronizedTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4010
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->openCapturingModeSelector(Ljava/lang/String;)V

    .line 4012
    :cond_0
    return-void
.end method

.method public openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    const/4 v5, 0x0

    .line 3575
    iget-object v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoAutoReviewSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-ne v0, v1, :cond_3

    .line 3579
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->launchEditor(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 3601
    :cond_2
    :goto_0
    return-void

    .line 3584
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_2

    .line 3585
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    const v1, 0x7f0f006c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 3587
    .local v10, "viewFinder":Landroid/widget/FrameLayout;
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3588
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v6, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-direct {v4, v5, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v6, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v7

    move-object v2, p1

    move-object v8, p0

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3598
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeReviewWindow()V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 1605
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->release()V

    .line 1609
    return-void
.end method

.method public removeEarlyThumbnailView()V
    .locals 1

    .prologue
    .line 3764
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeEarlyThumbnailView()V

    .line 3765
    return-void
.end method

.method public requestInflate(Landroid/view/LayoutInflater;)V
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 3900
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastLayoutAsyncInflateItems;->getInflateItemsForFast()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->startInflateTask(Landroid/view/LayoutInflater;Ljava/util/List;)V

    .line 3903
    return-void
.end method

.method public varargs sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    .locals 30
    .param p1, "updateEvent"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2241
    sget-object v26, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_0

    .line 2572
    :cond_0
    :goto_0
    return-void

    .line 2244
    :pswitch_0
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setupHeadUpDisplay(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;)V

    goto :goto_0

    .line 2248
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 2253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v8

    .line 2257
    .local v8, "finderRect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 2258
    .local v24, "width":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 2259
    .local v10, "height":I
    new-instance v21, Landroid/graphics/Rect;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/SurfaceView;->getWidth()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/SurfaceView;->getHeight()I

    move-result v29

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2264
    .local v21, "textureRect":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 2266
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->resizeEvfScope(II)V

    goto/16 :goto_0

    .line 2271
    .end local v8    # "finderRect":Landroid/graphics/Rect;
    .end local v10    # "height":I
    .end local v21    # "textureRect":Landroid/graphics/Rect;
    .end local v24    # "width":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-eqz v26, :cond_0

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2279
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-nez v26, :cond_0

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 2282
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceBlinderView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2287
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    goto/16 :goto_0

    .line 2293
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 2294
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    goto/16 :goto_0

    .line 2302
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 2303
    const/16 v26, 0x1

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_1

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setSequenceMode(Z)V

    .line 2306
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v27

    const/16 v26, 0x1

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 2308
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v27

    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v26, 0x2

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    goto/16 :goto_0

    .line 2316
    :pswitch_7
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onCameraModeChangedTo(I)V

    goto/16 :goto_0

    .line 2321
    :pswitch_8
    const/16 v26, 0x0

    aget-object v19, p2, v26

    check-cast v19, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .line 2322
    .local v19, "sceneResult":Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onSceneModeChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V

    goto/16 :goto_0

    .line 2326
    .end local v19    # "sceneResult":Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->startFaceDetection()V

    goto/16 :goto_0

    .line 2331
    :pswitch_a
    const/16 v26, 0x0

    aget-object v7, p2, v26

    check-cast v7, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .line 2333
    .local v7, "faceResult":Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 2334
    iget-object v0, v7, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_2

    .line 2336
    invoke-static {v7}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->hasValidFaceId(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    .line 2345
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    goto/16 :goto_0

    .line 2339
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_2

    .line 2341
    invoke-static {v7}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->setUuidFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    goto :goto_1

    .line 2350
    .end local v7    # "faceResult":Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    :pswitch_b
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onFaceNameDetected(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2354
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->startObjectTracking()V

    goto/16 :goto_0

    .line 2359
    :pswitch_d
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onTrackedObjectStateUpdated(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    goto/16 :goto_0

    .line 2364
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCameraParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v15

    .line 2365
    .local v15, "params":Landroid/hardware/Camera$Parameters;
    if-nez v15, :cond_4

    const/4 v13, 0x0

    .line 2366
    .local v13, "maxZoom":I
    :goto_2
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2367
    .local v6, "currentZoom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getMaxSuperResolutionZoom()I

    move-result v20

    .line 2369
    .local v20, "srzMax":I
    invoke-static {v15}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isSuperResolutionZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    .line 2376
    .local v11, "isSuperResolutionZoomSupported":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v25

    .line 2377
    .local v25, "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    if-eqz v25, :cond_0

    .line 2378
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isInModeLessRecording()Z

    move-result v26

    if-nez v26, :cond_5

    .line 2380
    sget-object v26, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->PARTIAL_SUPER_RESOLUTION:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual/range {v25 .. v26}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V

    .line 2384
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v6, v13, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onZoomChanged(III)V

    goto/16 :goto_0

    .line 2365
    .end local v6    # "currentZoom":I
    .end local v11    # "isSuperResolutionZoomSupported":Z
    .end local v13    # "maxZoom":I
    .end local v20    # "srzMax":I
    .end local v25    # "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    :cond_4
    invoke-virtual {v15}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v13

    goto :goto_2

    .line 2382
    .restart local v6    # "currentZoom":I
    .restart local v11    # "isSuperResolutionZoomSupported":Z
    .restart local v13    # "maxZoom":I
    .restart local v20    # "srzMax":I
    .restart local v25    # "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    :cond_5
    sget-object v26, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->NORMAL:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual/range {v25 .. v26}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V

    goto :goto_3

    .line 2389
    .end local v6    # "currentZoom":I
    .end local v11    # "isSuperResolutionZoomSupported":Z
    .end local v13    # "maxZoom":I
    .end local v15    # "params":Landroid/hardware/Camera$Parameters;
    .end local v20    # "srzMax":I
    .end local v25    # "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->cancelSelfTimerCountDownView()V

    goto/16 :goto_0

    .line 2394
    :pswitch_10
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setCount(I)V

    goto/16 :goto_0

    .line 2400
    :pswitch_11
    const/16 v26, 0x0

    aget-object v22, p2, v26

    check-cast v22, Landroid/graphics/Point;

    .line 2401
    .local v22, "touchOnScreen":Landroid/graphics/Point;
    const/16 v26, 0x1

    aget-object v9, p2, v26

    check-cast v9, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .line 2404
    .local v9, "focusSetType":Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 2406
    sget-object v26, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    move-object/from16 v0, v26

    if-ne v9, v0, :cond_0

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v26

    if-nez v26, :cond_0

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onAutoFocusStarted()V

    goto/16 :goto_0

    .line 2416
    .end local v9    # "focusSetType":Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    .end local v22    # "touchOnScreen":Landroid/graphics/Point;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocus()V

    goto/16 :goto_0

    .line 2423
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocusExceptFace()V

    goto/16 :goto_0

    .line 2429
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 2430
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v27

    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateRecordingTime(I)V

    .line 2433
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->restartAnimation()V

    goto/16 :goto_0

    .line 2438
    :pswitch_15
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setOrientation(I)V

    goto/16 :goto_0

    .line 2442
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v26

    if-nez v26, :cond_0

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onAutoFocusCanceled()V

    goto/16 :goto_0

    .line 2450
    :pswitch_17
    sget-object v26, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->updateUiComponent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;)V

    goto/16 :goto_0

    .line 2454
    :pswitch_18
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->closeCurrentDisplayingUiComponent()V

    goto/16 :goto_0

    .line 2459
    :pswitch_19
    const/16 v26, 0x0

    aget-object v18, p2, v26

    check-cast v18, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 2460
    .local v18, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    goto/16 :goto_0

    .line 2465
    .end local v18    # "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    :pswitch_1a
    const/16 v26, 0x1

    aget-object v16, p2, v26

    check-cast v16, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .line 2466
    .local v16, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v14, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    .line 2468
    .local v14, "mimeType":Ljava/lang/String;
    const/16 v23, 0x0

    .line 2469
    .local v23, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getUri()Landroid/net/Uri;

    move-result-object v23

    .line 2475
    :cond_6
    if-eqz v23, :cond_7

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-static {v0, v1, v14}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2480
    :cond_7
    const-string v26, "video/mp4"

    move-object/from16 v0, v26

    if-eq v14, v0, :cond_8

    const-string v26, "video/3gpp"

    move-object/from16 v0, v26

    if-ne v14, v0, :cond_9

    .line 2483
    :cond_8
    const/16 v27, 0x0

    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->openInstantViewer([BLjava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    goto/16 :goto_0

    .line 2489
    :cond_9
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, [B

    check-cast v26, [B

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->openInstantViewer([BLjava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    goto/16 :goto_0

    .line 2500
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v16    # "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .end local v23    # "uri":Landroid/net/Uri;
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getUri()Landroid/net/Uri;

    move-result-object v26

    if-nez v26, :cond_a

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Landroid/net/Uri;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setUri(Landroid/net/Uri;)V

    .line 2503
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mIsInstantViewerOpened:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->showRightIcons(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 2511
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->startCaptureFeedbackAnimation()V

    goto/16 :goto_0

    .line 2516
    :pswitch_1d
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setEarlyThumbnailView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2521
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->removeEarlyThumbnailView()V

    goto/16 :goto_0

    .line 2527
    :pswitch_1f
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 2529
    .local v17, "requestId":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 2530
    const/16 v26, 0x1

    aget-object v12, p2, v26

    check-cast v12, Landroid/view/animation/Animation$AnimationListener;

    .line 2531
    .local v12, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 2533
    .end local v12    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->startEarlyThumbnailInsertAnimation(I)V

    goto/16 :goto_0

    .line 2539
    .end local v17    # "requestId":I
    :pswitch_20
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->addCountUpView(I)V

    goto/16 :goto_0

    .line 2544
    :pswitch_21
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->removeCountUpView(I)V

    goto/16 :goto_0

    .line 2548
    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onLazyInitializationTaskRun()V

    goto/16 :goto_0

    .line 2552
    :pswitch_23
    const/16 v26, 0x0

    aget-object v5, p2, v26

    check-cast v5, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    .line 2553
    .local v5, "chapterThumbnail":Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->addVideoChapter(Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;)V

    goto/16 :goto_0

    .line 2557
    .end local v5    # "chapterThumbnail":Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;
    :pswitch_24
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onNotifyThermalStatus(Z)V

    goto/16 :goto_0

    .line 2561
    :pswitch_25
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onNotifyThermalStatus(Z)V

    goto/16 :goto_0

    .line 2565
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->requestToRestoreSystemUi()V

    goto/16 :goto_0

    .line 2241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method public setAutoReviweDuration(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .prologue
    .line 3567
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setDuration(J)V

    .line 3570
    :cond_0
    return-void
.end method

.method public setCameraDevice(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0
    .param p1, "cameraDevice"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .line 313
    return-void
.end method

.method public setContentView()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->setup(Landroid/view/View;)V

    .line 291
    return-void
.end method

.method protected setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 343
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isRecording()Z

    move-result v0

    .line 345
    .local v0, "isRecording":Z
    if-eqz v0, :cond_4

    .line 346
    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    invoke-super {p0, p1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(II)V

    .line 352
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->isHeadUpDesplayReady()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setUiOrientation(I)V

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientationForUiNotRotateInRecording()I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 360
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mConditionIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getOrientationForUiNotRotateInRecording()I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 363
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 364
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSceneIndicatorText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setOrientation(I)V

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-eqz v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setOrientation(I)V

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v1, :cond_3

    .line 375
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v1, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setSensorOrientation(I)V

    .line 378
    :cond_3
    return-void

    .line 348
    :cond_4
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    goto :goto_0
.end method

.method public setRecordingOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 4053
    iput p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mRecordingOrientation:I

    .line 4054
    return-void
.end method

.method public setStateMachine(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 1
    .param p1, "stateMachine"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 297
    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->addOnStateChangedListener(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;)V

    .line 307
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .line 308
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->removeOnStateChangedListener(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;)V

    goto :goto_0
.end method

.method public startCaptureFeedbackAnimation()V
    .locals 2

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_0

    .line 3740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-static {}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory;->createDefaultAnimation()Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V

    .line 3742
    :cond_0
    return-void
.end method

.method public startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 3759
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 3760
    return-void
.end method

.method public startHideThumbnail()V
    .locals 4

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3733
    :goto_0
    return-void

    .line 3703
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 3706
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const v3, 0x7f040010

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3710
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$4;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    .line 3729
    .local v1, "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3732
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public startSelfTimerCountDownAnimation()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->startSelfTimerCountDownAnimation()V

    .line 1065
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 492
    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 498
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V

    .line 390
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-nez v0, :cond_0

    .line 540
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "CameraDevice has aleady been released."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCameraDevice:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopLiveViewFinder()V

    goto :goto_0
.end method

.method public updateGeotagIcon()V
    .locals 3

    .prologue
    .line 4058
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    if-eqz v0, :cond_0

    .line 4059
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 4064
    :cond_0
    return-void
.end method
