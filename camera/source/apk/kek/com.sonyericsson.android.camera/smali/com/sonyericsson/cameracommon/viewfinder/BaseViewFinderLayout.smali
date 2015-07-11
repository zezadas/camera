.class public Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
.super Ljava/lang/Object;
.source "BaseViewFinderLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$1;,
        Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

.field private mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

.field private mCaptureButtonGroup:Landroid/widget/RelativeLayout;

.field private mCaptureButtonIcon:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

.field private mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentOrientation:I

.field private mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

.field private mHeadUpDisplay:Landroid/view/ViewGroup;

.field private mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

.field private mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

.field private mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

.field private mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

.field private mPreInflatedHeadUpDisplay:Landroid/view/View;

.field private mPreview:Landroid/view/View;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

.field private mRootView:Landroid/view/ViewGroup;

.field private mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mViewFinderRect:Landroid/graphics/Rect;

.field private mWindowCover:Landroid/view/View;

.field private mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 72
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 83
    const/4 v3, 0x2

    iput v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    .line 86
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 88
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    .line 97
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    .line 100
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 103
    new-instance v3, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    .line 105
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 107
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 110
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->preview_container_layout:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 113
    .local v2, "previewContainerLayout":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 117
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 118
    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 120
    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    .line 123
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method private getPreviousNavigationBarVisibility()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    return-object v0
.end method

.method private inflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 504
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 505
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 508
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    .line 515
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 516
    .local v0, "container":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 517
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 518
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 519
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 521
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 524
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container_fullscreen:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 526
    return-void

    .line 511
    .end local v0    # "container":Landroid/widget/FrameLayout;
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->viewfinder_layout:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private releaseBalloonTips()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->releaseBalloonTips()V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    .line 456
    :cond_0
    return-void
.end method

.method private releaseHeadUpDesplay()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 400
    return-void
.end method

.method private setupBalloonTips()V
    .locals 6

    .prologue
    .line 359
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v4, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_for_mode_selector_base:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    .line 362
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v4, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 364
    .local v2, "paddingbottom":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->capturing_mode_selector_button_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 366
    .local v1, "modeSelectorHeight":I
    div-int/lit8 v3, v1, 0x2

    add-int v0, v2, v3

    .line 368
    .local v0, "distanceToModeSelector":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->setupBalloonTips(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;IZ)V

    .line 369
    return-void
.end method

.method private setupCaptureButton()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_right_bottom_button:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonIcon:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_right_bottom:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonGroup:Landroid/widget/RelativeLayout;

    .line 260
    return-void
.end method

.method private setupCaptureButtonGroup()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_button_group:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    .line 248
    return-void
.end method

.method private setupCapturingModeButton()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->mode_selector_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    .line 315
    return-void
.end method

.method private setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V
    .locals 4
    .param p1, "clickListener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .prologue
    .line 280
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isDeviceInSecurityLock()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->shouldAddOnlyNewContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 286
    .local v0, "securityLevel":Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 290
    :cond_1
    new-instance v1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 296
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 297
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 298
    return-void

    .line 283
    .end local v0    # "securityLevel":Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    :cond_2
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NORMAL:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .restart local v0    # "securityLevel":Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    goto :goto_0
.end method

.method private setupRecordingIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_progress_indicator:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v2, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    .line 356
    :cond_0
    return-void
.end method

.method private setupSettingIndicators()V
    .locals 3

    .prologue
    .line 319
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->geo_tag_indicator:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 323
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->low_memory_indicator:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 327
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->thermal_indicator:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 329
    return-void
.end method

.method private setupZoombar()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->zoombar:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setSensorOrientation(I)V

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->initZoom()V

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setVisibility(I)V

    .line 346
    return-void
.end method


# virtual methods
.method public addLazyInflatedUiComponent(Landroid/view/View;)V
    .locals 1
    .param p1, "component"    # Landroid/view/View;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 641
    return-void
.end method

.method public addLazyInflatedUiComponentFullScreen(Landroid/view/View;)V
    .locals 1
    .param p1, "component"    # Landroid/view/View;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 645
    return-void
.end method

.method public attachToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->preview_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->setActivity(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->enableTouchEvent()V

    .line 150
    return-void
.end method

.method public getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method public getAllEventListener()Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    return-object v0
.end method

.method public getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    return-object v0
.end method

.method public getCaptureButtonGroup()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonIcon:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    return-object v0
.end method

.method public getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_method_indicator_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    return-object v0
.end method

.method public getCenterContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->center_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    return v0
.end method

.method public getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    return-object v0
.end method

.method public getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container_back:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLazyInflatedUiComponentContainerFront()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object v0
.end method

.method public getModeIndicatorContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->mode_indicator_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    return-object v0
.end method

.method public getPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    return-object v0
.end method

.method public getPreviewContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPreviewOverlayContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->preview_overlay_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 373
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 389
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->TAG:Ljava/lang/String;

    const-string v2, "Preview size is not set."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 394
    :goto_0
    return-object v0

    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSettingIndicatorContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->setting_indicator_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object v0
.end method

.method public getViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    return-object v0
.end method

.method public hideBlankScreen()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 497
    :cond_0
    return-void
.end method

.method public hideContentsViewController()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    .line 414
    :cond_0
    return-void
.end method

.method public hideIcons()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 652
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 653
    .local v0, "left":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 654
    .local v1, "right":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 655
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 656
    return-void
.end method

.method public hideLeftIconContainer()V
    .locals 3

    .prologue
    .line 671
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    return-void
.end method

.method public hideRightIconContainer()V
    .locals 3

    .prologue
    .line 681
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 682
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    return-void
.end method

.method public isHeadUpDesplayReady()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    .line 431
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 436
    :cond_2
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 461
    return-void
.end method

.method release()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseContentsViewController()V

    .line 188
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseBalloonTips()V

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseUiComponentContainer()V

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseBlankScreen()V

    .line 191
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseHeadUpDesplay()V

    .line 192
    return-void
.end method

.method public releaseBlankScreen()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    .line 485
    return-void
.end method

.method public releaseContentsViewController()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 448
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 449
    return-void
.end method

.method public releaseUiComponentContainer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 541
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 542
    return-void
.end method

.method public reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_0
.end method

.method requestToDimSystemUi()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    .line 566
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->LOW_PROFILE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setCurrentNavigationBarVisibility(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;)V

    .line 567
    return-void
.end method

.method requestToRecoverSystemUi()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToRecoverSystemUi(Landroid/view/View;)V

    .line 571
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->VISIBLE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setCurrentNavigationBarVisibility(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;)V

    .line 572
    return-void
.end method

.method requestToRemoveSystemUi()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToRemoveSystemUi(Landroid/view/View;)V

    .line 561
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->HIDE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setCurrentNavigationBarVisibility(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;)V

    .line 562
    return-void
.end method

.method requestToRestoreSystemUi()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 579
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$BaseViewFinderLayout$NavigationBarVisibility:[I

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviousNavigationBarVisibility()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 581
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRecoverSystemUi()V

    goto :goto_0

    .line 585
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToDimSystemUi()V

    goto :goto_0

    .line 589
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRemoveSystemUi()V

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setCurrentNavigationBarVisibility(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;)V
    .locals 0
    .param p1, "visibility"    # Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    .line 600
    return-void
.end method

.method public setOnKeyEventListener(Landroid/view/View$OnKeyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 550
    if-nez p1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 546
    return-void
.end method

.method setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 211
    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(II)V

    .line 212
    return-void
.end method

.method setOrientation(II)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "recordingOrientation"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonIcon:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setSensorOrientation(I)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->setBalloonTipsOrientation(I)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setSensorOrientation(I)V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .locals 0
    .param p1, "headUpDisplay"    # Landroid/view/View;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    .line 530
    return-void
.end method

.method setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;
    .param p2, "clickListener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "isHeadUpDesplayReady":Z
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDesplayReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->inflate()V

    .line 160
    const/4 v0, 0x1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V

    .line 165
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupCapturingModeButton()V

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupCaptureButtonGroup()V

    .line 170
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupCaptureButton()V

    .line 171
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    :cond_2
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupSettingIndicators()V

    .line 175
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupZoombar()V

    .line 176
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupRecordingIndicator()V

    .line 177
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupBalloonTips()V

    .line 179
    if-eqz v0, :cond_4

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V

    .line 183
    :cond_4
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(I)V

    .line 184
    return-void
.end method

.method public setupBlankScreen()V
    .locals 5

    .prologue
    .line 464
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-nez v3, :cond_0

    .line 465
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 466
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez v1, :cond_1

    .line 474
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 469
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->camera_window_cover:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    .line 470
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 471
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 472
    .local v0, "coverParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public showBlankScreen()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    :cond_0
    return-void
.end method

.method public showContentsViewController()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    .line 442
    :cond_0
    return-void
.end method

.method public showIcons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 659
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 660
    .local v0, "left":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 661
    .local v1, "right":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 662
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 663
    return-void
.end method

.method public showLeftIconContainer()V
    .locals 3

    .prologue
    .line 666
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 667
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 668
    return-void
.end method

.method public showRightIconContainer()V
    .locals 3

    .prologue
    .line 676
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 677
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    return-void
.end method

.method public tearDownBlankScreen()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideBlankScreen()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    .line 481
    :cond_0
    return-void
.end method
