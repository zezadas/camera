.class public Lcom/sonyericsson/android/camera/view/CameraWindow;
.super Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.source "CameraWindow.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;
.implements Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;
.implements Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/CameraWindow$5;,
        Lcom/sonyericsson/android/camera/view/CameraWindow$VideoChapterInserter;,
        Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;,
        Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureButtonInRecEventHandler;,
        Lcom/sonyericsson/android/camera/view/CameraWindow$PhotoVideoSwitchEventHandler;,
        Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;
    }
.end annotation


# static fields
.field public static final GEOTAG_OFF:I = 0x0

.field public static final GEOTAG_ON:I = 0x1

.field public static final GPS_ACQUIRED_GPS:I = 0x3

.field public static final GPS_ACQUIRED_GPS_AND_NETWORK:I = 0x5

.field public static final GPS_ACQUIRED_NETWORK:I = 0x4

.field public static final GPS_ACQUIRING:I = 0x2

.field public static final NO_RESOURCE_ID:I = -0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

.field private mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

.field private mCanSwitchStorage:Z

.field private mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

.field private mContext:Landroid/content/Context;

.field private mCounterView:Landroid/view/View;

.field private mFocusRect:Landroid/graphics/Rect;

.field private mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

.field private mFrontCameraLocationDialog:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

.field private mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

.field private mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

.field private mIsOpenCapturingModeSelector:Z

.field private mIsOpenInstantViewer:Z

.field private mIsOpenPhotoStackMenu:Z

.field private mIsOpenSettingsDialog:Z

.field private mIsTouchGuideShown:Z

.field private mNotification:Lcom/sonymobile/cameracommon/view/Notification;

.field private mOrientation:I

.field private mPrepared:Z

.field private mRecordingOrientation:I

.field private mReleased:Z

.field private mRunnableSetPadding:Ljava/lang/Runnable;

.field private mRunnableUpdateAf:Ljava/lang/Runnable;

.field private mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field private mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

.field private mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

.field private mSensorOrientation:I

.field private mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

.field private mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

.field private mSurfaceHeight:I

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceWidth:I

.field private mTouchArea:Lcom/sonyericsson/android/camera/view/TouchArea;

.field private mType:I

.field private mViewFinder:Landroid/view/View;

.field private mViewFinderLayout:Landroid/widget/RelativeLayout;

.field private mWindowCover:Landroid/view/View;

.field public mZoomStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 328
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;-><init>()V

    invoke-direct {p0, v0, v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V

    .line 160
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mOrientation:I

    .line 169
    iput v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    .line 178
    iput v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    .line 186
    iput v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mType:I

    .line 195
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mPrepared:Z

    .line 198
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mReleased:Z

    .line 201
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenPhotoStackMenu:Z

    .line 204
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenCapturingModeSelector:Z

    .line 207
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenSettingsDialog:Z

    .line 210
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsTouchGuideShown:Z

    .line 269
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenInstantViewer:Z

    .line 274
    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 280
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 2169
    iput v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mZoomStep:I

    .line 2957
    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    .line 329
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mContext:Landroid/content/Context;

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinder:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/CameraWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRunnableUpdateAf:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/view/CameraWindow;[BILcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->addVideoChapter([BILcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/CameraWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->switchPhotoVideo()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/CameraWindow;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/CameraWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/CameraWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/CameraWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mOrientation:I

    return v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/CameraWindow;)Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    return-object v0
.end method

.method private addSelfTimerCountDownView()V
    .locals 3

    .prologue
    .line 2997
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3000
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3001
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->removeSelfTimerCountDownView()V

    .line 3002
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 3003
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3004
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setSensorOrientation(I)V

    .line 3005
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setVisibility(I)V

    .line 3006
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->cancelSelfTimerCountDownView()V

    .line 3007
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3008
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 3010
    return-void
.end method

.method private addVideoChapter([BILcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;)V
    .locals 11
    .param p1, "yuvData"    # [B
    .param p2, "orientataion"    # I
    .param p3, "info"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    .prologue
    const/4 v10, 0x0

    .line 1969
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v8

    .line 1970
    .local v8, "indicator":Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    .line 1987
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    new-instance v0, Landroid/graphics/YuvImage;

    iget v2, p3, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->format:I

    iget v3, p3, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->width:I

    iget v4, p3, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->height:I

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1981
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1982
    .local v6, "compressedImage":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Landroid/graphics/Rect;

    iget v1, p3, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->width:I

    iget v2, p3, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->height:I

    invoke-direct {v9, v10, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1983
    .local v9, "previewRect":Landroid/graphics/Rect;
    const/16 v1, 0x50

    invoke-virtual {v0, v9, v1, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1984
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1985
    .local v7, "compressedImageBytes":[B
    invoke-virtual {v8, v7, p2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->addChapter([BI)V

    goto :goto_0
.end method

.method private applyAllParametes(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 3
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 2733
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setAutoReviweDuration(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V

    .line 2734
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2735
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 2737
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    .line 2738
    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2740
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 2741
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setPhotoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 2747
    :goto_0
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 2748
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V

    .line 2749
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTouchCapture()Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setTouchCapture(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V

    .line 2751
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->commit()V

    .line 2754
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 2755
    return-void

    .line 2743
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 2744
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setPhotoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    goto :goto_0
.end method

.method private applyResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 2
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 2760
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    .line 2761
    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2763
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 2768
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->commit()V

    .line 2769
    return-void

    .line 2765
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    goto :goto_0
.end method

.method private cancelSelfTimerCountDownView()V
    .locals 2

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_0

    .line 3030
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->cancelSelfTimerCountDownAnimation()V

    .line 3031
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3034
    :cond_0
    return-void
.end method

.method private changeOnScreenButtonAppearance(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;)V
    .locals 7
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "state"    # Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    .line 525
    .local v0, "activity":Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    .line 527
    .local v2, "videoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->isMediaRecorderPauseAndResumeSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isConstraint(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    :cond_0
    sget-object v5, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->CAPTURING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    if-ne p2, v5, :cond_1

    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeOnScreenButtonAppearanceNotSupportedPauseRecording(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 762
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 529
    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    .line 536
    .local v1, "onScreenButtons":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
    sget-object v5, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 758
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 759
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_1

    .line 538
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 539
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v4, v5, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 540
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_1

    .line 541
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 542
    sget-object v5, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 544
    :pswitch_1
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 547
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_1

    .line 553
    :pswitch_2
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v1, v4, v5, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 556
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_1

    .line 560
    :pswitch_3
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->RESTART_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 563
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_1

    .line 573
    :cond_4
    sget-object v5, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    goto :goto_1

    .line 575
    :pswitch_4
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 578
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 584
    :pswitch_5
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v4, v5, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 587
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v1, v4, v5, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 593
    :pswitch_6
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->RESTART_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 596
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 612
    :pswitch_7
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 613
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v4, v5, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 614
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_1

    .line 615
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 616
    sget-object v5, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 618
    :pswitch_8
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 621
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 627
    :pswitch_9
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v1, v4, v5, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 630
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v1, v4, v5, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 636
    :pswitch_a
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->RESTART_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 639
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 649
    :cond_6
    sget-object v5, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_4

    goto/16 :goto_1

    .line 651
    :pswitch_b
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 654
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 660
    :pswitch_c
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v4, v5, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 663
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v1, v4, v5, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 669
    :pswitch_d
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->RESTART_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 672
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 686
    :pswitch_e
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v4, v5, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 687
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 688
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_1

    .line 690
    :cond_7
    sget-object v3, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5

    goto/16 :goto_1

    .line 692
    :pswitch_f
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 693
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->HIDDEN:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_1

    .line 697
    :pswitch_10
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PHOTO_TO_VIDEO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_1

    .line 707
    :pswitch_11
    sget-object v5, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_6

    .line 729
    :goto_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 730
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_1

    .line 709
    :pswitch_12
    sget-object v5, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v6, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v5, v6, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_2

    .line 715
    :pswitch_13
    sget-object v5, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v6, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v1, v5, v6, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_2

    .line 721
    :pswitch_14
    sget-object v5, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->RESTART_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v6, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v5, v6, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_2

    .line 732
    :cond_8
    sget-object v5, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_7

    goto/16 :goto_1

    .line 734
    :pswitch_15
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 740
    :pswitch_16
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v1, v4, v5, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 746
    :pswitch_17
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-virtual {v1, v3, v5, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto/16 :goto_1

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 542
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 573
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 616
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 649
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 690
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 707
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 732
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method private changeOnScreenButtonAppearanceNotSupportedPauseRecording(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .locals 4
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "capturing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 768
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideRightBottomCaptureButton()V

    .line 770
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    .line 771
    .local v0, "onScreenButtons":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 871
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 872
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 875
    :goto_0
    return-void

    .line 773
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 775
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 777
    if-eqz p2, :cond_1

    .line 778
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 782
    :goto_1
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_0

    .line 780
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_1

    .line 784
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 785
    if-eqz p2, :cond_3

    .line 786
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_0

    .line 788
    :cond_3
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_0

    .line 798
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 799
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 800
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_0

    .line 801
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 802
    if-eqz p2, :cond_5

    .line 803
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 807
    :goto_2
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_0

    .line 805
    :cond_5
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_2

    .line 809
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_8

    .line 811
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 812
    if-eqz p2, :cond_7

    .line 813
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 814
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 816
    :cond_7
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 819
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 820
    if-eqz p2, :cond_9

    .line 821
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 823
    :cond_9
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 832
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V

    .line 833
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 834
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 836
    :cond_a
    if-eqz p2, :cond_b

    .line 837
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->HIDDEN:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 839
    :cond_b
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PHOTO_TO_VIDEO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 845
    :pswitch_3
    if-eqz p2, :cond_c

    .line 846
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 850
    :goto_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 851
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 848
    :cond_c
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_3

    .line 853
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_f

    .line 855
    if-eqz p2, :cond_e

    .line 856
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 858
    :cond_e
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 861
    :cond_f
    if-eqz p2, :cond_10

    .line 862
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 864
    :cond_10
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto/16 :goto_0

    .line 771
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private closeSettingsDialog()V
    .locals 1

    .prologue
    .line 2495
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenSettingsDialog:Z

    if-eqz v0, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_0

    .line 2497
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->closeDialogs()V

    .line 2500
    :cond_0
    return-void
.end method

.method private createSelfTimerCountDownView(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 3
    .param p1, "selfTimer"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 3017
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 3018
    return-void
.end method

.method private getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;
    .locals 1

    .prologue
    .line 2697
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 2701
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method private getModeAttribute(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    .locals 4
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 1020
    sget-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1041
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getIconId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getTextId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;-><init>(Ljava/lang/String;II)V

    :goto_0
    return-object v0

    .line 1026
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getIconId()I

    move-result v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getTextId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    .line 1035
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getIconId()I

    move-result v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getTextId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hideCameraItems()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2869
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setCaptureButtonVisibility(Z)V

    .line 2870
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setLeftIconsVisibility(Z)V

    .line 2871
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setNotificationsVisibility(Z)V

    .line 2872
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setPhotoStackVisibility(Z)V

    .line 2873
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setZoombarVisibility(Z)V

    .line 2874
    return-void
.end method

.method private hideDefaultViewCamera()V
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->hide()V

    .line 1733
    return-void
.end method

.method private hideDefaultViewVideo()V
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->hide()V

    .line 1744
    return-void
.end method

.method private hideRightBottomCaptureButton()V
    .locals 2

    .prologue
    .line 3260
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonGroup()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3261
    return-void
.end method

.method private hideSelfTimerCountDownView()V
    .locals 2

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setVisibility(I)V

    .line 3040
    :cond_0
    return-void
.end method

.method private isAllDialogClosed()Z
    .locals 1

    .prologue
    .line 3160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isOpenPhotoStackMenu()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isOpenSettingsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isTouchGuideShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->isStorageDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3165
    :cond_0
    const/4 v0, 0x0

    .line 3167
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDisableAutoReview()Z
    .locals 2

    .prologue
    .line 1638
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 2319
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result v0

    .line 2320
    .local v0, "isRecording":Z
    if-eqz v0, :cond_0

    .line 2321
    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-super {p0, p1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(II)V

    .line 2326
    :goto_0
    iput p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    .line 2328
    if-eqz v0, :cond_1

    .line 2329
    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setCameraUiOrientation(I)V

    .line 2333
    :goto_1
    return-void

    .line 2323
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    goto :goto_0

    .line 2331
    :cond_1
    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setOrientation(I)V

    goto :goto_1
.end method

.method private preparationForInstantViewer()V
    .locals 2

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 1277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setUri(Landroid/net/Uri;)V

    .line 1280
    :cond_0
    return-void
.end method

.method private removeSelfTimerCountDownView()V
    .locals 2

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_0

    .line 3022
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3024
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 3026
    :cond_0
    return-void
.end method

.method private sendGoogleAnalyticsModeSelectorEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 2923
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 2924
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->onPause(Z)V

    .line 2926
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->MODE_SELECTOR:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 2928
    return-void
.end method

.method private sendGoogleAnalyticsSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 2670
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 2671
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->onPause(Z)V

    .line 2673
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->SAME_ACTIVITY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 2674
    return-void
.end method

.method private setCameraUiOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    if-eqz v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/Notification;->setSensorOrientation(I)V

    .line 2341
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    if-eqz v0, :cond_1

    .line 2342
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/Indicators;->setSensorOrientation(I)V

    .line 2345
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_2

    .line 2346
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->setSensorOrientation(I)V

    .line 2349
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFrontCameraLocationDialog:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    if-eqz v0, :cond_3

    .line 2350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFrontCameraLocationDialog:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->setSensorOrientation(I)V

    .line 2353
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_4

    .line 2354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setOrientation(I)V

    .line 2356
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_5

    .line 2357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setSensorOrientation(I)V

    .line 2359
    :cond_5
    return-void
.end method

.method private setCaptureButtonVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2487
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    .line 2489
    return-void

    .line 2487
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setLeftIconsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2473
    if-eqz p1, :cond_0

    .line 2474
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showLeftIconContainer()V

    .line 2478
    :goto_0
    return-void

    .line 2476
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    goto :goto_0
.end method

.method private setMainCaptureButton(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;IZ)V
    .locals 3
    .param p1, "selfTimer"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .param p2, "sensorOrientation"    # I
    .param p3, "isRotatable"    # Z

    .prologue
    .line 3044
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    .line 3045
    .local v0, "onScreenButtons":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3059
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    .line 3063
    :goto_0
    return-void

    .line 3047
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_LONG:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_0

    .line 3051
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_SHORT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_0

    .line 3055
    :pswitch_2
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_INSTANT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V

    goto :goto_0

    .line 3045
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setNotificationsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    if-eqz v0, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/Notification;->updateLayout()V

    .line 2484
    :cond_0
    return-void
.end method

.method private setPhotoStackVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2464
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2465
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showContentsViewController()V

    .line 2469
    :goto_0
    return-void

    .line 2467
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideContentsViewController()V

    goto :goto_0
.end method

.method private setZoomBarType()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2678
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v4

    .line 2679
    .local v4, "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    if-nez v4, :cond_0

    .line 2694
    :goto_0
    return-void

    .line 2683
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    .line 2684
    .local v2, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    .line 2686
    .local v0, "act":Lcom/sonyericsson/android/camera/CameraActivity;
    iget-object v7, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v7, v8, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v1, v6

    .line 2687
    .local v1, "isVideo":Z
    :goto_1
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSuperResolution()Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    if-ne v7, v8, :cond_3

    move v3, v6

    .line 2689
    .local v3, "superResolutionOn":Z
    :goto_2
    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 2690
    sget-object v5, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->PARTIAL_SUPER_RESOLUTION:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V

    goto :goto_0

    .end local v1    # "isVideo":Z
    .end local v3    # "superResolutionOn":Z
    :cond_2
    move v1, v5

    .line 2686
    goto :goto_1

    .restart local v1    # "isVideo":Z
    :cond_3
    move v3, v5

    .line 2687
    goto :goto_2

    .line 2692
    .restart local v3    # "superResolutionOn":Z
    :cond_4
    sget-object v5, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->NORMAL:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V

    goto :goto_0
.end method

.method private setZoombarVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2457
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    .line 2458
    .local v0, "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    if-eqz v0, :cond_0

    .line 2459
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setVisibility(I)V

    .line 2461
    :cond_0
    return-void

    .line 2459
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private setupAutoReview()V
    .locals 3

    .prologue
    .line 2790
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2791
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .line 2793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    .line 2795
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-nez v0, :cond_1

    .line 2796
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .line 2799
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->addLazyInflatedUiComponentFullScreen(Landroid/view/View;)V

    .line 2800
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2801
    return-void
.end method

.method private setupFrontCameraLocationDialog()V
    .locals 3

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f0f0096

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1051
    .local v0, "frame":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-direct {v1, v0, p0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;-><init>(Landroid/widget/FrameLayout;Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog$OnCloseListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFrontCameraLocationDialog:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    .line 1052
    return-void
.end method

.method private setupNotifications(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 5
    .param p1, "capturingMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "geotag"    # Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    .param p3, "timer"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .param p4, "videoTimer"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;
    .param p5, "smileCapture"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 977
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 978
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->NOTIFICATION:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/view/Notification;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    if-nez v1, :cond_1

    .line 983
    const v1, 0x7f030017

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/view/Notification;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    .line 985
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getModeIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 988
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 989
    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->CAMERA_INDICATORS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/Indicators;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    .line 992
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    if-nez v1, :cond_3

    .line 993
    const v1, 0x7f030005

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/Indicators;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    .line 995
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 997
    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 998
    invoke-virtual {p0, p1, p4}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V

    .line 1002
    invoke-direct {p0, p5}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updatePhotoSmileCaptureIndicator(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1003
    return-void
.end method

.method private setupOnScreenButton(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 10
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v9, 0x0

    .line 459
    sget-object v6, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->STANDBY:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    invoke-direct {p0, p1, v6}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeOnScreenButtonAppearance(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;)V

    .line 462
    new-instance v1, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v7

    invoke-direct {v1, v9, v6, v7}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;-><init>(ILcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/ControllerManager;)V

    .line 466
    .local v1, "photoCapture":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    new-instance v2, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureButtonInRecEventHandler;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v7

    invoke-direct {v2, p0, v9, v6, v7}, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureButtonInRecEventHandler;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;ILcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/ControllerManager;)V

    .line 470
    .local v2, "photoCaptureInRec":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    new-instance v5, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;-><init>(ILcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/ControllerManager;)V

    .line 474
    .local v5, "videoRecordStop":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    new-instance v3, Lcom/sonyericsson/android/camera/view/CameraWindow$PhotoVideoSwitchEventHandler;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/view/CameraWindow$PhotoVideoSwitchEventHandler;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V

    .line 475
    .local v3, "photoVideoSwitch":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    new-instance v4, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;-><init>(ILcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/ControllerManager;)V

    .line 480
    .local v4, "videoPauseResume":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    .line 482
    .local v0, "onScreenButtons":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 483
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 484
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 485
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 486
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PHOTO_TO_VIDEO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 487
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 488
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 489
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->RESTART_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 490
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_LONG:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 491
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_SHORT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 492
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_INSTANT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v6, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 494
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->isMediaRecorderPauseAndResumeSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 496
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE_IN_SEQUENTIAL_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 499
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 501
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 503
    :cond_0
    return-void
.end method

.method private setupSettingController()V
    .locals 6

    .prologue
    .line 954
    new-instance v5, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 956
    .local v5, "settingShortcutItems":Landroid/widget/ListView;
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    const v3, 0x7f0f00a4

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    const v4, 0x7f0f009f

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .line 962
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .line 965
    return-void
.end method

.method private setupTouchArea()V
    .locals 3

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f0f0039

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1056
    .local v0, "stub":Landroid/view/ViewStub;
    if-nez v0, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1059
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/TouchArea;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera/view/TouchArea;

    goto :goto_0
.end method

.method private setupViewFinderIcons(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 7
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    const/4 v2, 0x0

    .line 884
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->joinInflateTask()V

    .line 885
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    new-instance v6, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    invoke-direct {v6}, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;-><init>()V

    .line 887
    .local v6, "focusRectanglesViewList":Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    iput-object v0, v6, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    .line 889
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v0, v6, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->trackedObjectView:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 892
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v6, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->singleAfView:Landroid/widget/RelativeLayout;

    .line 894
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v6, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->touchAfView:Landroid/widget/RelativeLayout;

    .line 896
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setPreInfalteMap(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V

    .line 898
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setPreInflatedHeadUpDisplay(Landroid/view/View;)V

    .line 902
    .end local v6    # "focusRectanglesViewList":Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestSetupHeadUpDisplay()V

    .line 904
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupViewFinderLayout()V

    .line 906
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 907
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupSettingController()V

    .line 908
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupOnScreenButton(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 910
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isDisplayFrontCameraLocationIndication()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupFrontCameraLocationDialog()V

    .line 913
    :cond_1
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getGeotag()Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupNotifications(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 919
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupZoomBar()V

    .line 920
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupAutoReview()V

    .line 922
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setOrientation(I)V

    .line 925
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->clearPreInflatedViews()V

    .line 926
    return-void
.end method

.method private setupViewFinderLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 931
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->SPECIFIC_VIEWFIDER_LAYOUT:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinderLayout:Landroid/widget/RelativeLayout;

    .line 935
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinderLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 936
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002a

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinderLayout:Landroid/widget/RelativeLayout;

    .line 942
    :cond_1
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 944
    .local v0, "captureFeedbackContextView":Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 945
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 946
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 947
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setVisibility(I)V

    .line 948
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 949
    return-void
.end method

.method private setupZoomBar()V
    .locals 2

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setBackgroundResource(I)V

    .line 969
    return-void
.end method

.method private showDefaultView(Z)V
    .locals 2
    .param p1, "isWarning"    # Z

    .prologue
    .line 1594
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1595
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->STANDBY:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeOnScreenButtonAppearance(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;)V

    .line 1602
    if-eqz p1, :cond_3

    .line 1603
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->hide()V

    .line 1608
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showFrontCameraLocationIndicator()V

    .line 1609
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setLeftIconsVisibility(Z)V

    .line 1611
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToDimSystemUi()V

    .line 1613
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_2

    .line 1614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->showShortcutTray()V

    .line 1616
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    if-ne v0, v1, :cond_2

    .line 1617
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isMenuAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isDisableAutoReview()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1625
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->reopenTemporaryClosedDialog()V

    .line 1632
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/Indicators;->showSelfTimerIndicator()V

    goto :goto_0

    .line 1605
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->startViewFinder()V

    goto :goto_1

    .line 1627
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->forgetTemporaryClosedDialog()V

    goto :goto_2
.end method

.method private showFrontCameraLocationIndicator()V
    .locals 1

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isDisplayFrontCameraLocationIndication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isNeedToShowFrontCameraLocationHelp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1645
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->visibleFrontCameraLocationDialog(Z)V

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1649
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->visibleFrontCameraLocationDialog(Z)V

    goto :goto_0
.end method

.method private switchPhotoVideo()V
    .locals 2

    .prologue
    .line 2651
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isOpenCapturingModeSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2667
    :goto_0
    return-void

    .line 2654
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->closeDialogsWithAnimation()V

    .line 2656
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_1

    .line 2658
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->sendGoogleAnalyticsSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2660
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0

    .line 2663
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->sendGoogleAnalyticsSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2665
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0
.end method

.method private updateCapturingModeButton(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 1009
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPreviousCapturingModeNotFront()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    .line 1014
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getModeAttribute(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setCurrentCapturingMode(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;)V

    .line 1016
    return-void
.end method

.method private updatePhotoSmileCaptureIndicator(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3180
    :cond_0
    :goto_0
    return-void

    .line 3175
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    if-eqz v0, :cond_0

    .line 3176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getNotificationIconId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/Indicators;->onPhotoSmileCaptureSettingsChanged(ZI)V

    goto :goto_0
.end method

.method private updateVideoSmileCaptureIndicator(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .prologue
    .line 3183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3184
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 3186
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    if-eqz v0, :cond_1

    .line 3187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->isSmileCaptureOn()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getNotificationIconId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/Indicators;->onVideoSmileCaptureSettingsChanged(ZI)V

    .line 3191
    :cond_1
    return-void
.end method

.method private visibleFrontCameraLocationDialog(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2709
    if-eqz p1, :cond_0

    .line 2710
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->suspend()V

    .line 2711
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFrontCameraLocationDialog:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->show()V

    .line 2715
    :goto_0
    return-void

    .line 2713
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFrontCameraLocationDialog:Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;->close()V

    goto :goto_0
.end method


# virtual methods
.method public addCountUpView(I)V
    .locals 4
    .param p1, "requestId"    # I

    .prologue
    const/4 v3, -0x1

    .line 2961
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2962
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeContentOverlayView(ILandroid/view/View;)V

    .line 2964
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    .line 2967
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/burst/CountUpView;->createCountUpView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    .line 2968
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2970
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2972
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2973
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2975
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    invoke-virtual {v1, p1, v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContentOverlayView(ILandroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 2978
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public canSwitchStorage()Z
    .locals 1

    .prologue
    .line 3248
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCanSwitchStorage:Z

    return v0
.end method

.method public cancelSelftimer(Z)V
    .locals 0
    .param p1, "continueToCapture"    # Z

    .prologue
    .line 2122
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->cancelSelfTimerCountDownView()V

    .line 2123
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideSelfTimerCountDownView()V

    .line 2124
    if-nez p1, :cond_0

    .line 2125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideOnScreenButton()V

    .line 2127
    :cond_0
    return-void
.end method

.method public changeSurfaceSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1407
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1410
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, 0x0

    .line 1411
    .local v0, "needPostSurfaceChangeEventBySelf":Z
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v2, p2, :cond_0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->needStartPreview()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1418
    const/4 v0, 0x1

    .line 1421
    :cond_0
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1422
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1424
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenSettingsDialog:Z

    if-eqz v2, :cond_2

    .line 1426
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1428
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onSurfaceSizeChanged(II)V

    .line 1430
    if-eqz v0, :cond_1

    .line 1434
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    new-instance v3, Lcom/sonyericsson/android/camera/view/CameraWindow$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/view/CameraWindow$2;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1452
    :cond_1
    :goto_0
    return-void

    .line 1448
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onSurfaceSizeChanged(II)V

    goto :goto_0
.end method

.method public clearFaceRectangles()V
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->clearFaceRectangle()V

    .line 1776
    return-void
.end method

.method public clearObjectRectangles()V
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->claerObjectRectangle()V

    .line 1824
    return-void
.end method

.method public clearTouchRectangle()V
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->clearTouchRectangle()V

    .line 1761
    return-void
.end method

.method public closeReviewWindow()V
    .locals 1

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_0

    .line 2864
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hide()V

    .line 2866
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_0

    .line 2302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updateShortcutTray()V

    .line 2304
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2305
    return-void
.end method

.method public countUp(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2987
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/burst/CountUpView;->setCount(Landroid/view/View;I)V

    .line 2989
    :cond_0
    return-void
.end method

.method public disableClickOnThumbnail()V
    .locals 1

    .prologue
    .line 3066
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 3067
    return-void
.end method

.method public disableTouchDetectedFace()V
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->disableTouchDetectedFace()V

    .line 1801
    return-void
.end method

.method public disbleTouchEvent()V
    .locals 1

    .prologue
    .line 2225
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getAllEventListener()Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->disableTouchEvent()V

    .line 2226
    return-void
.end method

.method public enableClickOnThumbnail()V
    .locals 1

    .prologue
    .line 3070
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 3071
    return-void
.end method

.method public enableTouchEvent()V
    .locals 1

    .prologue
    .line 2218
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getAllEventListener()Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->enableTouchEvent()V

    .line 2219
    return-void
.end method

.method public fadeoutCounter()V
    .locals 2

    .prologue
    .line 2992
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCounterView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2993
    return-void
.end method

.method public getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 1

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera/CameraActivity;

    return-object v0
.end method

.method public getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 2

    .prologue
    .line 2553
    const/4 v0, 0x0

    .line 2554
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    if-eqz v1, :cond_0

    .line 2555
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    .line 2557
    :cond_0
    if-nez v0, :cond_1

    .line 2558
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    .line 2560
    :cond_1
    return-object v0
.end method

.method getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
    .locals 1

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    return-object v0
.end method

.method public getLocationListener()Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;
    .locals 0

    .prologue
    .line 1088
    return-object p0
.end method

.method public final getOrientation()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mOrientation:I

    return v0
.end method

.method public getPosition(II)Landroid/graphics/Rect;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera/view/TouchArea;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/TouchArea;->getTouchAreaRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2776
    .local v3, "touchArea":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2777
    .local v2, "surface":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPositionToAligned(IILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v6

    .line 2786
    .local v6, "position":Landroid/graphics/Rect;
    return-object v6
.end method

.method public getRequestId(Z)I
    .locals 2
    .param p1, "isLoadingIconRequired"    # Z

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->preparationForInstantViewer()V

    .line 1256
    const/4 v0, 0x0

    .line 1258
    .local v0, "requestId":I
    if-eqz p1, :cond_0

    .line 1259
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createContentFrame()I

    move-result v0

    .line 1265
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onShutterDone(Z)V

    .line 1268
    return v0

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result v0

    goto :goto_0
.end method

.method public getSurfaceRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 1507
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1508
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1509
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1510
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1514
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getTop()I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .locals 1

    .prologue
    .line 3152
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    return-object v0
.end method

.method public getTopPriorityFace()Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->getTopPriorityFace()Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v0

    return-object v0
.end method

.method public getTouchArea()Landroid/view/View;
    .locals 2

    .prologue
    .line 1543
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    const v1, 0x7f0f003a

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideBalloonTips()V
    .locals 1

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3137
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->hide()V

    .line 3139
    :cond_0
    return-void
.end method

.method public hideBlankScreen()V
    .locals 2

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mWindowCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mWindowCover:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2635
    :cond_0
    return-void
.end method

.method public hideDefaultView(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1714
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1715
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideDefaultViewCamera()V

    .line 1719
    :goto_0
    return-void

    .line 1717
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideDefaultViewVideo()V

    goto :goto_0
.end method

.method public hideFaceRectangles()V
    .locals 1

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->hideFaceRectangle()V

    .line 1772
    return-void
.end method

.method public hideObjectRectangles()V
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->hideObjectRectangle()V

    .line 1820
    return-void
.end method

.method public hideOnScreenButton()V
    .locals 1

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->clearTouched()V

    .line 3210
    return-void
.end method

.method public hidePauseView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1208
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideBalloonTips()V

    .line 1209
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->pauseSettings()V

    .line 1210
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->pause()V

    .line 1211
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->releaseCapturingModeSelector()V

    .line 1214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/Indicators;->setPhotoSmileCaptureVisible(Z)V

    .line 1218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/Indicators;->setVideoSmileCaptureVisible(Z)V

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->onPause()V

    .line 1224
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeReviewWindow()V

    .line 1226
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->clearPreInflatedViews()V

    .line 1227
    return-void
.end method

.method public hideRecordingView()V
    .locals 3

    .prologue
    .line 2039
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->STANDBY:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeOnScreenButtonAppearance(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;)V

    .line 2043
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->NORMAL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setRectangleColor(Lcom/sonyericsson/cameracommon/focusview/RectangleColor;Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 2045
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setOrientation(I)V

    .line 2046
    return-void
.end method

.method public hideShutterAnimeBack()V
    .locals 0

    .prologue
    .line 1235
    return-void
.end method

.method public hideShutterAnimeBackForce()V
    .locals 0

    .prologue
    .line 1244
    return-void
.end method

.method public hideSurfaceView()V
    .locals 2

    .prologue
    .line 1695
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1698
    :cond_0
    return-void
.end method

.method public hideThumbnail()V
    .locals 1

    .prologue
    .line 3074
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hideThumbnail()V

    .line 3075
    return-void
.end method

.method public hideThumbnailWhileRecording()V
    .locals 1

    .prologue
    .line 3275
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    .line 3276
    return-void
.end method

.method public hideTouchRectangle()V
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->hideTouchRectangle()V

    .line 1757
    return-void
.end method

.method public hideZoombar()V
    .locals 1

    .prologue
    .line 2162
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2167
    :goto_0
    return-void

    .line 2166
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setZoombarVisibility(Z)V

    goto :goto_0
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 346
    .local v0, "displayRect":Landroid/graphics/Rect;
    new-instance v3, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;Lcom/sonyericsson/android/camera/view/CameraWindow$1;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    .line 347
    new-instance v3, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    .line 350
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 351
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03002c

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    .line 357
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 359
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->requestLayout()V

    .line 371
    iput v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    .line 372
    iput v5, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    .line 374
    new-instance v3, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    .line 376
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupTouchArea()V

    .line 380
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setup(Landroid/view/View;)V

    .line 383
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v3

    const v4, 0x7f0f006d

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 385
    .local v2, "viewFinder":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setupRectangles(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/graphics/Rect;)V

    .line 386
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinder:Landroid/view/View;

    .line 388
    const-string v3, "End inflate camera window"

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public initZoom()V
    .locals 2

    .prologue
    .line 2244
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    .line 2245
    .local v0, "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    if-eqz v0, :cond_0

    .line 2246
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->initZoom()V

    .line 2249
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mZoomStep:I

    .line 2250
    return-void
.end method

.method public isDisplayFrontCameraLocationIndication()Z
    .locals 3

    .prologue
    .line 3196
    const/4 v0, 0x0

    .line 3198
    .local v0, "display":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3205
    :goto_0
    return v0

    .line 3202
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isOpenCapturingModeSelector()Z
    .locals 1

    .prologue
    .line 2520
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenCapturingModeSelector:Z

    return v0
.end method

.method public isOpenPhotoStackMenu()Z
    .locals 1

    .prologue
    .line 2506
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenPhotoStackMenu:Z

    return v0
.end method

.method public isOpenSettingsDialog()Z
    .locals 1

    .prologue
    .line 2513
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenSettingsDialog:Z

    return v0
.end method

.method public isTouchGuideShown()Z
    .locals 1

    .prologue
    .line 2528
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsTouchGuideShown:Z

    return v0
.end method

.method public onAcquired(ZZ)V
    .locals 1
    .param p1, "gps"    # Z
    .param p2, "net"    # Z

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/CameraWindowListener;->onAcquired(ZZ)V

    .line 1351
    return-void
.end method

.method public onClickThumbnailProgress()V
    .locals 4

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-nez v1, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1294
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 1297
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CLICK_CONTENT_PROGRESS:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0

    .line 1303
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CLICK_CONTENT_PROGRESS:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onClose(Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;)V
    .locals 2
    .param p1, "sender"    # Lcom/sonyericsson/android/camera/view/FrontCameraLocationIndicatorDialog;

    .prologue
    .line 2600
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v0

    .line 2601
    .local v0, "configurations":Lcom/sonyericsson/android/camera/configuration/Configurations;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->countUpFrontCameraLocationHelpShownTimes()V

    .line 2603
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->resume()V

    .line 2604
    return-void
.end method

.method protected onCloseCapturingModeSelector()V
    .locals 1

    .prologue
    .line 2448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenCapturingModeSelector:Z

    .line 2450
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2451
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->resume()V

    .line 2453
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToDimSystemUi()V

    .line 2454
    return-void
.end method

.method public onClosePhotoStackMenu()V
    .locals 1

    .prologue
    .line 2434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenPhotoStackMenu:Z

    .line 2436
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2437
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->resume()V

    .line 2439
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToDimSystemUi()V

    .line 2440
    return-void
.end method

.method public onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V
    .locals 1
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p2, "isAllClosed"    # Z

    .prologue
    .line 2416
    if-eqz p2, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 2418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenSettingsDialog:Z

    .line 2420
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2421
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->resume()V

    .line 2423
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToDimSystemUi()V

    .line 2425
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updateShortcutTray()V

    .line 2427
    :cond_1
    return-void
.end method

.method public onCloseStorageDialog()V
    .locals 1

    .prologue
    .line 3234
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3235
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->resume()V

    .line 3237
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToDimSystemUi()V

    .line 3238
    return-void
.end method

.method public onDeleted(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2894
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 2895
    return-void
.end method

.method public onDisabled()V
    .locals 2

    .prologue
    .line 1369
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 1371
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onDisabled()V

    .line 1373
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenSettingsDialog:Z

    if-eqz v0, :cond_0

    .line 1374
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateSettingDialog()V

    .line 1376
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mPrepared:Z

    .line 400
    return-void
.end method

.method public onHidePhotoStackDialog()V
    .locals 0

    .prologue
    .line 2643
    return-void
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 2
    .param p1, "orient"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 2309
    const/4 v0, 0x1

    .line 2310
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne p1, v1, :cond_0

    .line 2311
    const/4 v0, 0x1

    .line 2315
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onOrientationChanged(I)V

    .line 2316
    return-void

    .line 2313
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onLost()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindowListener;->onLost()V

    .line 1360
    return-void
.end method

.method public onModeFinish()V
    .locals 1

    .prologue
    .line 2938
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeCapturingModeSelector()V

    .line 2940
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2944
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideSurfaceView()V

    .line 2945
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2946
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_0

    .line 2947
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->hideShortcutTray()V

    .line 2948
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->closeDialogs()V

    .line 2954
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->terminateApplication()V

    .line 2955
    return-void

    .line 2952
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    goto :goto_0
.end method

.method public onModeSelect(Ljava/lang/String;)V
    .locals 2
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 2902
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2904
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_0

    .line 2905
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getPreviousManualMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2909
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isNewMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2910
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->sendGoogleAnalyticsModeSelectorEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2912
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2916
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeCapturingModeSelector()V

    .line 2918
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->checkAudioResourceAndShowErrorDialogIfNecessary(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    .line 2920
    return-void
.end method

.method public onNotifyThermalNormal()V
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindowListener;->onNotifyThermalNormal()V

    .line 1385
    :cond_0
    return-void
.end method

.method public onNotifyThermalWarning()V
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindowListener;->onNotifyThermalWarning()V

    .line 1394
    :cond_0
    return-void
.end method

.method protected onOpenCapturingModeSelector()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2368
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeSettingsDialog()V

    .line 2369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenCapturingModeSelector:Z

    .line 2371
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->suspend()V

    .line 2372
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2375
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideBalloonTips()V

    .line 2377
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setLeftIconsVisibility(Z)V

    .line 2378
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setZoombarVisibility(Z)V

    .line 2379
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToRecoverSystemUi()V

    .line 2380
    return-void
.end method

.method public onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V
    .locals 2
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p2, "isAlreadyOpened"    # Z
    .param p3, "isAnimation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2391
    if-nez p2, :cond_0

    .line 2394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenSettingsDialog:Z

    .line 2395
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeCapturingModeSelector()V

    .line 2397
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2400
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideBalloonTips()V

    .line 2401
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->suspend()V

    .line 2402
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setNotificationsVisibility(Z)V

    .line 2403
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setZoombarVisibility(Z)V

    .line 2405
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToRecoverSystemUi()V

    .line 2407
    :cond_0
    return-void
.end method

.method public onOpenStorageDialog()V
    .locals 1

    .prologue
    .line 3218
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeSettingsDialog()V

    .line 3219
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeCapturingModeSelector()V

    .line 3223
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3224
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->suspend()V

    .line 3226
    :cond_0
    return-void
.end method

.method public onReviewWindowClose()V
    .locals 1

    .prologue
    .line 2886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenInstantViewer:Z

    .line 2888
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CONTROLLER_RESUME:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 2889
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToDimSystemUi()V

    .line 2890
    return-void
.end method

.method public onReviewWindowOpen()V
    .locals 3

    .prologue
    .line 2878
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideCameraItems()V

    .line 2879
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToRecoverSystemUi()V

    .line 2881
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CONTROLLER_PAUSE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 2882
    return-void
.end method

.method public onShowPhotoStackDialog()V
    .locals 0

    .prologue
    .line 2639
    return-void
.end method

.method public onStorageAutoSwitch(Ljava/lang/String;)V
    .locals 2
    .param p1, "currentStorage"    # Ljava/lang/String;

    .prologue
    .line 3255
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_SHOULD_CHANGE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->AUTO_STATE_TRANSITION:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 3257
    return-void
.end method

.method public onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 4
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/view/CameraWindow$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow$1;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1327
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinder:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1459
    iput p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    .line 1460
    iput p2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    .line 1463
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera/view/TouchArea;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/TouchArea;->setSurfaceArea(Landroid/graphics/Rect;)V

    .line 1464
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->onSurfaceSizeChanged(IIIZ)V

    .line 1466
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 1469
    new-instance v0, Lcom/sonyericsson/android/camera/view/CameraWindow$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/CameraWindow$3;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRunnableUpdateAf:Ljava/lang/Runnable;

    .line 1483
    new-instance v0, Lcom/sonyericsson/android/camera/view/CameraWindow$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/CameraWindow$4;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRunnableSetPadding:Ljava/lang/Runnable;

    .line 1499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRunnableSetPadding:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->post(Ljava/lang/Runnable;)Z

    .line 1500
    return-void
.end method

.method public openInstantViewer([BLjava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 11
    .param p1, "pictureData"    # [B
    .param p2, "videoPath"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    const/4 v6, 0x0

    .line 2845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenInstantViewer:Z

    .line 2847
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

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

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v8

    move-object v2, p1

    move-object v3, p2

    move-object v9, p0

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2858
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeReviewWindow()V

    .line 2860
    :cond_0
    return-void
.end method

.method public openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    const/4 v5, 0x0

    .line 2818
    iget-object v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-ne v0, v1, :cond_4

    .line 2824
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->launchEditor(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 2841
    :cond_3
    :goto_0
    return-void

    .line 2829
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

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

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v7

    move-object v2, p1

    move-object v8, p0

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2839
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeReviewWindow()V

    goto :goto_0
.end method

.method public openSettingsMenu()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->sendEmptyMessage(I)Z

    .line 1169
    return v1
.end method

.method public pauseSettings()V
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->closeDialogs()V

    .line 1165
    :cond_0
    return-void
.end method

.method public prepare(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 4
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 404
    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mType:I

    .line 407
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupViewFinderIcons(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 410
    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 413
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera/CameraActivity;->addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 418
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/CameraWindowListener;->getLocation()Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    move-result-object v1

    .line 420
    .local v1, "location":Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/CameraWindowListener;->hasWithholdThermalWarning()Z

    move-result v0

    .line 422
    .local v0, "isThermalWarning":Z
    new-instance v2, Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCameraWindowListener:Lcom/sonyericsson/android/camera/view/CameraWindowListener;

    .line 425
    if-eqz v1, :cond_0

    .line 426
    iget-boolean v2, v1, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;->mIsAcquired:Z

    if-eqz v2, :cond_1

    .line 427
    iget-boolean v2, v1, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;->mIsGps:Z

    iget-boolean v3, v1, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;->mIsNetwork:Z

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onAcquired(ZZ)V

    .line 434
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 435
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onNotifyThermalWarning()V

    .line 440
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->applyAllParametes(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 442
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mPrepared:Z

    .line 444
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLastDetectedOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    .line 447
    return-void

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onLost()V

    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onNotifyThermalNormal()V

    goto :goto_1
.end method

.method public prepareRecording(IZZ)V
    .locals 2
    .param p1, "duration"    # I
    .param p2, "constraint"    # Z
    .param p3, "isVideoHdrUsed"    # Z

    .prologue
    .line 1946
    if-nez p2, :cond_0

    .line 1947
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setSequenceMode(Z)V

    .line 1949
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 1950
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    .line 1951
    return-void
.end method

.method public prepared()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mPrepared:Z

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1108
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f0f006d

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1109
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1110
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1115
    :cond_0
    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mWindowCover:Landroid/view/View;

    .line 1118
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    if-eqz v1, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRunnableSetPadding:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1120
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRunnableUpdateAf:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow$CameraWindowHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1123
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->release()V

    .line 1125
    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mReleased:Z

    .line 1130
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->release()V

    .line 1131
    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 1132
    return-void
.end method

.method public released()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mReleased:Z

    return v0
.end method

.method public removeEarlyThumbnailView()V
    .locals 1

    .prologue
    .line 3121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeEarlyThumbnailView()V

    .line 3122
    return-void
.end method

.method public requestInflate()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mViewFinderLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startInflateTask(Landroid/view/LayoutInflater;Ljava/util/List;)V

    .line 341
    :cond_0
    return-void
.end method

.method public requestShowIconsOnReviewWindow(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 1332
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setUri(Landroid/net/Uri;)V

    .line 1335
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenInstantViewer:Z

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->showRightIcons(Ljava/lang/Boolean;)V

    .line 1339
    :cond_0
    return-void
.end method

.method public requestToAddVideoChapter(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1955
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v0

    .line 1956
    .local v0, "cameraDevice":Lcom/sonyericsson/android/camera/device/CameraDevice;
    if-eqz v0, :cond_0

    .line 1957
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPreviewFrameRetriever()Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/view/CameraWindow$VideoChapterInserter;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow$VideoChapterInserter;-><init>(Lcom/sonyericsson/android/camera/view/CameraWindow;I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->request(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)Z

    .line 1962
    :cond_0
    return-void
.end method

.method public requestToRestoreNavigationBar()V
    .locals 0

    .prologue
    .line 3268
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToRestoreSystemUi()V

    .line 3269
    return-void
.end method

.method public resume(Lcom/sonyericsson/android/camera/parameter/Parameters;Z)V
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;
    .param p2, "delayed"    # Z

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideBlankScreen()V

    .line 1137
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepared()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1140
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->applyAllParametes(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1149
    :goto_0
    if-eqz p2, :cond_0

    .line 1150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showSurfaceView()Z

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->onResume()V

    .line 1156
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->resume()V

    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIsOpenCapturingModeSelector:Z

    .line 1159
    return-void

    .line 1144
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->applyResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1145
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showSurfaceView()Z

    goto :goto_0
.end method

.method public setAutoReviweDuration(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setDuration(J)V

    .line 2807
    :cond_0
    return-void
.end method

.method public setCanSwitchStorage(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 3243
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCanSwitchStorage:Z

    .line 3244
    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 1548
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mType:I

    if-nez v0, :cond_0

    .line 1569
    :goto_0
    return-void

    .line 1555
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mType:I

    .line 1557
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/Notification;->updateLayout()V

    .line 1559
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mType:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/view/Notification;->onModeChanged(IZ)V

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1564
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideOnScreenButton()V

    .line 1565
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentLayoutPattern()Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    if-eq v0, v1, :cond_2

    .line 1566
    sget-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->STANDBY:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeOnScreenButtonAppearance(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;)V

    .line 1568
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateCapturingModeButton(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0
.end method

.method public setChangeFocusFaceListener(Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setChangeFocusFaceListener(Lcom/sonyericsson/android/camera/view/DetectedFaceRectangles$ChangeFocusFaceListener;)V

    .line 1530
    return-void
.end method

.method public setEarlyThumbnailView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3100
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setEarlyThumbnailView(Landroid/view/View;)V

    .line 3101
    return-void
.end method

.method public setEmptyShortcut()V
    .locals 1

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->clearShortcutTray()V

    .line 2932
    return-void
.end method

.method public setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    if-nez v0, :cond_0

    .line 2534
    sget-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow;->TAG:Ljava/lang/String;

    const-string v1, "setFocusMode fail. mFocusRectangles is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    :goto_0
    return-void

    .line 2538
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne p1, v0, :cond_1

    .line 2539
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mZoomStep:I

    if-nez v0, :cond_2

    .line 2540
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 2545
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    goto :goto_0

    .line 2542
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    goto :goto_1
.end method

.method public setGeotag(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3147
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 3149
    :cond_0
    return-void
.end method

.method public setNotificationCondition(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;)V
    .locals 2
    .param p1, "condition"    # Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;

    .prologue
    .line 1870
    invoke-static {p1}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->create(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;)Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    move-result-object v0

    .line 1871
    .local v0, "cond":Lcom/sonymobile/cameracommon/view/RecognizedCondition;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    if-eqz v1, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/view/Notification;->onRecognisedConditionChanged(Lcom/sonymobile/cameracommon/view/RecognizedCondition;)V

    .line 1874
    :cond_0
    return-void
.end method

.method public setNotificationMacro(ZLcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "sceneMode"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    if-eqz v0, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/cameracommon/view/Notification;->onMacroStatusChanged(ZLcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)V

    .line 1846
    :cond_0
    return-void
.end method

.method public setNotificationScene(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)V
    .locals 2
    .param p1, "sceneMode"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .prologue
    .line 1856
    invoke-static {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->create(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)Lcom/sonymobile/cameracommon/view/RecognizedScene;

    move-result-object v0

    .line 1857
    .local v0, "scene":Lcom/sonymobile/cameracommon/view/RecognizedScene;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    if-eqz v1, :cond_0

    .line 1858
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mNotification:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/view/Notification;->onRecognisedSceneChanged(Lcom/sonymobile/cameracommon/view/RecognizedScene;)V

    .line 1860
    :cond_0
    return-void
.end method

.method protected setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result v0

    .line 1657
    .local v0, "isRecording":Z
    if-eqz v0, :cond_1

    .line 1658
    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-super {p0, p1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(II)V

    .line 1663
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->released()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1664
    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow;->TAG:Ljava/lang/String;

    const-string v2, "setOrientation() : already released."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    :goto_1
    return-void

    .line 1660
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    goto :goto_0

    .line 1667
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1670
    iput p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mOrientation:I

    .line 1672
    if-eqz v0, :cond_4

    .line 1673
    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setCameraUiOrientation(I)V

    .line 1678
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    if-eqz v1, :cond_3

    .line 1679
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setUiOrientation(I)V

    .line 1682
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->clearFaceRectangles()V

    .line 1683
    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeSurfaceSize(II)V

    goto :goto_1

    .line 1675
    :cond_4
    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setCameraUiOrientation(I)V

    goto :goto_2
.end method

.method public setOrientationFollowingSensor()V
    .locals 1

    .prologue
    .line 1690
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setOrientation(I)V

    .line 1691
    return-void
.end method

.method public setPhotoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 1804
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updatePhotoSmileCaptureIndicator(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1806
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1807
    return-void
.end method

.method public setRecordingOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 3264
    iput p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mRecordingOrientation:I

    .line 3265
    return-void
.end method

.method public setRectangleColor(Lcom/sonyericsson/cameracommon/focusview/RectangleColor;Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 1
    .param p1, "color"    # Lcom/sonyericsson/cameracommon/focusview/RectangleColor;
    .param p2, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setRectangleColor(Lcom/sonyericsson/cameracommon/focusview/RectangleColor;Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 1765
    return-void
.end method

.method public setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 2577
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2580
    .local v0, "aspectRatio":F
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 2581
    .local v1, "newRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    .line 2582
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    .line 2584
    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeSurfaceSize(II)V

    .line 2585
    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 3
    .param p1, "capturingMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2279
    :cond_0
    :goto_0
    return-void

    .line 2258
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_0

    .line 2262
    :cond_2
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 2263
    sget-object v0, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/android/camera/view/CameraWindow;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setSelfTimer [Irregular value] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2269
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->createSelfTimerCountDownView(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    goto :goto_0

    .line 2272
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->removeSelfTimerCountDownView()V

    goto :goto_0

    .line 2263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V
    .locals 3
    .param p1, "capturingMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .prologue
    .line 2283
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2292
    :cond_0
    :goto_0
    return-void

    .line 2286
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->getNotificationIconId()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/Indicators;->onVideoSelftimerSettingsChanged(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZI)V

    goto :goto_0
.end method

.method public setThumbnailViewClickListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    .prologue
    .line 3125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 3126
    return-void
.end method

.method public setTouchCapture(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setTouchCapture(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V

    .line 2297
    return-void
.end method

.method public setTouchEventListener(Landroid/view/View$OnTouchListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    const/4 v4, 0x0

    .line 1533
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRect:Landroid/graphics/Rect;

    .line 1539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera/view/TouchArea;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/TouchArea;->setTocuhAreaListener(Landroid/view/View$OnTouchListener;)V

    .line 1540
    return-void
.end method

.method public setVideoAutoReviweDuration(Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    .prologue
    .line 2814
    return-void
.end method

.method public setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 2589
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2591
    .local v0, "aspectRatio":F
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 2592
    .local v1, "newRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    .line 2593
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    .line 2595
    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeSurfaceSize(II)V

    .line 2596
    return-void
.end method

.method public setVideoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .prologue
    .line 1810
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateVideoSmileCaptureIndicator(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    .line 1812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getSmileCapture(Z)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1813
    return-void
.end method

.method public setupSurfaceView(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1069
    return-void
.end method

.method public showAutoFocusView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1900
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToRemoveSystemUi()V

    .line 1902
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1905
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v0, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1906
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_0

    .line 1907
    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->CAPTURING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeOnScreenButtonAppearance(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;)V

    .line 1910
    :cond_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setNotificationsVisibility(Z)V

    .line 1911
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setLeftIconsVisibility(Z)V

    .line 1913
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mZoomStep:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->showAfRectangle(I)V

    .line 1915
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v1, :cond_1

    .line 1916
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->hideShortcutTray()V

    .line 1918
    :cond_1
    return-void
.end method

.method public showBalloonTips()V
    .locals 1

    .prologue
    .line 3129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->isBalloonTipsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->show()V

    .line 3133
    :cond_0
    return-void
.end method

.method public showBlankScreen()V
    .locals 5

    .prologue
    .line 2608
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mWindowCover:Landroid/view/View;

    if-nez v3, :cond_1

    .line 2609
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2610
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez v1, :cond_0

    .line 2622
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    return-void

    .line 2613
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mWindowCover:Landroid/view/View;

    .line 2614
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2615
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2616
    .local v0, "coverParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mWindowCover:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2618
    .end local v0    # "coverParams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "window":Landroid/view/Window;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v3, :cond_2

    .line 2619
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->clearShortcutTray()V

    .line 2621
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mWindowCover:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showBurstShootingView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1882
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToRemoveSystemUi()V

    .line 1884
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1886
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setNotificationsVisibility(Z)V

    .line 1887
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setLeftIconsVisibility(Z)V

    .line 1889
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->hideShortcutTray()V

    .line 1892
    :cond_0
    return-void
.end method

.method public showCurrentAfRectangle()V
    .locals 1

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->showCurrentAfRectangle()V

    .line 2550
    return-void
.end method

.method public showDefaultView()V
    .locals 1

    .prologue
    .line 1576
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView(Z)V

    .line 1577
    return-void
.end method

.method public showIcons()V
    .locals 1

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showIcons()V

    .line 1064
    return-void
.end method

.method public showProgressForSnapshot(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 3104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->removeEarlyThumbnailView()V

    .line 3105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->showProgress(I)V

    .line 3106
    return-void
.end method

.method public showReadyForRecordView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1926
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToRemoveSystemUi()V

    .line 1928
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1931
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v0, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1932
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_0

    .line 1933
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->HIDDEN:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 1936
    :cond_0
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setNotificationsVisibility(Z)V

    .line 1937
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setLeftIconsVisibility(Z)V

    .line 1939
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v1, :cond_1

    .line 1940
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->hideShortcutTray()V

    .line 1942
    :cond_1
    return-void
.end method

.method public showRecordingPausingView()V
    .locals 2

    .prologue
    .line 2049
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2050
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->PAUSING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeOnScreenButtonAppearance(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;)V

    .line 2053
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2054
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 2056
    :cond_0
    return-void
.end method

.method public showRecordingView()V
    .locals 3

    .prologue
    .line 2008
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2010
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToDimSystemUi()V

    .line 2014
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;->CAPTURING:Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeOnScreenButtonAppearance(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureState;)V

    .line 2017
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->hideShortcutTray()V

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    if-eqz v0, :cond_1

    .line 2021
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mIndicators:Lcom/sonyericsson/android/camera/view/Indicators;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/Indicators;->hideSelfTimerIndicator()V

    .line 2025
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    .line 2028
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->RECORDING:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->setRectangleColor(Lcom/sonyericsson/cameracommon/focusview/RectangleColor;Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 2030
    iget v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setOrientation(I)V

    .line 2032
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2033
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 2035
    :cond_2
    return-void
.end method

.method public showStorageWarningView()V
    .locals 1

    .prologue
    .line 1584
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView(Z)V

    .line 1585
    return-void
.end method

.method public showSurfaceView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1703
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1704
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1705
    const/4 v0, 0x1

    .line 1707
    :cond_0
    return v0
.end method

.method public showZoombar(Z)V
    .locals 2
    .param p1, "isRecording"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2140
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2143
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setZoomBarType()V

    .line 2145
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2147
    if-nez p1, :cond_2

    .line 2148
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setNotificationsVisibility(Z)V

    .line 2151
    :cond_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setLeftIconsVisibility(Z)V

    .line 2153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->hideShortcutTray()V

    goto :goto_0
.end method

.method public startCaptureFeedbackAnimation()V
    .locals 2

    .prologue
    .line 3092
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_0

    .line 3094
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-static {}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory;->createDefaultAnimation()Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V

    .line 3097
    :cond_0
    return-void
.end method

.method public startEarlyThumbnailInsertAnimation(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 3109
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(I)V

    .line 3112
    :cond_0
    return-void
.end method

.method public startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 3115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 3118
    :cond_0
    return-void
.end method

.method public startHideThumbnail(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 3078
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 3081
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f040010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3084
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3087
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3088
    return-void
.end method

.method public startObjectTrackingAnimation(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->startObjectTrackingAnimation(Landroid/graphics/Rect;)V

    .line 2565
    return-void
.end method

.method public startPhotoSelftimer()V
    .locals 2

    .prologue
    .line 2086
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2087
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->addSelfTimerCountDownView()V

    .line 2088
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 2089
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->hideShortcutTray()V

    .line 2092
    :cond_0
    return-void
.end method

.method public startSelfTimerCountDownAnimation()V
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->startSelfTimerCountDownAnimation()V

    .line 2133
    :cond_0
    return-void
.end method

.method public startSetupCapturingModeSelectorTask(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 0
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 2718
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startSetupCapturingModeSelectorTask()V

    .line 2719
    return-void
.end method

.method public startTouchDownAnimation(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rectAf"    # Landroid/graphics/Rect;

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->startTouchDownAnimation(Landroid/graphics/Rect;)V

    .line 2569
    return-void
.end method

.method public startTouchUpAnimation(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->startTouchUpAnimation(Landroid/graphics/Rect;)V

    .line 2573
    return-void
.end method

.method public startVideoSelftimer()V
    .locals 3

    .prologue
    .line 2095
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 2096
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v0, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2097
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v1, Lcom/sonyericsson/android/camera/view/CameraWindow$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2116
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v1, :cond_0

    .line 2117
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->hideShortcutTray()V

    .line 2119
    :cond_0
    return-void

    .line 2099
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_0

    .line 2106
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_0

    .line 2109
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_0

    .line 2097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSensorOrientation:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->updateFaceRectangle(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;IZ)V

    .line 1787
    return-void
.end method

.method public updateObjectRectangles(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->updateObjectRectangle(Landroid/graphics/Rect;)V

    .line 1833
    return-void
.end method

.method public updateProgressbar(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 2065
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateRecordingTime(I)V

    .line 2066
    return-void
.end method

.method public updateRecordingTime(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 2076
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateRecordingTime(I)V

    .line 2079
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->restartAnimation()V

    .line 2080
    return-void
.end method

.method public updateSettingDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    if-eqz v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updateSettingMenu(Z)V

    .line 2210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updatSecondLayerDialog(Z)V

    .line 2212
    :cond_0
    return-void
.end method

.method public updateTouchRectangle(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mFocusRectangles:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;->updateTouchRectangle(Landroid/graphics/Rect;)V

    .line 1753
    return-void
.end method

.method public updateZoombar(III)V
    .locals 3
    .param p1, "currentValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "maxSrValue"    # I

    .prologue
    .line 2182
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v1

    .line 2183
    .local v1, "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    if-eqz v1, :cond_0

    .line 2184
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCurrentParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSuperResolution()Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    move-result-object v0

    .line 2185
    .local v0, "current":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    if-ne v0, v2, :cond_3

    .line 2186
    sget-object v2, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->PARTIAL_SUPER_RESOLUTION:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V

    .line 2190
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onZoomChanged(III)V

    .line 2193
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    :cond_0
    if-gez p1, :cond_1

    .line 2194
    const/4 p1, 0x0

    .line 2196
    :cond_1
    if-le p1, p2, :cond_2

    .line 2197
    move p1, p2

    .line 2199
    :cond_2
    iput p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow;->mZoomStep:I

    .line 2200
    return-void

    .line 2188
    .restart local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    :cond_3
    sget-object v2, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->NORMAL:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V

    goto :goto_0
.end method
