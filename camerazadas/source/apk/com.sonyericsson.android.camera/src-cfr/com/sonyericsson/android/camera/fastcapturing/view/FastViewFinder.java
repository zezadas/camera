/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$DeviceStabilityCondition
 *  com.sonyericsson.cameraextension.CameraExtension$ExtFace
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingResult
 *  com.sonyericsson.cameraextension.CameraExtension$SceneMode
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionResult
 */
package com.sonyericsson.android.camera.fastcapturing.view;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.graphics.drawable.Drawable;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.burst.CountUpView;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.ParameterSelectability;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Facing;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler;
import com.sonyericsson.android.camera.fastcapturing.ChapterThumbnail;
import com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity;
import com.sonyericsson.android.camera.fastcapturing.FastCapturingCameraUtils;
import com.sonyericsson.android.camera.fastcapturing.PlatformDependencyResolver;
import com.sonyericsson.android.camera.fastcapturing.StateMachine;
import com.sonyericsson.android.camera.fastcapturing.view.BaseFastViewFinder;
import com.sonyericsson.android.camera.fastcapturing.view.CaptureArea;
import com.sonyericsson.android.camera.fastcapturing.view.FastCapturingParameterChanger;
import com.sonyericsson.android.camera.fastcapturing.view.FastLayoutAsyncInflateItems;
import com.sonyericsson.android.camera.view.LayoutAsyncInflateItems;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.android.camera.view.settings.SettingList;
import com.sonyericsson.android.camera.view.settings.SettingUtil;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationFactory;
import com.sonyericsson.cameracommon.capturefeedback.contextview.GLSurfaceContextView;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.focusview.FocusActionListener;
import com.sonyericsson.cameracommon.focusview.FocusRectangles;
import com.sonyericsson.cameracommon.focusview.FocusRectanglesViewList;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageAutoSwitchController;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.review.AutoReviewWindow;
import com.sonyericsson.cameracommon.review.ReviewWindowListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ClassDefinitionChecker;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.PresetConfigurationResolver;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.BaseViewFinderLayout;
import com.sonyericsson.cameracommon.viewfinder.DefaultLayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.DefaultLayoutPatternApplier;
import com.sonyericsson.cameracommon.viewfinder.InflateItem;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.LayoutPatternApplier;
import com.sonyericsson.cameracommon.viewfinder.ViewFinder;
import com.sonyericsson.cameracommon.viewfinder.balloontips.BalloonTips;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButton;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButtonAttributes;
import com.sonyericsson.cameracommon.viewfinder.indicators.GeotagIndicator;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingIndicator;
import com.sonyericsson.cameracommon.zoombar.Zoombar;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import com.sonymobile.cameracommon.view.Notification;
import com.sonymobile.cameracommon.view.RecognizedCondition;
import com.sonymobile.cameracommon.view.RecognizedScene;
import com.sonymobile.cameracommon.view.SelfTimerCountDownView;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/*
 * Failed to analyse overrides
 */
public class FastViewFinder
extends ViewFinder
implements StateMachine.OnStateChangedListener,
SurfaceHolder.Callback,
LocationAcquiredListener,
ReviewWindowListener,
ContentResolverUtilListener,
StorageAutoSwitchController.StorageAutoSwitchListener,
FocusActionListener,
ContentsViewController.OnClickThumbnailProgressListener,
BaseFastViewFinder {
    private static final String TAG = FastViewFinder.class.getSimpleName();
    private FastCapturingActivity mActivity;
    private AutoReviewWindow mAutoReview;
    private AutoReview mAutoReviewSetting;
    private CameraDeviceHandler mCameraDevice = null;
    private final SettingExecutorInterface<SettingGroup> mCameraSwitchExecutor;
    private CaptureFeedback mCaptureFeedback;
    private CapturingMode mCapturingMode;
    private ImageView mConditionIndicatorIcon = null;
    private View mCounterView;
    private BaseFastViewFinder.UiComponentKind mCurrentDisplayingUiComponent;
    private SettingDialogItemFactory mDialogItemFactory;
    private FocusRectangles mFocusRectangles;
    private final View.OnKeyListener mInterceptSettingDialogKeyListener;
    private Boolean mIsFaceDetectionIdSupported;
    private boolean mIsInstantViewerOpened = false;
    private boolean mIsSetupHeadupDisplayInvoked;
    private KeyEventTranslator mKeyEventTranslator;
    private SelfTimer mPhotoSelfTimerSetting;
    private final PostUiInflatedTask mPostUiInflatedTask;
    private SharedPreferences mPrefs;
    private int mRecordingOrientation;
    private ImageView mSceneIndicatorIcon;
    private TextView mSceneIndicatorText;
    private Runnable mSceneIndicatorTextRunnable;
    private SelfTimerCountDownView mSelfTimerCountDownView;
    private SelfTimerCountDownView mSelfTimerCountDownViewNext;
    private final SettingDialogListener mSettingDialogListener;
    private SettingDialogStack mSettingDialogStack;
    private final SettingExecutorInterface<SettingGroup> mSettingMenuOpenExecutor;
    private final SettingExecutorInterface<SettingList.Shortcut> mSettingShortcutDialogOpenExecutor;
    private final SettingExecutorInterface<SettingGroup> mSettingShortcutGroupDialogOpenExecutor;
    private StateMachine mStateMachine;
    private View mSurfaceBlinderView;
    private SurfaceHolder mSurfaceHolder = null;
    private SurfaceView mSurfaceView = null;
    private TouchCapture mTouchCapture;
    private final UiComponentBackgroundTouchEventHandler mUiComponentBackgroundTouchEventHandler;
    private VideoAutoReview mVideoAutoReviewSetting;
    private FocusMode mVideoFocusMode;
    private CaptureArea mViewFinderCaptureArea;

    public FastViewFinder(Context context) {
        super((FastCapturingActivity)context, new DefaultLayoutPatternApplier(), null);
        this.mCameraSwitchExecutor = new CameraSwitchExecutor();
        this.mSettingMenuOpenExecutor = new SettingMenuOpenExecutor();
        this.mSettingShortcutDialogOpenExecutor = new SettingShortcutDialogOpenExecutor();
        this.mSettingShortcutGroupDialogOpenExecutor = new SettingShortcutGroupDialogOpenExecutor();
        this.mCaptureFeedback = null;
        this.mRecordingOrientation = 0;
        this.mPostUiInflatedTask = new PostUiInflatedTask();
        this.mUiComponentBackgroundTouchEventHandler = new UiComponentBackgroundTouchEventHandler();
        this.mInterceptSettingDialogKeyListener = new View.OnKeyListener(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public boolean onKey(View object, int n, KeyEvent keyEvent) {
                object = FastViewFinder.this.mKeyEventTranslator.translateKeyCode(n);
                switch (.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[object.ordinal()]) {
                    default: {
                        return false;
                    }
                    case 1: 
                    case 2: {
                        if (!FastViewFinder.this.mSettingDialogStack.isDialogOpened()) return false;
                        FastViewFinder.this.mSettingDialogStack.closeDialogs();
                        return false;
                    }
                }
            }
        };
        this.mSettingDialogListener = new SettingDialogListener(){

            @Override
            public void onCloseSettingDialog(SettingDialogStack settingDialogStack, boolean bl) {
                if (bl) {
                    if (FastViewFinder.this.isAllDialogClosed()) {
                        FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[]{BaseFastViewFinder.UiComponentKind.SETTING_DIALOG});
                    }
                    FastViewFinder.this.mSettingDialogStack.clearShortcutSelected();
                }
            }

            @Override
            public void onOpenSettingDialog(SettingDialogStack settingDialogStack, boolean bl, boolean bl2) {
                FastViewFinder.this.closeCapturingModeSelector();
                FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_OPENED, new Object[]{BaseFastViewFinder.UiComponentKind.SETTING_DIALOG});
            }
        };
        this.mCounterView = null;
        this.mActivity = (FastCapturingActivity)context;
        this.mActivity.getWindow().addFlags(4194304);
        this.mActivity.getWindow().addFlags(524288);
        this.mActivity.getWindow().addFlags(128);
        this.mSurfaceView = new SurfaceView(this.mActivity);
        this.mSurfaceView.getHolder().addCallback((SurfaceHolder.Callback)this);
        this.mSurfaceBlinderView = new View(this.mActivity);
        this.mSurfaceBlinderView.setBackgroundColor(-16777216);
        this.mSurfaceBlinderView.setVisibility(8);
        this.mDialogItemFactory = new SettingDialogItemFactory();
        this.disableAccessibilityTalkBack();
        this.mIsSetupHeadupDisplayInvoked = false;
        this.mKeyEventTranslator = new KeyEventTranslator(this.mActivity.getCommonSettings());
    }

    private void addCountUpView(int n) {
        this.mCounterView = CountUpView.createCountUpView(this.mActivity);
        if (this.mCounterView != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.mCounterView.setLayoutParams(layoutParams);
            this.getBaseLayout().getContentsViewController().removeContentOverlayView(n, this.mCounterView);
            this.getBaseLayout().getContentsViewController().addContentOverlayView(n, this.mCounterView, layoutParams);
        }
        this.getBaseLayout().getContentsViewController().show();
    }

    private SettingAdapter addItem(SettingAdapter settingAdapter, SettingList.Shortcut shortcut, boolean bl) {
        if (bl) {
            settingAdapter.add(this.generateShortcutSettingItem(shortcut));
            return settingAdapter;
        }
        settingAdapter.add(SettingUtil.getBlankItem());
        return settingAdapter;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void addVideoChapter(ChapterThumbnail chapterThumbnail) {
        YuvImage yuvImage;
        ByteArrayOutputStream byteArrayOutputStream;
        RecordingIndicator recordingIndicator = this.getBaseLayout().getRecordingIndicator();
        if (!(recordingIndicator.getVisibility() == 0 && (yuvImage = new YuvImage(chapterThumbnail.yuvData, chapterThumbnail.format, chapterThumbnail.rect.width(), chapterThumbnail.rect.height(), null)).compressToJpeg(chapterThumbnail.rect, 80, byteArrayOutputStream = new ByteArrayOutputStream()))) {
            return;
        }
        recordingIndicator.addChapter(byteArrayOutputStream.toByteArray(), chapterThumbnail.orientation());
    }

    private void cancelSelfTimerCountDownView() {
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.cancelSelfTimerCountDownAnimation();
            this.getBaseLayout().getLazyInflatedUiComponentContainerBack().removeView(this.mSelfTimerCountDownView);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void changeScreenButtonImage(BaseFastViewFinder.HeadUpDisplaySetupState enum_, boolean bl) {
        if (this.getBaseLayout().getOnScreenButtonGroup() == null) {
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState[enum_.ordinal()]) {
            default: {
                throw new IllegalStateException("ViewFinder.changeScreenButtonBackground():[Unexpected system bar status.] state = " + enum_);
            }
            case 1: 
            case 3: 
            case 4: {
                if (bl) {
                    this.getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.CAPTURE, this.getOrientation(), true);
                } else {
                    this.getBaseLayout().getOnScreenButtonGroup().setMain(this.getCaptureButtonTypeAccoringToSelfTimerSetting(), this.getOrientation(), true);
                }
                if (this.mActivity.isOneShotPhotoSecure()) {
                    this.getBaseLayout().getOnScreenButtonGroup().setSub(OnScreenButtonGroup.ButtonType.NONE);
                } else {
                    this.getBaseLayout().getOnScreenButtonGroup().setSub(OnScreenButtonGroup.ButtonType.START_RECORDING, this.getOrientation(), true);
                }
                this.getBaseLayout().getCaptureButtonIcon().setVisibility(4);
                return;
            }
            case 2: {
                enum_ = VideoSize.getValueFromFrameSize(this.mCameraDevice.getPreviewRect().width(), this.mCameraDevice.getPreviewRect().height());
                if (enum_ == null) return;
                if (ClassDefinitionChecker.isMediaRecorderPauseAndResumeSupported() && !enum_.isConstraint()) {
                    this.getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.PAUSE_RECORDING, this.mRecordingOrientation, false);
                    this.getBaseLayout().getOnScreenButtonGroup().setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING, this.mRecordingOrientation, false);
                    this.getBaseLayout().getCaptureButtonIcon().setVisibility(0);
                } else {
                    this.getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.CAPTURE, this.mRecordingOrientation, true);
                    this.getBaseLayout().getOnScreenButtonGroup().setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING, this.mRecordingOrientation, false);
                    this.getBaseLayout().getCaptureButtonIcon().setVisibility(4);
                }
                if (this.mCameraDevice.getVideoSize() != VideoSize.MMS) return;
                this.getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.STOP_RECORDING);
                this.getBaseLayout().getOnScreenButtonGroup().setSub(OnScreenButtonGroup.ButtonType.NONE);
                this.getBaseLayout().getCaptureButtonIcon().setVisibility(4);
                return;
            }
            case 5: 
        }
        this.getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.RESTART_RECORDING, this.mRecordingOrientation, false);
        this.getBaseLayout().getOnScreenButtonGroup().setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING_IN_PAUSE, this.mRecordingOrientation, false);
        this.getBaseLayout().getCaptureButtonIcon().setVisibility(0);
    }

    private void changeToLayoutWithSetupState(BaseFastViewFinder.HeadUpDisplaySetupState headUpDisplaySetupState) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState[headUpDisplaySetupState.ordinal()]) {
            default: {
                throw new IllegalStateException("setupHeadUpDisplay():[Illegal State]");
            }
            case 3: {
                this.changeToPhotoIdleView(true);
                this.showBalloonTips();
                return;
            }
            case 4: {
                this.changeToPhotoCaptureView();
                return;
            }
            case 1: {
                this.changeToVideoIdleView();
                this.showBalloonTips();
                return;
            }
            case 2: 
        }
        this.changeToVideoRecordingView();
    }

    private void changeToPauseView() {
        this.changeLayoutTo(DefaultLayoutPattern.CLEAR);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.mFocusRectangles.clearAllFocus();
        this.setSceneNotificationIndicatorsInvisible(false);
        this.closeReviewWindow();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void changeToPhotoBurstView(Boolean bl) {
        this.changeLayoutTo(DefaultLayoutPattern.BURST_SHOOTING);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.setSceneNotificationIndicatorsInvisible(false);
        if (bl == false) return;
        this.startCaptureFeedbackAnimation();
    }

    private void changeToPhotoCaptureView() {
        this.changeLayoutTo(DefaultLayoutPattern.CAPTURE);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.setSceneNotificationIndicatorsInvisible(false);
    }

    private void changeToPhotoCaptureWaitForAfDoneView() {
        this.changeLayoutTo(DefaultLayoutPattern.CAPTURE);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.setSceneNotificationIndicatorsInvisible(false);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void changeToPhotoDialogView(BaseFastViewFinder.UiComponentKind var1_1) {
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.mFocusRectangles.onUiComponentOverlaid();
        switch (.$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$UiComponentKind[var1_1.ordinal()]) {
            case 1: {
                if (this.isCapturingModeSelectorOpened()) {
                    this.changeLayoutTo(DefaultLayoutPattern.MODE_SELECTOR);
                    this.getBaseLayout().hideLeftIconContainer();
                    ** break;
                }
                if (this.mSettingDialogStack.isDialogOpened()) {
                    this.changeLayoutTo(DefaultLayoutPattern.SETTING);
                }
            }
lbl12: // 5 sources:
            default: {
                ** GOTO lbl17
            }
            case 2: 
        }
        this.changeLayoutTo(DefaultLayoutPattern.CLEAR);
        this.getBaseLayout().hideLeftIconContainer();
lbl17: // 2 sources:
        this.setSceneNotificationIndicatorsInvisible(false);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void changeToPhotoFocusDoneView(Boolean bl) {
        this.changeLayoutTo(DefaultLayoutPattern.FOCUS_DONE);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.changeToPhotoFocusView();
        if (this.mCapturingMode.isFront()) return;
        this.mFocusRectangles.onAutoFocusDone(bl);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void changeToPhotoFocusSearchView() {
        this.changeLayoutTo(DefaultLayoutPattern.FOCUS_SEARCHING);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.changeToPhotoFocusView();
        if (this.mCapturingMode.isFront()) return;
        this.mFocusRectangles.onAutoFocusStarted();
    }

    private void changeToPhotoFocusView() {
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.getBaseLayout().hideLeftIconContainer();
        this.setSceneNotificationIndicatorsInvisible(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void changeToPhotoIdleView(boolean bl) {
        this.changeLayoutTo(DefaultLayoutPattern.PREVIEW);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.changeScreenButtonImage(BaseFastViewFinder.HeadUpDisplaySetupState.PHOTO_STANDBY, false);
        if (bl) {
            this.mFocusRectangles.clearExceptTouchFocus();
        } else {
            this.mFocusRectangles.onUiComponentRemoved();
        }
        this.mFocusRectangles.onRecordingStop();
        if (this.mCameraDevice.getCameraId() == 0) {
            this.setSceneIndicatorVisibleAllNotificationIndicators(1);
        }
        this.getBaseLayout().showLeftIconContainer();
        this.setOrientation(this.getOrientation());
    }

    private void changeToPhotoSelftimerView() {
        this.changeLayoutTo(DefaultLayoutPattern.SELFTIMER);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.changeScreenButtonImage(BaseFastViewFinder.HeadUpDisplaySetupState.PHOTO_STANDBY, true);
        this.mSettingDialogStack.closeDialogs();
        this.getBaseLayout().hideLeftIconContainer();
        this.showSelfTimerCountDownView();
        this.startSelfTimerCountDownAnimation();
        this.setOrientation(this.getOrientation());
    }

    private void changeToPhotoZoomingView() {
        this.changeLayoutTo(DefaultLayoutPattern.ZOOMING);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.setSceneNotificationIndicatorsInvisible(false);
        this.getBaseLayout().hideLeftIconContainer();
    }

    private void changeToReadyForRecordView() {
        this.changeLayoutTo(DefaultLayoutPattern.FOCUS_DONE);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.getBaseLayout().hideLeftIconContainer();
        this.setSceneNotificationIndicatorsInvisible(false);
    }

    private void changeToVideoIdleView() {
        this.changeLayoutTo(DefaultLayoutPattern.PREVIEW);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.changeScreenButtonImage(BaseFastViewFinder.HeadUpDisplaySetupState.VIDEO_STANDBY, false);
        this.mFocusRectangles.clearExceptTouchFocus();
        this.mFocusRectangles.onRecordingStop();
        this.setSceneIndicatorVisibleAllNotificationIndicators(2);
    }

    private void changeToVideoRecordingPauseView() {
        this.changeLayoutTo(DefaultLayoutPattern.PAUSE_RECORDING);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.changeScreenButtonImage(BaseFastViewFinder.HeadUpDisplaySetupState.VIDEO_PAUSING, false);
        if (this.getBaseLayout().getRecordingIndicator() != null) {
            this.getBaseLayout().getRecordingIndicator().setIndicator(false);
        }
        this.mFocusRectangles.clearExceptTouchFocus();
        this.mFocusRectangles.onRecordingStop();
        this.setSceneNotificationIndicatorsInvisible(true);
    }

    private void changeToVideoRecordingView() {
        this.changeLayoutTo(DefaultLayoutPattern.RECORDING);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.getBaseLayout().getGeoTagIndicator().hide();
        this.changeScreenButtonImage(BaseFastViewFinder.HeadUpDisplaySetupState.VIDEO_RECORDING, false);
        this.getBaseLayout().getRecordingIndicator().setIndicator(true);
        this.mFocusRectangles.onRecordingStart();
        this.getBaseLayout().hideLeftIconContainer();
        this.getBaseLayout().getContentsViewController().hide();
        this.setSceneNotificationIndicatorsInvisible(true);
        this.setOrientation(this.getOrientation());
    }

    private void changeToVideoZoomingWhileRecordingView() {
        this.changeLayoutTo(DefaultLayoutPattern.ZOOMING);
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.mFocusRectangles.clearExceptTouchFocus();
        this.setSceneNotificationIndicatorsInvisible(true);
    }

    private void checkSurfaceIsPreparedOrNot(SurfaceHolder object, int n, int n2) {
        if (this.mCameraDevice == null) {
            return;
        }
        Object object2 = this.mCameraDevice.getPreviewRect();
        if (object2 == null || this.mCameraDevice.isCloseDeviceTaskWorking()) {
            object2 = this.getBaseLayout().getRootView().getHandler();
            if (object2 != null) {
                object2.postDelayed(new SurfaceAvailableRetryTask((SurfaceHolder)object, n, n2), 100);
            }
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_EVF_PREPARATION_FAILED, new Object[0]);
            return;
        }
        this.mSurfaceHolder = object;
        object = new Rect(0, 0, this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight());
        Rect rect = this.computePreviewRect((Activity)this.mActivity, object2.width(), object2.height());
        if (FastViewFinder.isNearSameSize(rect, (Rect)object)) {
            this.notifyOnEvfPrepared((Rect)object2);
            return;
        }
        this.clearSurfaceView();
        this.resizeEvfScope(rect.width(), rect.height());
    }

    private void clearSurfaceView() {
        Canvas canvas;
        if (this.mSurfaceHolder != null && (canvas = this.mSurfaceHolder.lockCanvas()) != null) {
            canvas.drawColor(-16777216);
            this.mSurfaceHolder.unlockCanvasAndPost(canvas);
        }
    }

    private void closeCurrentDisplayingUiComponent() {
        if (this.mCurrentDisplayingUiComponent == null) {
            return;
        }
        this.closeCapturingModeSelector();
        this.closeSettingDialog();
    }

    private void closeSettingDialog() {
        if (this.mSettingDialogStack.isDialogOpened()) {
            this.mSettingDialogStack.closeCurrentDialog();
        }
    }

    private PointF convertTouchPointToDevicePreviewPositionRatio(Point point) {
        int n = this.mSurfaceView.getWidth();
        int n2 = this.mSurfaceView.getHeight();
        int n3 = point.x;
        int n4 = this.mSurfaceView.getLeft();
        int n5 = point.y;
        int n6 = this.mSurfaceView.getTop();
        return new PointF((float)(n3 - n4) / (float)n, (float)(n5 - n6) / (float)n2);
    }

    private void createSelfTimerCountDownView(SelfTimer selfTimer) {
        this.mSelfTimerCountDownViewNext = (SelfTimerCountDownView)this.getActivity().getLayoutInflater().inflate(2130903070, null);
        this.mSelfTimerCountDownViewNext.setSelfTimer(selfTimer);
    }

    private SettingExecutorInterface<ParameterValue> createSettingChangeExecutor(ParameterKey parameterKey, ParameterValue parameterValue) {
        return new CloseExecutor<ParameterValue>(new SettingChangeExecutor(new FastCapturingParameterChanger(parameterKey, parameterValue, this)));
    }

    private void doChangeCondition(CameraExtension.SceneRecognitionResult sceneRecognitionResult) {
        int n = RecognizedCondition.create(sceneRecognitionResult.deviceStabilityCondition).getIconId();
        if (n != -1) {
            this.mConditionIndicatorIcon.setImageResource(n);
            this.mConditionIndicatorIcon.setRotation(RotationUtil.getAngle(this.getOrientationForUiNotRotateInRecording()));
            this.mConditionIndicatorIcon.setVisibility(0);
            return;
        }
        this.mConditionIndicatorIcon.setVisibility(4);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doChangeSceneMode(CameraExtension.SceneRecognitionResult object) {
        RecognizedScene recognizedScene = RecognizedScene.create(object.sceneMode);
        int n = recognizedScene.getIconId();
        int n2 = recognizedScene.getTextId();
        if (n <= 0 || n2 <= 0) {
            if (!object.isMacroRange) {
                this.mSceneIndicatorIcon.setVisibility(4);
                this.mSceneIndicatorText.setVisibility(4);
                this.mSceneIndicatorIcon.setImageDrawable(null);
                this.mSceneIndicatorText.setText(null);
                return;
            }
            n = 2130837635;
            n2 = 2131296332;
        }
        this.mSceneIndicatorIcon.setImageResource(n);
        object = AnimationUtils.loadAnimation(this.mActivity, 2130968586);
        this.mSceneIndicatorIcon.startAnimation((Animation)object);
        this.mSceneIndicatorIcon.setRotation(RotationUtil.getAngle(this.getOrientationForUiNotRotateInRecording()));
        this.mSceneIndicatorIcon.setVisibility(0);
        if (this.getOrientationForUiNotRotateInRecording() != 2) {
            this.mSceneIndicatorText.setText(null);
            this.mSceneIndicatorText.setVisibility(4);
            return;
        }
        this.mSceneIndicatorText.setText(n2);
        this.mSceneIndicatorText.setVisibility(0);
        object = (AlphaAnimation)AnimationUtils.loadAnimation(this.mActivity, 2130968584);
        if (this.mSceneIndicatorTextRunnable == null) {
            this.mSceneIndicatorTextRunnable = new Runnable(){

                @Override
                public void run() {
                    if (FastViewFinder.this.mSceneIndicatorText != null) {
                        FastViewFinder.this.mSceneIndicatorText.setVisibility(4);
                    }
                }
            };
        }
        this.mSceneIndicatorText.removeCallbacks(this.mSceneIndicatorTextRunnable);
        this.mSceneIndicatorText.postDelayed(this.mSceneIndicatorTextRunnable, object.getStartOffset() + object.getDuration());
        this.mSceneIndicatorText.setVisibility(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    private List<SettingItem> generateChildrenSettinItem(Context object, ParameterKey parameterKey) {
        ArrayList<SettingItem> arrayList = new ArrayList<SettingItem>();
        SelfTimer[] arrselfTimer = null;
        object = null;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
            case 1: {
                arrselfTimer = this.getFlashOptions();
                object = this.getCurrentFlashSetting((Flash[])arrselfTimer);
                break;
            }
            case 2: {
                arrselfTimer = SelfTimer.values();
                object = this.mPhotoSelfTimerSetting;
            }
        }
        if (arrselfTimer != null) {
            for (SelfTimer selfTimer : arrselfTimer) {
                SettingItemBuilder<ParameterValue> settingItemBuilder = SettingItemBuilder.build(selfTimer).iconId(selfTimer.getIconId()).textId(selfTimer.getTextId()).dialogItemType(1).executor(this.createSettingChangeExecutor(parameterKey, selfTimer));
                boolean bl = object == selfTimer;
                arrayList.add(settingItemBuilder.selected(bl).commit());
            }
            return arrayList;
        }
        return arrayList;
    }

    private SettingAdapter generateShortcutItemAdapter(CapturingMode object) {
        this.updateSelectability();
        Object object2 = new SettingAdapter(this.mActivity, this.mDialogItemFactory);
        Iterator<SettingList.Shortcut> iterator = SettingList.getSettingShortcutList((CapturingMode)object, this.mActivity).iterator();
        object = object2;
        block4 : while (iterator.hasNext()) {
            SettingGroup settingGroup;
            object2 = iterator.next();
            switch (.$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut[object2.ordinal()]) {
                default: {
                    settingGroup = object2.getGroup();
                    if (settingGroup != null) break;
                    object = this.addItem((SettingAdapter)object, (SettingList.Shortcut)object2, true);
                    continue block4;
                }
                case 1: {
                    object = this.addItem((SettingAdapter)object, (SettingList.Shortcut)object2, ParameterKey.FACING.isSelectable());
                    continue block4;
                }
                case 2: {
                    if (this.mActivity.isOneShotPhotoSecure()) {
                        object = this.addItem((SettingAdapter)object, SettingList.Shortcut.BLANK, false);
                        continue block4;
                    }
                    object = this.addItem((SettingAdapter)object, (SettingList.Shortcut)object2, true);
                    continue block4;
                }
            }
            object = this.addItem((SettingAdapter)object, (SettingList.Shortcut)object2, this.isVisible(settingGroup));
        }
        return object;
    }

    private SettingItem generateShortcutSettingItem(SettingList.Shortcut enum_) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut[enum_.ordinal()]) {
            default: {
                throw new IllegalArgumentException("Shortcut type[ " + enum_ + "] is not supported.");
            }
            case 1: {
                Facing facing = Facing.BACK;
                return SettingItemBuilder.build(enum_.getGroup()).iconId(facing.getIconId()).textId(facing.getParameterKeyTextId()).dialogItemType(0).executor(this.mCameraSwitchExecutor).commit();
            }
            case 3: {
                Flash flash = this.getCurrentFlashSetting(this.getFlashOptions());
                if (flash == null) {
                    return SettingUtil.getBlankItem();
                }
                return SettingItemBuilder.build(enum_.getGroup()).iconId(flash.getIconId()).textId(flash.getTextId()).dialogItemType(0).executor(this.mSettingShortcutGroupDialogOpenExecutor).commit();
            }
            case 4: {
                SelfTimer selfTimer = this.mPhotoSelfTimerSetting;
                if (selfTimer == null) {
                    return SettingUtil.getBlankItem();
                }
                return SettingItemBuilder.build(enum_).iconId(selfTimer.getIconId()).textId(selfTimer.getTextId()).dialogItemType(0).executor(this.mSettingShortcutDialogOpenExecutor).commit();
            }
            case 2: {
                enum_ = SettingList.getDefaultTab(this.mCapturingMode);
                return SettingItemBuilder.build(enum_).iconId(2130837605).textId(enum_.getTextId()).dialogItemType(6).executor(this.mSettingMenuOpenExecutor).commit();
            }
            case 5: 
        }
        return SettingUtil.getBlankItem();
    }

    private OnScreenButtonGroup.ButtonType getCaptureButtonTypeAccoringToSelfTimerSetting() {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[this.mPhotoSelfTimerSetting.ordinal()]) {
            default: {
                return OnScreenButtonGroup.ButtonType.CAPTURE;
            }
            case 1: {
                return OnScreenButtonGroup.ButtonType.SELFTIMER_LONG;
            }
            case 2: {
                return OnScreenButtonGroup.ButtonType.SELFTIMER_SHORT;
            }
            case 3: 
        }
        return OnScreenButtonGroup.ButtonType.SELFTIMER_INSTANT;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Flash getCurrentFlashSetting(Flash[] arrflash) {
        if (this.mCameraDevice == null) return null;
        if (arrflash == null) {
            return null;
        }
        Flash flash = this.mCameraDevice.getFlashSetting();
        if (flash == null) {
            return null;
        }
        for (Flash flash2 : arrflash) {
            if (flash2 == null) continue;
            Flash flash3 = flash2;
            if (flash.getValue().equals(flash2.getValue())) return flash3;
        }
        return null;
    }

    private void getDownHeadUpDisplay() {
        if (this.mSurfaceView != null) {
            this.mSurfaceView.getHolder().removeCallback((SurfaceHolder.Callback)this);
            this.mSurfaceView = null;
        }
        this.hideSurfaceBlinderView();
        this.releaseSurfaceBlinderView();
        this.mKeyEventTranslator = null;
        if (this.mFocusRectangles != null) {
            this.mFocusRectangles.release();
            this.mFocusRectangles = null;
        }
        if (this.mViewFinderCaptureArea != null) {
            this.mViewFinderCaptureArea.setCaptureAreaStateListener(null);
            this.mViewFinderCaptureArea.release();
            this.mViewFinderCaptureArea = null;
        }
        this.mSceneIndicatorIcon = null;
        this.mSceneIndicatorText = null;
        this.mConditionIndicatorIcon = null;
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.release();
            this.mCaptureFeedback = null;
        }
        this.mAutoReview = null;
    }

    private void hideBalloonTips() {
        this.getBaseLayout().getBalloonTips().hide();
    }

    private void hideSurfaceBlinderView() {
        if (this.mSurfaceBlinderView != null && this.mSurfaceBlinderView.getVisibility() == 0) {
            this.mSurfaceBlinderView.setVisibility(4);
            FrameLayout frameLayout = this.getBaseLayout().getPreviewOverlayContainer();
            if (frameLayout != null) {
                frameLayout.removeView(this.mSurfaceBlinderView);
            }
        }
    }

    private boolean isAllDialogClosed() {
        if (this.mSettingDialogStack.isDialogOpened() || this.isCapturingModeSelectorOpened() || this.mActivity.getStorageController().isStorageDialogOpen()) {
            return false;
        }
        return true;
    }

    public static final boolean isNearSameSize(Rect rect, Rect rect2) {
        float f;
        float f2 = (float)rect.width() / (float)rect.height();
        if ((int)(f2 * 100.0f) == (int)((f = (float)rect2.width() / (float)rect2.height()) * 100.0f)) {
            return true;
        }
        return false;
    }

    private boolean isVisible(ParameterKey enum_) {
        if ((enum_ = enum_.getSelectability()) == ParameterSelectability.SELECTABLE || enum_ == ParameterSelectability.UNAVAILABLE) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean isVisible(SettingGroup arrparameterKey) {
        if (arrparameterKey == null) {
            return true;
        }
        arrparameterKey = arrparameterKey.getSettingItemList();
        int n = arrparameterKey.length;
        for (int i = 0; i < n; ++i) {
            if (this.isVisible(arrparameterKey[i])) return true;
        }
        return true;
    }

    private void loadSettingsFromSharedPreferencesDeviceAndResources() {
        this.loadSettingsFromSharedPreferencesDeviceAndResources(this.mCameraDevice.getCameraId());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void loadSettingsFromSharedPreferencesDeviceAndResources(int n) {
        this.mTouchCapture = (TouchCapture)this.mActivity.getCommonSettings().get(CommonSettingKey.TOUCH_CAPTURE);
        this.mPrefs = this.mActivity.getSharedPreferences("com.sonyericsson.android.camera.shared_preferences", 0);
        switch (n) {
            case 0: {
                this.mVideoFocusMode = FocusMode.FACE_DETECTION;
                break;
            }
            case 1: {
                this.mVideoFocusMode = FocusMode.FIXED;
            }
        }
        this.mAutoReviewSetting = this.mActivity.isOneShotPhotoSecure() ? AutoReview.OFF : FastCapturingCameraUtils.loadParameter(this.mPrefs, 1, n, ParameterKey.AUTO_REVIEW, AutoReview.OFF);
        if (this.mVideoAutoReviewSetting == null) {
            this.mVideoAutoReviewSetting = FastCapturingCameraUtils.loadParameter(this.mPrefs, 2, n, ParameterKey.VIDEO_AUTO_REVIEW, VideoAutoReview.OFF);
        }
        if (n == 0) {
            this.mPhotoSelfTimerSetting = SelfTimer.OFF;
            return;
        }
        this.mPhotoSelfTimerSetting = FastCapturingCameraUtils.loadParameter(this.mPrefs, 1, n, ParameterKey.SELF_TIMER, SelfTimer.OFF);
    }

    private static void logPerformance(String string) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + string + "]");
    }

    private void notifyOnEvfPrepared(Rect rect) {
        if (this.mFocusRectangles != null) {
            this.mFocusRectangles.updateDevicePreviewSize(rect.width(), rect.height());
        }
        this.updateCaptureAreaSize();
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_EVF_PREPARED, this.mSurfaceHolder);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onCameraModeChangedTo(int n) {
        Object object = this.mStateMachine.getCurrentCameraParameters(false);
        if (!(object != null && this.isHeadUpDesplayReady())) {
            return;
        }
        int n2 = object.getPreviewSize().width;
        int n3 = object.getPreviewSize().height;
        object = LayoutDependencyResolver.getSurfaceRect(this.mActivity, (float)n2 / (float)n3);
        PositionConverter.getInstance().setSurfaceSize(object.width(), object.height());
        PositionConverter.getInstance().setPreviewSize(n2, n3);
        this.mFocusRectangles.updateDevicePreviewSize(n2, n3);
        this.mFocusRectangles.clearExceptTouchFocus();
        switch (n) {
            default: {
                throw new IllegalArgumentException("ViewFinder.onCameraModeChangedTo():[INVALID]");
            }
            case 1: {
                this.setupCapturingModeSelectorButton(BaseFastViewFinder.HeadUpDisplaySetupState.PHOTO_STANDBY);
                this.updateViewFinderCaptureAreaTouchEventHandling(this.mTouchCapture, BaseFastViewFinder.HeadUpDisplaySetupState.PHOTO_STANDBY);
                this.mSettingDialogStack.showShortcutTray();
                this.setupZoomBar(BaseFastViewFinder.HeadUpDisplaySetupState.PHOTO_STANDBY);
                break;
            }
            case 2: {
                this.setupCapturingModeSelectorButton(BaseFastViewFinder.HeadUpDisplaySetupState.VIDEO_RECORDING);
                this.updateViewFinderCaptureAreaTouchEventHandling(this.mTouchCapture, BaseFastViewFinder.HeadUpDisplaySetupState.VIDEO_STANDBY);
                this.mSettingDialogStack.showShortcutTray();
                this.setupZoomBar(BaseFastViewFinder.HeadUpDisplaySetupState.VIDEO_STANDBY);
            }
        }
        this.setOrientation(this.getOrientation());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.updateUuidBeforeUpdateView(faceDetectionResult);
        if (this.mCapturingMode.isFront()) {
            this.mFocusRectangles.setMirrored(true);
        } else {
            this.mFocusRectangles.setMirrored(false);
        }
        this.mFocusRectangles.onFaceDetected(faceDetectionResult);
    }

    private void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> list) {
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.mFocusRectangles.onFaceNameDetected(list);
    }

    private void onLazyInitializationTaskRun() {
        this.setupCapturingModeSelector();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onSceneModeChanged(CameraExtension.SceneRecognitionResult sceneRecognitionResult) {
        if (!this.isHeadUpDesplayReady() || this.mActivity.isOneShotPhotoSecure()) {
            return;
        }
        this.doChangeSceneMode(sceneRecognitionResult);
        this.doChangeCondition(sceneRecognitionResult);
    }

    private void onSurfaceAvailableInternal(SurfaceHolder surfaceHolder, int n, int n2) {
        this.checkSurfaceIsPreparedOrNot(surfaceHolder, n, n2);
    }

    private void onToggleCameraSwitch() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_SWITCH_CAMERA, new Object[0]);
    }

    private void onToggleMenuButton() {
        if (this.getActivity().isInLockTaskMode()) {
            this.mSettingDialogStack.clearShortcutSelected();
            this.mActivity.finish();
            return;
        }
        this.mActivity.onKeyUp(82, new KeyEvent(1, 82));
    }

    private void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult objectTrackingResult) {
        if (!this.isHeadUpDesplayReady()) {
            return;
        }
        this.mFocusRectangles.onObjectTracked(objectTrackingResult);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private /* varargs */ void onViewFinderStateChanged(StateMachine.CaptureState captureState, Object ... arrobject) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState[captureState.ordinal()]) {
            default: {
                return;
            }
            case 3: {
                this.resumeView();
                this.loadSettingsFromSharedPreferencesDeviceAndResources(this.mStateMachine.getTargetCameraId());
                this.mSurfaceView.setVisibility(0);
                return;
            }
            case 4: {
                this.mCurrentDisplayingUiComponent = null;
                this.changeToPhotoIdleView(false);
                if (arrobject != null && arrobject.length != 0) {
                    if ((BaseFastViewFinder.UiComponentKind)arrobject[0] == BaseFastViewFinder.UiComponentKind.ZOOM_BAR) return;
                    this.requestToDimSystemUi();
                    return;
                }
                this.requestToDimSystemUi();
                return;
            }
            case 5: {
                this.changeToPhotoSelftimerView();
                return;
            }
            case 6: 
            case 7: {
                this.changeToPhotoZoomingView();
                return;
            }
            case 8: {
                this.mCurrentDisplayingUiComponent = (BaseFastViewFinder.UiComponentKind)arrobject[0];
                this.changeToPhotoDialogView(this.mCurrentDisplayingUiComponent);
                this.requestToRecoverSystemUi();
                return;
            }
            case 9: 
            case 10: {
                this.requestToRemoveSystemUi();
                this.changeToPhotoFocusSearchView();
                return;
            }
            case 11: {
                this.changeToPhotoFocusSearchView();
                return;
            }
            case 12: 
            case 13: {
                this.changeToPhotoFocusDoneView((Boolean)arrobject[0]);
                return;
            }
            case 14: {
                this.changeToPhotoCaptureWaitForAfDoneView();
                return;
            }
            case 15: {
                this.changeToPhotoCaptureView();
                return;
            }
            case 16: 
            case 17: {
                this.changeToPhotoBurstView((Boolean)arrobject[0]);
                return;
            }
            case 18: {
                if (this.mFocusRectangles != null) {
                    this.mFocusRectangles.clearExceptTouchFocus();
                }
                this.getBaseLayout().showContentsViewController();
                return;
            }
            case 19: {
                this.changeToVideoRecordingView();
                this.requestToDimSystemUi();
                return;
            }
            case 20: {
                this.changeToVideoRecordingView();
                if (arrobject != null && arrobject.length != 0) {
                    if ((BaseFastViewFinder.UiComponentKind)arrobject[0] == BaseFastViewFinder.UiComponentKind.ZOOM_BAR) return;
                    this.requestToDimSystemUi();
                    return;
                }
                this.requestToDimSystemUi();
                return;
            }
            case 24: 
            case 25: {
                this.changeToVideoZoomingWhileRecordingView();
                return;
            }
            case 26: {
                this.hideSurfaceBlinderView();
                this.mSurfaceView.setVisibility(8);
                this.pauseView();
                this.changeToPauseView();
                return;
            }
            case 27: {
                if (this.mFocusRectangles != null) {
                    this.mFocusRectangles.clearAllFocus();
                }
                this.changeToPhotoIdleView(false);
                this.requestToDimSystemUi();
                return;
            }
            case 28: {
                this.release();
                this.getDownHeadUpDisplay();
                return;
            }
            case 29: {
                this.changeToVideoRecordingPauseView();
                return;
            }
            case 30: {
                this.mVideoAutoReviewSetting = null;
                return;
            }
            case 31: 
        }
        this.requestToRemoveSystemUi();
        this.changeToReadyForRecordView();
    }

    private void openInstantViewer(byte[] arrby, String string, SavingRequest savingRequest) {
        this.mIsInstantViewerOpened = true;
        if (this.mAutoReview != null) {
            ((FrameLayout)this.getActivity().findViewById(2131689579)).setVisibility(4);
            if (!this.mAutoReview.open(this.getActivity(), arrby, string, savingRequest.common.mimeType, new Rect(0, 0, savingRequest.common.width, savingRequest.common.height), 0, savingRequest.common.orientation, this.mCapturingMode.isFront(), (ReviewWindowListener)this, (ContentResolverUtilListener)this)) {
                this.mIsInstantViewerOpened = false;
                this.closeReviewWindow();
            }
        }
    }

    private void pauseView() {
        this.pause();
        if (this.mSettingDialogStack != null) {
            this.mSettingDialogStack.closeDialogs();
            this.mSettingDialogStack.updateShortcutTray(new SettingAdapter(this.mActivity, this.mDialogItemFactory));
        }
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.onPause();
        }
        this.clearPreInflatedViews();
        this.mIsSetupHeadupDisplayInvoked = false;
        this.mAutoReviewSetting = null;
        this.mVideoAutoReviewSetting = null;
        this.mTouchCapture = null;
        this.mVideoFocusMode = null;
    }

    private void preparationForInstantViewer() {
        if (!(this.mStateMachine.isRecording() || this.getBaseLayout().getContentsViewController() == null)) {
            this.getBaseLayout().getContentsViewController().setClickThumbnailProgressListener((ContentsViewController.OnClickThumbnailProgressListener)this);
        }
        if (this.mAutoReview != null) {
            this.mAutoReview.setUri(null);
        }
    }

    private void releaseSurfaceBlinderView() {
        if (this.mSurfaceBlinderView != null) {
            this.mSurfaceBlinderView.setVisibility(4);
            FrameLayout frameLayout = this.getBaseLayout().getPreviewOverlayContainer();
            if (frameLayout != null) {
                frameLayout.removeView(this.mSurfaceBlinderView);
            }
            this.mSurfaceBlinderView = null;
        }
    }

    private void removeCountUpView(int n) {
        if (this.mCounterView != null) {
            this.getBaseLayout().getContentsViewController().removeContentOverlayView(n, this.mCounterView);
            this.mCounterView = null;
        }
    }

    private void removeSelfTimerCountDownView() {
        if (this.mSelfTimerCountDownView != null) {
            this.getBaseLayout().getLazyInflatedUiComponentContainerBack().removeView(this.mSelfTimerCountDownView);
            this.mSelfTimerCountDownView = null;
        }
    }

    private void resizeEvfScope(int n, int n2) {
        if (this.mSurfaceView.getWidth() == n && this.mSurfaceView.getHeight() == n2) {
            throw new IllegalArgumentException("resizeEvfScope():[Already resized]");
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)this.mSurfaceView.getLayoutParams();
        layoutParams.width = n;
        layoutParams.height = n2;
        layoutParams.gravity = 83;
        this.mSurfaceView.setLayoutParams(layoutParams);
    }

    private void resumeView() {
        if (this.isHeadUpDesplayReady()) {
            this.resume();
            this.mSettingDialogStack.clearShortcutSelected();
            if (this.mCaptureFeedback != null) {
                this.mCaptureFeedback.onResume();
            }
        }
    }

    private void setCount(int n) {
        if (this.mCounterView != null) {
            CountUpView.setCount(this.mCounterView, n);
        }
    }

    private void setEarlyThumbnailView(View view) {
        if (this.getBaseLayout().getContentsViewController() != null) {
            this.getBaseLayout().getContentsViewController().setEarlyThumbnailView(view);
        }
    }

    private void setSceneIndicatorVisibleAllNotificationIndicators(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.mSceneIndicatorIcon.setVisibility(0);
                this.mSceneIndicatorText.setVisibility(0);
                this.mSceneIndicatorText.setText(null);
                this.mConditionIndicatorIcon.setVisibility(0);
                return;
            }
            case 2: 
        }
        this.mSceneIndicatorIcon.setVisibility(4);
        this.mSceneIndicatorText.setVisibility(4);
        this.mSceneIndicatorText.setText(null);
        this.mConditionIndicatorIcon.setVisibility(4);
    }

    private void setSceneNotificationIndicatorsInvisible(boolean bl) {
        if (!bl) {
            this.mSceneIndicatorIcon.setVisibility(4);
            this.mSceneIndicatorText.setVisibility(4);
            this.mSceneIndicatorText.setText(null);
        }
        this.mConditionIndicatorIcon.setVisibility(4);
    }

    private void setupAnimations() {
        Rect rect = new Rect();
        this.getBaseLayout().getRootView().findViewById(2131689540).getGlobalVisibleRect(rect);
    }

    private void setupAutoReview() {
        if (this.mAutoReview == null) {
            this.mAutoReview = (AutoReviewWindow)this.mActivity.findViewById(2131689495);
            this.mAutoReview.setup(this.getActivity().getMessagePopup(), this.getActivity().getCommonSettings());
        }
        this.setAutoReviweDuration(this.mAutoReviewSetting);
    }

    private void setupCaptureArea(BaseFastViewFinder.HeadUpDisplaySetupState headUpDisplaySetupState) {
        if (this.mViewFinderCaptureArea == null) {
            this.mViewFinderCaptureArea = (CaptureArea)this.mActivity.findViewById(2131689561);
            this.updateCaptureAreaSize();
        }
        this.updateViewFinderCaptureAreaTouchEventHandling(this.mTouchCapture, headUpDisplaySetupState);
    }

    private void setupCapturingModeSelectorButton(BaseFastViewFinder.HeadUpDisplaySetupState object) {
        if (!this.getBaseLayout().isHeadUpDesplayReady()) {
            return;
        }
        object = new CapturingModeButtonAttributes(FastCapturingActivity.ModeName.FAST_CAPTURING_CAMERA.name(), 2130837522, 2131296465);
        this.getBaseLayout().getCapturingModeButton().setCurrentCapturingMode((CapturingModeButtonAttributes)object);
    }

    private void setupContentsView() {
        this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_PHOTO_STACK_INITIALIZED, this.getBaseLayout().getContentsViewController());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupFocusRectangles() {
        int n;
        int n2;
        if (this.mStateMachine == null || this.mStateMachine.getCurrentCameraParameters(false) == null) {
            n2 = 0;
            n = 0;
        } else {
            n2 = this.mStateMachine.getCurrentCameraParameters((boolean)false).getPreviewSize().width;
            n = this.mStateMachine.getCurrentCameraParameters((boolean)false).getPreviewSize().height;
        }
        FocusRectanglesViewList focusRectanglesViewList = new FocusRectanglesViewList();
        if (this.isInflated()) {
            focusRectanglesViewList.rectanglesContainer = (RelativeLayout)this.mActivity.findViewById(2131689562);
            focusRectanglesViewList.faceViewList = this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FACE).toArray(new View[0]);
            focusRectanglesViewList.trackedObjectView = (TaggedRectangle)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FAST_OBJECT_TRACKING).get(0);
            focusRectanglesViewList.singleAfView = (RelativeLayout)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FAST_SINGLE).get(0);
            focusRectanglesViewList.touchAfView = (RelativeLayout)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FAST_TOUCH).get(0);
        }
        if (this.mFocusRectangles == null) {
            this.mFocusRectangles = new FocusRectangles(this.mActivity, (FocusActionListener)this, n2, n, focusRectanglesViewList, this.mViewFinderCaptureArea);
        }
        if (PlatformDependencyResolver.isFaceDetectionSupported(this.mActivity.getCameraDevice().getLatestCachedParameters())) {
            if (this.mTouchCapture == TouchCapture.ON) {
                this.mFocusRectangles.enableFaceTouchCapture();
            } else {
                this.mFocusRectangles.disableFaceTouchCapture();
            }
        }
        this.mFocusRectangles.setVisibility(0);
    }

    private void setupHeadUpDisplay(BaseFastViewFinder.HeadUpDisplaySetupState headUpDisplaySetupState) {
        Object object;
        if (this.mCapturingMode != this.mStateMachine.getCurrentCapturingMode() || this.mActivity.isSecurePhotoLaunchedByIntent()) {
            this.mIsSetupHeadupDisplayInvoked = false;
        }
        if (this.mActivity.isDeviceInSecurityLock() && this.mIsSetupHeadupDisplayInvoked) {
            return;
        }
        this.mCapturingMode = this.mStateMachine.getCurrentCapturingMode();
        this.joinInflateTask();
        if (!(this.isHeadUpDesplayReady() || this.mSurfaceView.getWidth() >= this.mSurfaceView.getHeight())) {
            this.mActivity.postDelayedEvent(new ReTrySetupHeadUpDisplayTask(), 100);
            return;
        }
        boolean bl = this.isHeadUpDesplayReady();
        if (this.isInflated()) {
            this.setPreInflatedHeadUpDisplay((View)((ViewGroup)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.HEAD_UP_DISPLAY).get(0)));
        }
        this.requestSetupHeadUpDisplay();
        if (!bl) {
            object = this.setupViewFinderLayout();
            this.getBaseLayout().getPreviewOverlayContainer().addView((View)object);
        }
        this.loadSettingsFromSharedPreferencesDeviceAndResources();
        this.setupZoomBar(headUpDisplaySetupState);
        this.setupShortcutTray(headUpDisplaySetupState);
        this.setupContentsView();
        this.setupCaptureArea(headUpDisplaySetupState);
        this.setupFocusRectangles();
        this.setupOnScreenCaptureButton(headUpDisplaySetupState);
        this.setupCapturingModeSelectorButton(headUpDisplaySetupState);
        this.setupAutoReview();
        this.setupSceneNotificationIndicator();
        this.setupSelfTimerCountDownView();
        this.setOrientation(this.getOrientation());
        this.changeToLayoutWithSetupState(headUpDisplaySetupState);
        object = this.getBaseLayout().getRootView().getHandler();
        if (object != null) {
            object.post(this.mPostUiInflatedTask);
        }
        this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED, new Object[]{headUpDisplaySetupState});
        this.clearPreInflatedViews();
        this.mIsSetupHeadupDisplayInvoked = true;
    }

    private void setupOnScreenCaptureButton(BaseFastViewFinder.HeadUpDisplaySetupState object) {
        this.changeScreenButtonImage((BaseFastViewFinder.HeadUpDisplaySetupState)object, false);
        object = new OnScreenCaptureButtonStateListener();
        OnScreenCamcordButtonStateListener onScreenCamcordButtonStateListener = new OnScreenCamcordButtonStateListener(true);
        OnScreenCamcordButtonStateListener onScreenCamcordButtonStateListener2 = new OnScreenCamcordButtonStateListener(false);
        this.getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.CAPTURE, (OnScreenButtonListener)object);
        this.getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.SELFTIMER_LONG, (OnScreenButtonListener)object);
        this.getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.SELFTIMER_SHORT, (OnScreenButtonListener)object);
        this.getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.SELFTIMER_INSTANT, (OnScreenButtonListener)object);
        this.getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.START_RECORDING, onScreenCamcordButtonStateListener);
        this.getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.STOP_RECORDING, onScreenCamcordButtonStateListener);
        this.getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.STOP_RECORDING_IN_PAUSE, onScreenCamcordButtonStateListener);
        this.getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.PAUSE_RECORDING, onScreenCamcordButtonStateListener2);
        this.getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.RESTART_RECORDING, onScreenCamcordButtonStateListener2);
        this.getBaseLayout().getCaptureButtonIcon().setListener((OnScreenButtonListener)object);
        this.getBaseLayout().getCaptureButtonIcon().setScaleType(ImageView.ScaleType.CENTER);
        this.getBaseLayout().getCaptureButtonIcon().set(OnScreenButtonGroup.ButtonType.CAPTURE_IN_SEQUENTIAL_RECORDING.subButtonResource);
        this.getBaseLayout().getCaptureButtonIcon().setVisibility(0);
    }

    private void setupSceneNotificationIndicator() {
        if (this.mSceneIndicatorIcon == null) {
            Notification notification = (Notification)LayoutInflater.from(this.mActivity).inflate(2130903063, null);
            this.getBaseLayout().getModeIndicatorContainer().addView(notification);
        }
        this.mSceneIndicatorIcon = (ImageView)this.mActivity.findViewById(2131689584);
        this.mSceneIndicatorText = (TextView)this.mActivity.findViewById(2131689583);
        this.mConditionIndicatorIcon = (ImageView)this.mActivity.findViewById(2131689582);
        this.setSceneNotificationIndicatorsInvisible(false);
    }

    private void setupSelfTimerCountDownView() {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[this.mPhotoSelfTimerSetting.ordinal()]) {
            default: {
                throw new IllegalArgumentException(TAG + ":setupSelfTimerCountDownView [Irregular value] : " + this.mPhotoSelfTimerSetting);
            }
            case 1: 
            case 2: 
            case 3: {
                this.createSelfTimerCountDownView(this.mPhotoSelfTimerSetting);
                return;
            }
            case 4: 
        }
        this.removeSelfTimerCountDownView();
    }

    private void setupShortcutTray(BaseFastViewFinder.HeadUpDisplaySetupState headUpDisplaySetupState) {
        if (this.mSettingDialogStack == null) {
            ListView listView = new ListView(this.mActivity);
            this.mSettingDialogStack = new SettingDialogStack(this.mActivity, this.mSettingDialogListener, (ViewGroup)this.getActivity().findViewById(2131689635), (FrameLayout)this.getActivity().findViewById(2131689630), listView);
        }
        this.mSettingDialogStack.clearShortcutSelected();
        this.mSettingDialogStack.setupShortcutTray(this.generateShortcutItemAdapter(this.mCapturingMode));
        this.mSettingDialogStack.setOnInterceptKeyListener(this.mInterceptSettingDialogKeyListener);
        if (headUpDisplaySetupState.equals((Object)BaseFastViewFinder.HeadUpDisplaySetupState.VIDEO_RECORDING)) {
            this.mSettingDialogStack.hideShortcutTray();
        }
    }

    private RelativeLayout setupViewFinderLayout() {
        View view = null;
        if (this.isInflated()) {
            view = (RelativeLayout)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.FAST_CAPTURING_VIEWFINDER_ITEMS).get(0);
        }
        RelativeLayout relativeLayout = view;
        if (view == null) {
            relativeLayout = (RelativeLayout)LayoutInflater.from(this.mActivity).inflate(2130903058, null);
        }
        view = new GLSurfaceContextView(this.getActivity(), null);
        relativeLayout.addView(view);
        view.getLayoutParams().width = -1;
        view.getLayoutParams().height = -1;
        this.mCaptureFeedback = view;
        return relativeLayout;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void setupZoomBar(BaseFastViewFinder.HeadUpDisplaySetupState headUpDisplaySetupState) {
        Zoombar zoombar = this.getBaseLayout().getZoomBar();
        boolean bl = PlatformDependencyResolver.isSuperResolutionZoomSupported(this.mCameraDevice.getLatestCachedParameters());
        if (zoombar == null) return;
        switch (.$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState[headUpDisplaySetupState.ordinal()]) {
            default: {
                if (!bl) break;
                zoombar.updateZoombarType(Zoombar.Type.PARTIAL_SUPER_RESOLUTION);
                return;
            }
            case 1: 
            case 2: {
                zoombar.updateZoombarType(Zoombar.Type.NORMAL);
                return;
            }
        }
        zoombar.updateZoombarType(Zoombar.Type.NORMAL);
    }

    private void showBalloonTips() {
        if (this.getBaseLayout().getBalloonTips().isBalloonTipsEnabled() && !this.mActivity.isOneShotPhotoSecure()) {
            this.getBaseLayout().getBalloonTips().show();
            this.getBaseLayout().getBalloonTips().setBalloonTipsOrientation(this.getOrientation());
        }
    }

    private void showSelfTimerCountDownView() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.getBaseLayout().getPreview().getWidth(), this.getBaseLayout().getPreview().getHeight());
        layoutParams.addRule(13);
        this.removeSelfTimerCountDownView();
        this.mSelfTimerCountDownView = this.mSelfTimerCountDownViewNext;
        this.mSelfTimerCountDownView.setLayoutParams(layoutParams);
        this.mSelfTimerCountDownView.setVisibility(0);
        this.getBaseLayout().getLazyInflatedUiComponentContainerBack().addView(this.mSelfTimerCountDownView);
        this.getBaseLayout().getLazyInflatedUiComponentContainerBack().bringChildToFront(this.mSelfTimerCountDownView);
    }

    private void startEarlyThumbnailInsertAnimation(int n) {
        if (!(this.getBaseLayout().getContentsViewController() == null || this.mActivity.isOneShotPhotoSecure())) {
            this.getBaseLayout().getContentsViewController().startInsertAnimation(n);
        }
    }

    private void updateCaptureAreaSize() {
        if (this.mViewFinderCaptureArea != null) {
            ViewGroup.LayoutParams layoutParams = this.mViewFinderCaptureArea.getLayoutParams();
            layoutParams.width = this.mSurfaceView.getWidth();
            layoutParams.height = this.mSurfaceView.getHeight();
            this.mViewFinderCaptureArea.setLayoutParams(layoutParams);
        }
    }

    private void updateSelectability() {
        ParameterKey.FACING.setSelectability(ParameterSelectability.getSelectability(Facing.getOptions().length));
        ParameterKey.FLASH.setSelectability(ParameterSelectability.SELECTABLE);
        ParameterKey.PHOTO_LIGHT.setSelectability(ParameterSelectability.INVALID);
        if (this.mCameraDevice.isCameraFront()) {
            ParameterKey.SELF_TIMER.setSelectability(ParameterSelectability.SELECTABLE);
            return;
        }
        ParameterKey.SELF_TIMER.setSelectability(ParameterSelectability.INVALID);
    }

    private void updateUiComponent(BaseFastViewFinder.UiComponentKind uiComponentKind) {
        this.changeToPhotoDialogView(uiComponentKind);
    }

    private void updateUuidBeforeUpdateView(CameraExtension.FaceDetectionResult faceDetectionResult) {
        if (this.mIsFaceDetectionIdSupported != null && !this.mIsFaceDetectionIdSupported.booleanValue() && FaceDetectUtil.isValidFaceDetectionResult(faceDetectionResult)) {
            int n = ((CameraExtension.ExtFace)faceDetectionResult.extFaceList.get((int)faceDetectionResult.indexOfSelectedFace)).face.id;
            this.mFocusRectangles.setUserTouchFaceUuid(String.valueOf(n));
        }
    }

    /*
     * Exception decompiling
     */
    private void updateViewFinderCaptureAreaTouchEventHandling(TouchCapture var1_1, BaseFastViewFinder.HeadUpDisplaySetupState var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public boolean canSwitchStorage() {
        return this.mStateMachine.isMenuAvailable();
    }

    public void changeLayoutTo(LayoutPattern layoutPattern) {
        super.changeLayoutTo(layoutPattern);
        if (this.mActivity.isOneShotPhotoSecure()) {
            this.getBaseLayout().hideContentsViewController();
            if (this.getBaseLayout().getCapturingModeButton() != null) {
                this.getBaseLayout().getCapturingModeButton().setVisibility(4);
            }
            if (this.mConditionIndicatorIcon != null) {
                this.mConditionIndicatorIcon.setVisibility(4);
            }
            if (this.mSceneIndicatorIcon != null) {
                this.mSceneIndicatorIcon.setVisibility(4);
            }
            if (this.mSceneIndicatorText != null) {
                this.mSceneIndicatorText.setVisibility(4);
                this.mSceneIndicatorText.setText(null);
            }
        }
    }

    public void checkSurfaceIsPreparedOrNot() {
        this.checkSurfaceIsPreparedOrNot(this.mSurfaceHolder, this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight());
    }

    public void closeReviewWindow() {
        if (this.mAutoReview != null) {
            this.mAutoReview.hide();
        }
    }

    public void ensureVideoAutoReviewSettingHasLoaded() {
        if (this.mVideoAutoReviewSetting == null) {
            this.mPrefs = this.mActivity.getSharedPreferences("com.sonyericsson.android.camera.shared_preferences", 0);
            this.mVideoAutoReviewSetting = FastCapturingCameraUtils.loadParameter(this.mPrefs, 2, this.mCameraDevice.getCameraId(), ParameterKey.VIDEO_AUTO_REVIEW, VideoAutoReview.OFF);
        }
    }

    public void fadeoutCounter() {
        this.mCounterView.setVisibility(4);
    }

    public AutoReview getAutoReviewSetting() {
        return this.mAutoReviewSetting;
    }

    public Flash[] getFlashOptions() {
        Object object = this.mStateMachine.getCurrentCameraParameters(false);
        if (object == null) {
            return null;
        }
        object = object.getSupportedFlashModes();
        ActionMode actionMode = new ActionMode(false, 1, this.mCameraDevice.getCameraId());
        return LedOptionsResolver.getInstance().getFlashOptions(actionMode, (List<String>)object);
    }

    public int getOrientation() {
        return this.getBaseLayout().getCurrentOrientation();
    }

    public int getOrientationForUiNotRotateInRecording() {
        if (this.mActivity.isRecording()) {
            return this.mRecordingOrientation;
        }
        return this.getOrientation();
    }

    public SelfTimer getPhotoSelfTimerSetting() {
        return this.mPhotoSelfTimerSetting;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int getRequestId(boolean bl) {
        int n = -1;
        if (this.getBaseLayout().getContentsViewController() != null) {
            this.preparationForInstantViewer();
            n = bl ? this.getBaseLayout().getContentsViewController().createContentFrame() : this.getBaseLayout().getContentsViewController().createClearContentFrame();
            this.getBaseLayout().getContentsViewController().show();
        }
        return n;
    }

    protected ContentPallet.ThumbnailClickListener getThumbnailClickListener() {
        return new ContentPallet.ThumbnailClickListener(){

            @Override
            public void onClick(Content content) {
                if (content != null) {
                    Content.ContentInfo contentInfo = content.getContentInfo();
                    if (contentInfo.mMimeType.equals("image/jpeg") && FastViewFinder.this.mActivity.isDeviceInSecurityLock()) {
                        ((FrameLayout)FastViewFinder.this.getActivity().findViewById(2131689579)).setVisibility(4);
                        FastViewFinder.this.mAutoReview.setDuration(-1);
                        FastViewFinder.this.mAutoReview.showRightIcons(true);
                        FastViewFinder.this.mAutoReview.open(FastViewFinder.this.mActivity, contentInfo.mOriginalUri, contentInfo.mMimeType, new Rect(0, 0, contentInfo.mWidth, contentInfo.mHeight), 0, contentInfo.mOrientation, FastViewFinder.this.mCapturingMode.isFront(), (ReviewWindowListener)FastViewFinder.this, (ContentResolverUtilListener)FastViewFinder.this);
                    }
                } else {
                    return;
                }
                content.viewContent(FastViewFinder.this.mActivity);
            }
        };
    }

    public TouchCapture getTouchCapture() {
        return this.mTouchCapture;
    }

    public VideoAutoReview getVideoAutoReviewSetting() {
        return this.mVideoAutoReviewSetting;
    }

    public void hideHudIcons() {
        this.changeLayoutTo(DefaultLayoutPattern.CAPTURE);
        this.setSceneNotificationIndicatorsInvisible(false);
    }

    public boolean isInTouchCaptureArea(MotionEvent motionEvent) {
        boolean bl = false;
        if (this.mViewFinderCaptureArea != null) {
            bl = this.mViewFinderCaptureArea.contains(motionEvent);
        }
        return bl;
    }

    public boolean isSetupHeadupDisplayInvoked() {
        return this.mIsSetupHeadupDisplayInvoked;
    }

    public boolean isTouchFocus() {
        if (this.mFocusRectangles == null) {
            return false;
        }
        return this.mFocusRectangles.isTouchFocus();
    }

    public void onCanceled() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_CANCEL, new Object[0]);
    }

    public void onClickThumbnailProgress() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_TOUCH_CONTENT_PROGRESS, new Object[0]);
    }

    public void onCloseCapturingModeSelector() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
        if (this.isAllDialogClosed()) {
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[]{BaseFastViewFinder.UiComponentKind.SETTING_DIALOG});
        }
    }

    public void onCloseStorageDialog() {
        if (this.isAllDialogClosed()) {
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[]{BaseFastViewFinder.UiComponentKind.SETTING_DIALOG});
        }
    }

    public void onDeleted(boolean bl, Uri uri) {
        this.getBaseLayout().getContentsViewController().removeContentInfo();
        this.getBaseLayout().reloadContentsViewController(this.getThumbnailClickListener());
    }

    public void onFaceSelected(Point point) {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CHANGE_SELECTED_FACE, point);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation layoutOrientation) {
        super.onLayoutOrientationChanged(layoutOrientation);
        int n = layoutOrientation == BaseActivity.LayoutOrientation.Portrait ? 1 : 2;
        this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_ORIENTATION_CHANGED, n);
    }

    public void onLongPressed() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_LONG_PRESS, new Object[]{StateMachine.TouchEventSource.FACE});
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onModeFinish() {
        this.closeCapturingModeSelector();
        if (!this.getActivity().isInLockTaskMode()) {
            this.changeLayoutTo(DefaultLayoutPattern.CLEAR);
            if (this.mSettingDialogStack != null) {
                this.mSettingDialogStack.hideShortcutTray();
                this.mSettingDialogStack.closeDialogs(false);
            }
        } else {
            this.changeLayoutTo(DefaultLayoutPattern.PREVIEW);
        }
        this.mActivity.abort();
    }

    /*
     * Exception decompiling
     */
    public void onModeSelect(String var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    protected void onOpenCapturingModeSelector() {
        this.closeSettingDialog();
        this.getBaseLayout().setOnTouchListener(this.mUiComponentBackgroundTouchEventHandler);
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_OPENED, new Object[]{BaseFastViewFinder.UiComponentKind.SETTING_DIALOG});
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void onOpenStorageDialog() {
        if (this.mCurrentDisplayingUiComponent == null) {
            return;
        }
        this.closeSettingDialog();
        this.closeCapturingModeSelector();
        if (!this.getActivity().getStorageManager().isReady()) return;
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_OPENED, new Object[]{BaseFastViewFinder.UiComponentKind.SETTING_DIALOG});
    }

    public void onReleased() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, new Object[]{StateMachine.TouchEventSource.FACE});
    }

    public void onReviewWindowClose() {
        this.mIsInstantViewerOpened = false;
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
        this.requestToDimSystemUi();
    }

    public void onReviewWindowOpen() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_OPENED, new Object[]{BaseFastViewFinder.UiComponentKind.REVIEW_WINDOW});
        ((FrameLayout)this.getActivity().findViewById(2131689579)).setVisibility(0);
        this.requestToRecoverSystemUi();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onSettingValueChanged(ParameterKey enum_, ParameterValue parameterValue) {
        if (!this.mActivity.getCameraDevice().setAdditionalSettings((ParameterKey)enum_, parameterValue)) {
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterValue.getParameterKey().ordinal()]) {
            default: {
                return;
            }
            case 1: {
                FastCapturingCameraUtils.storeParameter(this.mPrefs, 0, (Flash)parameterValue);
                return;
            }
            case 2: 
        }
        this.mPhotoSelfTimerSetting = (SelfTimer)parameterValue;
        enum_ = BaseFastViewFinder.HeadUpDisplaySetupState.PHOTO_STANDBY;
        boolean bl = this.mStateMachine.getCurrentCaptureState() == StateMachine.CaptureState.STATE_PHOTO_SELFTIMER_COUNTDOWN;
        this.changeScreenButtonImage((BaseFastViewFinder.HeadUpDisplaySetupState)enum_, bl);
        this.setupSelfTimerCountDownView();
        FastCapturingCameraUtils.storeParameter(this.mPrefs, 1, (SelfTimer)parameterValue);
    }

    public /* varargs */ void onStateChanged(StateMachine.CaptureState captureState, Object ... arrobject) {
        this.onViewFinderStateChanged(captureState, arrobject);
    }

    public void onStorageAutoSwitch(String string) {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_STORAGE_SHOULD_CHANGE, new Object[0]);
    }

    public void onTouched() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.FALSE);
    }

    public void openCapturingModeSelector(String string) {
        if (this.mStateMachine.canCurrentStateHandleAsynchronizedTask()) {
            super.openCapturingModeSelector(string);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void openReviewWindow(Uri uri, SavingRequest savingRequest) {
        if (savingRequest.common.mimeType.equals("image/jpeg") && this.mAutoReviewSetting == AutoReview.EDIT || savingRequest.common.mimeType.equals("video/mp4") && this.mVideoAutoReviewSetting == VideoAutoReview.EDIT) {
            AutoReviewWindow.launchEditor(this.mActivity, uri, savingRequest.common.mimeType);
            return;
        } else {
            if (this.mAutoReview == null) return;
            {
                ((FrameLayout)this.getActivity().findViewById(2131689579)).setVisibility(4);
                if (this.mAutoReview.open(this.getActivity(), uri, savingRequest.common.mimeType, new Rect(0, 0, savingRequest.common.width, savingRequest.common.height), 0, savingRequest.common.orientation, this.mCapturingMode.isFront(), (ReviewWindowListener)this, (ContentResolverUtilListener)this)) return;
                {
                    this.closeReviewWindow();
                    return;
                }
            }
        }
    }

    public void release() {
        super.release();
    }

    public void removeEarlyThumbnailView() {
        this.getBaseLayout().getContentsViewController().removeEarlyThumbnailView();
    }

    public void requestInflate(LayoutInflater layoutInflater) {
        this.startInflateTask(layoutInflater, FastLayoutAsyncInflateItems.getInflateItemsForFast());
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public /* varargs */ void sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent object, Object ... object2) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent[object.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.setupHeadUpDisplay((BaseFastViewFinder.HeadUpDisplaySetupState)object2[0]);
                return;
            }
            case 2: {
                if (this.mActivity == null) return;
                if (this.mCameraDevice == null) return;
                if (this.mCameraDevice.getPreviewRect() == null) return;
                object = LayoutDependencyResolver.getSurfaceRect(this.mActivity, (float)this.mCameraDevice.getPreviewRect().width() / (float)this.mCameraDevice.getPreviewRect().height());
                int n = object.width();
                int n2 = object.height();
                if (FastViewFinder.isNearSameSize((Rect)object, new Rect(0, 0, this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight()))) return;
                this.resizeEvfScope(n, n2);
                return;
            }
            case 3: {
                if (this.mSurfaceBlinderView == null) return;
                if (this.mSurfaceBlinderView.getVisibility() == 0) return;
                this.getBaseLayout().getPreviewOverlayContainer().addView(this.mSurfaceBlinderView);
                this.mSurfaceBlinderView.setVisibility(0);
                return;
            }
            case 4: {
                if (this.mSurfaceBlinderView == null) return;
                if (this.mSurfaceBlinderView.getVisibility() != 0) return;
                this.mSurfaceBlinderView.setVisibility(4);
                this.getBaseLayout().getPreviewOverlayContainer().removeView(this.mSurfaceBlinderView);
                return;
            }
            case 5: {
                if (this.getBaseLayout().getLowMemoryIndicator() == null) return;
                this.getBaseLayout().getLowMemoryIndicator().set(false);
                return;
            }
            case 6: {
                if (this.getBaseLayout().getLowMemoryIndicator() == null) return;
                this.getBaseLayout().getLowMemoryIndicator().set(true);
                return;
            }
            case 7: {
                if (this.getBaseLayout().getRecordingIndicator() == null) return;
                if (!((Boolean)object2[1]).booleanValue()) {
                    this.getBaseLayout().getRecordingIndicator().setSequenceMode(true);
                }
                this.getBaseLayout().getRecordingIndicator().setConstraint((Boolean)object2[1]);
                this.getBaseLayout().getRecordingIndicator().prepareBeforeRecording((Integer)object2[0], (Boolean)object2[2]);
                return;
            }
            case 8: {
                this.onCameraModeChangedTo((Integer)object2[0]);
                return;
            }
            case 9: {
                this.onSceneModeChanged((CameraExtension.SceneRecognitionResult)object2[0]);
                return;
            }
            case 10: {
                this.mFocusRectangles.startFaceDetection();
                return;
            }
            case 11: {
                object = (CameraExtension.FaceDetectionResult)object2[0];
                if (this.mIsFaceDetectionIdSupported == null) {
                    if (!object.extFaceList.isEmpty()) {
                        this.mIsFaceDetectionIdSupported = FaceDetectUtil.hasValidFaceId((CameraExtension.FaceDetectionResult)object);
                    }
                } else if (!this.mIsFaceDetectionIdSupported.booleanValue()) {
                    FaceDetectUtil.setUuidFaceDetectionResult((CameraExtension.FaceDetectionResult)object);
                }
                this.onFaceDetected((CameraExtension.FaceDetectionResult)object);
                return;
            }
            case 12: {
                this.onFaceNameDetected((List)object2[0]);
                return;
            }
            case 13: {
                this.mFocusRectangles.startObjectTracking();
                return;
            }
            case 14: {
                this.onTrackedObjectStateUpdated((CameraExtension.ObjectTrackingResult)object2[0]);
                return;
            }
            case 15: {
                object = this.mStateMachine.getCurrentCameraParameters(false);
                int n = object == null ? 0 : object.getMaxZoom();
                int n3 = (Integer)object2[0];
                int n4 = this.mCameraDevice.getMaxSuperResolutionZoom();
                boolean bl = PlatformDependencyResolver.isSuperResolutionZoomSupported((Camera.Parameters)object);
                object = this.getBaseLayout().getZoomBar();
                if (object == null) return;
                if (bl && !this.mStateMachine.isInModeLessRecording()) {
                    object.updateZoombarType(Zoombar.Type.PARTIAL_SUPER_RESOLUTION);
                } else {
                    object.updateZoombarType(Zoombar.Type.NORMAL);
                }
                this.onZoomChanged(n3, n, n4);
                return;
            }
            case 16: {
                this.cancelSelfTimerCountDownView();
                return;
            }
            case 17: {
                this.setCount((Integer)object2[0]);
                return;
            }
            case 18: {
                object = (Point)object2[0];
                object2 = (FocusRectangles.FocusSetType)object2[1];
                this.mFocusRectangles.setFocusPosition((Point)object, (FocusRectangles.FocusSetType)object2);
                if (object2 != FocusRectangles.FocusSetType.FIRST) return;
                if (this.mCapturingMode.isFront()) return;
                this.mFocusRectangles.onAutoFocusStarted();
                return;
            }
            case 19: {
                if (this.mFocusRectangles == null) return;
                this.mFocusRectangles.clearAllFocus();
                return;
            }
            case 20: {
                this.mFocusRectangles.clearAllFocusExceptFace();
                return;
            }
            case 21: {
                if (this.getBaseLayout().getRecordingIndicator() == null) return;
                this.getBaseLayout().getRecordingIndicator().updateRecordingTime((Integer)object2[0]);
                this.getBaseLayout().getOnScreenButtonGroup().restartAnimation();
                return;
            }
            case 22: {
                this.setOrientation((Integer)object2[0]);
                return;
            }
            case 23: {
                if (this.mFocusRectangles == null) return;
                if (this.mCapturingMode == null) return;
                if (this.mCapturingMode.isFront()) return;
                this.mFocusRectangles.onAutoFocusCanceled();
                return;
            }
            case 24: {
                this.updateUiComponent(BaseFastViewFinder.UiComponentKind.SETTING_DIALOG);
                return;
            }
            case 25: {
                this.closeCurrentDisplayingUiComponent();
                return;
            }
            case 26: {
                object = (StoreDataResult)object2[0];
                this.openReviewWindow(object.uri, object.savingRequest);
                return;
            }
            case 27: {
                SavingRequest savingRequest = (SavingRequest)object2[1];
                String string = savingRequest.common.mimeType;
                object = null;
                if (this.mAutoReview != null && (object = this.mAutoReview.getUri()) != null) {
                    AutoReviewWindow.launchAlbum(this.mActivity, (Uri)object, string);
                    return;
                }
                if (string != "video/mp4" && string != "video/3gpp") {
                    this.openInstantViewer((byte[])object2[0], null, savingRequest);
                    return;
                }
                this.openInstantViewer(null, (String)object2[0], savingRequest);
                return;
            }
            case 28: {
                if (this.mAutoReview != null && this.mAutoReview.getUri() == null) {
                    this.mAutoReview.setUri((Uri)object2[0]);
                }
                if (this.mAutoReview == null) return;
                if (!this.mIsInstantViewerOpened) return;
                this.mAutoReview.showRightIcons(true);
                return;
            }
            case 29: {
                this.startCaptureFeedbackAnimation();
                return;
            }
            case 30: {
                this.setEarlyThumbnailView((View)object2[0]);
                return;
            }
            case 31: {
                this.removeEarlyThumbnailView();
                return;
            }
            case 32: {
                int n = (Integer)object2[0];
                if (object2.length > 1) {
                    this.startEarlyThumbnailInsertAnimation(n, (Animation.AnimationListener)object2[1]);
                    return;
                }
                this.startEarlyThumbnailInsertAnimation(n);
                return;
            }
            case 33: {
                this.addCountUpView((Integer)object2[0]);
                return;
            }
            case 34: {
                this.removeCountUpView((Integer)object2[0]);
                return;
            }
            case 35: {
                this.onLazyInitializationTaskRun();
                return;
            }
            case 36: {
                this.addVideoChapter((ChapterThumbnail)object2[0]);
                return;
            }
            case 37: {
                this.onNotifyThermalStatus(false);
                return;
            }
            case 38: {
                this.onNotifyThermalStatus(true);
                return;
            }
            case 39: 
        }
        this.requestToRestoreSystemUi();
    }

    public void setAutoReviweDuration(AutoReview autoReview) {
        if (this.mAutoReview != null && autoReview != null) {
            this.mAutoReview.setDuration(autoReview.getDuration());
        }
    }

    public void setCameraDevice(CameraDeviceHandler cameraDeviceHandler) {
        this.mCameraDevice = cameraDeviceHandler;
    }

    public void setContentView() {
        this.setup((View)this.mSurfaceView);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void setOrientation(int n) {
        if (this.mStateMachine.isRecording()) {
            super.setOrientation(n, this.mRecordingOrientation);
        } else {
            super.setOrientation(n);
        }
        if (this.isHeadUpDesplayReady()) {
            if (this.mSettingDialogStack != null) {
                this.mSettingDialogStack.setUiOrientation(n);
            }
            this.mSceneIndicatorIcon.setRotation(RotationUtil.getAngle(this.getOrientationForUiNotRotateInRecording()));
            this.mConditionIndicatorIcon.setRotation(RotationUtil.getAngle(this.getOrientationForUiNotRotateInRecording()));
            this.mSceneIndicatorText.setAnimation(null);
            this.mSceneIndicatorText.setVisibility(4);
            if (this.mAutoReview != null) {
                this.mAutoReview.setOrientation(n);
            }
            if (this.mFocusRectangles != null) {
                this.mFocusRectangles.setOrientation(n);
            }
            if (this.mSelfTimerCountDownView != null) {
                this.mSelfTimerCountDownView.setSensorOrientation(n);
            }
        }
    }

    public void setRecordingOrientation(int n) {
        this.mRecordingOrientation = n;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setStateMachine(StateMachine stateMachine) {
        if (stateMachine != null) {
            stateMachine.addOnStateChangedListener((StateMachine.OnStateChangedListener)this);
        } else if (this.mStateMachine != null) {
            this.mStateMachine.removeOnStateChangedListener((StateMachine.OnStateChangedListener)this);
        }
        this.mStateMachine = stateMachine;
    }

    public boolean shouldShowDialogOnStorageSettingChangedToInternal() {
        if (!this.getActivity().getStorageManager().isExternalStorageUnavailableWithExternalStorageSettingAtFirstLaunch()) {
            return true;
        }
        return false;
    }

    public void startCaptureFeedbackAnimation() {
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.start(CaptureFeedbackAnimationFactory.createDefaultAnimation());
        }
    }

    public void startEarlyThumbnailInsertAnimation(int n, Animation.AnimationListener animationListener) {
        this.getBaseLayout().getContentsViewController().startInsertAnimation(n, animationListener);
    }

    public void startHideThumbnail() {
        if (this.getBaseLayout().getContentsViewController() == null) {
            return;
        }
        this.getBaseLayout().getContentsViewController().stopAnimation(true);
        Animation animation = AnimationUtils.loadAnimation(this.mActivity, 2130968592);
        animation.setAnimationListener(new Animation.AnimationListener(){

            @Override
            public void onAnimationEnd(Animation animation) {
                if (FastViewFinder.this.mCameraDevice.isRecording()) {
                    FastViewFinder.this.getBaseLayout().getContentsViewController().hideThumbnail();
                }
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
            }
        });
        this.getBaseLayout().getContentsViewController().startAnimation(animation);
    }

    public void startSelfTimerCountDownAnimation() {
        this.mSelfTimerCountDownView.startSelfTimerCountDownAnimation();
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int n, int n2, int n3) {
        this.checkSurfaceIsPreparedOrNot(surfaceHolder, n2, n3);
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.onSurfaceAvailableInternal(surfaceHolder, this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight());
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (this.mCameraDevice == null) {
            CameraLogger.w(TAG, "CameraDevice has aleady been released.");
            return;
        }
        this.mCameraDevice.stopLiveViewFinder();
    }

    public void updateGeotagIcon() {
        if (this.getBaseLayout().getGeoTagIndicator() != null && this.mActivity != null) {
            this.getBaseLayout().getGeoTagIndicator().set(PresetConfigurationResolver.isGeoTagEnabled(this.mActivity.getCommonSettings().get(CommonSettingKey.GEO_TAG), this.mActivity));
        }
    }

    private class CameraSwitchExecutor
    implements SettingExecutorInterface<SettingGroup> {
        private CameraSwitchExecutor() {
        }

        @Override
        public void onExecute(TypedSettingItem<SettingGroup> typedSettingItem) {
            FastViewFinder.this.onToggleCameraSwitch();
        }
    }

    private class CloseExecutor<T>
    implements SettingExecutorInterface<T> {
        private final SettingExecutorInterface<T> mExecutor;

        private CloseExecutor(SettingExecutorInterface<T> settingExecutorInterface) {
            this.mExecutor = settingExecutorInterface;
        }

        @Override
        public void onExecute(TypedSettingItem<T> typedSettingItem) {
            this.mExecutor.onExecute(typedSettingItem);
            FastViewFinder.this.mSettingDialogStack.closeDialogs();
            FastViewFinder.this.mSettingDialogStack.updateShortcutTray(FastViewFinder.this.generateShortcutItemAdapter(FastViewFinder.this.mCapturingMode));
        }
    }

    private class OnScreenCamcordButtonStateListener
    implements OnScreenButtonListener {
        private final boolean mIsSubCamcordButton;

        public OnScreenCamcordButtonStateListener(boolean bl) {
            this.mIsSubCamcordButton = bl;
        }

        @Override
        public void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            if (this.mIsSubCamcordButton) {
                FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SUB_CAMCORD_BUTTON_CANCEL, new Object[0]);
            }
        }

        @Override
        public void onDispatchDraw(OnScreenButton onScreenButton, Canvas canvas) {
        }

        @Override
        public void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            FastViewFinder.this.mSettingDialogStack.closeDialogs();
            if (this.mIsSubCamcordButton) {
                FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SUB_CAMCORD_BUTTON_TOUCH, new Object[0]);
            }
        }

        @Override
        public void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        }

        @Override
        public void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            if (this.mIsSubCamcordButton) {
                FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SUB_CAMCORD_BUTTON_RELEASE, new Object[0]);
                return;
            }
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAMCORD_BUTTON_RELEASE, new Object[0]);
        }
    }

    private class OnScreenCaptureButtonStateListener
    implements OnScreenButtonListener {
        private OnScreenCaptureButtonStateListener() {
        }

        @Override
        public void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            if (FastViewFinder.this.mStateMachine != null) {
                FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_CANCEL, new Object[0]);
            }
        }

        @Override
        public void onDispatchDraw(OnScreenButton onScreenButton, Canvas canvas) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, false);
        }

        @Override
        public void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            FastViewFinder.this.mSettingDialogStack.closeDialogs();
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
        }

        @Override
        public void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        }

        @Override
        public void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, new Object[]{StateMachine.TouchEventSource.PHOTO_BUTTON});
        }
    }

    class PostUiInflatedTask
    implements Runnable {
        PostUiInflatedTask() {
        }

        @Override
        public void run() {
            FastViewFinder.this.setupAnimations();
        }
    }

    class ReTrySetupHeadUpDisplayTask
    implements Runnable {
        ReTrySetupHeadUpDisplayTask() {
        }

        @Override
        public void run() {
            if (FastViewFinder.this.mStateMachine == null) {
                return;
            }
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[0]);
        }
    }

    private class SettingMenuOpenExecutor
    implements SettingExecutorInterface<SettingGroup> {
        private SettingMenuOpenExecutor() {
        }

        @Override
        public void onExecute(TypedSettingItem<SettingGroup> typedSettingItem) {
            FastViewFinder.this.onToggleMenuButton();
        }
    }

    private class SettingShortcutDialogOpenExecutor
    implements SettingExecutorInterface<SettingList.Shortcut> {
        private SettingShortcutDialogOpenExecutor() {
        }

        @Override
        public void onExecute(TypedSettingItem<SettingList.Shortcut> object) {
            if (!FastViewFinder.this.getActivity().isMenuAvailable()) {
                FastViewFinder.this.mSettingDialogStack.clearShortcutSelected();
                return;
            }
            SettingAdapter settingAdapter = new SettingAdapter(FastViewFinder.this.mActivity, FastViewFinder.this.mDialogItemFactory);
            switch (.$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut[object.getData().ordinal()]) {
                default: {
                    return;
                }
                case 4: 
            }
            object = ParameterKey.SELF_TIMER;
            settingAdapter.addAll(FastViewFinder.this.generateChildrenSettinItem(FastViewFinder.this.mActivity, (ParameterKey)object));
            if (!FastViewFinder.this.mSettingDialogStack.openShortcutDialog(settingAdapter, object.getTitleTextId(FastViewFinder.this.mCapturingMode))) {
                FastViewFinder.this.mSettingDialogStack.closeCurrentDialog();
            }
            FastViewFinder.this.hideBalloonTips();
        }
    }

    private class SettingShortcutGroupDialogOpenExecutor
    implements SettingExecutorInterface<SettingGroup> {
        private SettingShortcutGroupDialogOpenExecutor() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public void onExecute(TypedSettingItem<SettingGroup> arrparameterKey) {
            if (!FastViewFinder.this.getActivity().isMenuAvailable()) {
                FastViewFinder.this.mSettingDialogStack.clearShortcutSelected();
                return;
            }
            SettingAdapter settingAdapter = new SettingAdapter(FastViewFinder.this.mActivity, FastViewFinder.this.mDialogItemFactory);
            for (ParameterKey parameterKey : ((SettingGroup)arrparameterKey.getData()).getSettingItemList()) {
                if (!parameterKey.isSelectable()) continue;
                Iterator iterator = FastViewFinder.this.generateChildrenSettinItem(FastViewFinder.this.mActivity, parameterKey).iterator();
                while (iterator.hasNext()) {
                    settingAdapter.add((SettingItem)iterator.next());
                }
                if (!FastViewFinder.this.mSettingDialogStack.openShortcutDialog(settingAdapter, parameterKey.getTitleTextId(FastViewFinder.this.mCapturingMode))) {
                    FastViewFinder.this.mSettingDialogStack.closeCurrentDialog();
                }
                FastViewFinder.this.hideBalloonTips();
            }
        }
    }

    private class SurfaceAvailableRetryTask
    implements Runnable {
        private final int mHeight;
        private final SurfaceHolder mSurface;
        private final int mWidth;

        SurfaceAvailableRetryTask(SurfaceHolder surfaceHolder, int n, int n2) {
            this.mSurface = surfaceHolder;
            this.mWidth = n;
            this.mHeight = n2;
        }

        @Override
        public void run() {
            if (FastViewFinder.this.mSurfaceView != null) {
                FastViewFinder.this.onSurfaceAvailableInternal(this.mSurface, this.mWidth, this.mHeight);
                return;
            }
            CameraLogger.w(TAG, "All reference of FastViewFinder has aleady been released.");
        }
    }

    private class UiComponentBackgroundTouchEventHandler
    implements View.OnTouchListener {
        private UiComponentBackgroundTouchEventHandler() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                FastViewFinder.this.closeCurrentDisplayingUiComponent();
            }
            return true;
        }
    }

    private class ViewFinderCaptureAreaNonObjectTrackingStateListener
    extends ViewFinderCaptureAreaStateListener {
        public ViewFinderCaptureAreaNonObjectTrackingStateListener(int n) {
            super(n);
        }

        @Override
        public void onCaptureAreaMoved(Point point) {
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_AF_SEARCH_IN_TOUCH, new Object[0]);
            this.setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.MOVE);
        }

        @Override
        public void onCaptureAreaTouched(Point point) {
            FastViewFinder.this.hideBalloonTips();
            this.setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.FIRST);
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
        }
    }

    private class ViewFinderCaptureAreaStateListener
    extends ViewFinderTouchActionStateListener {
        public ViewFinderCaptureAreaStateListener(int n) {
            super(n);
        }

        @Override
        public void onCaptureAreaLongPressed(Point point) {
            this.setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.FIRST);
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
        }

        @Override
        public void onCaptureAreaMoved(Point point) {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onCaptureAreaReleased(Point point) {
            switch (this.mCameraType) {
                case 1: {
                    FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, new Object[]{StateMachine.TouchEventSource.CAPTURE_AREA});
                }
                default: {
                    break;
                }
                case 2: {
                    if (FastViewFinder.this.mStateMachine.isInModeLessRecording()) {
                        FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, new Object[]{StateMachine.TouchEventSource.CAPTURE_AREA});
                        break;
                    }
                    FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAMCORD_BUTTON_RELEASE, new Object[0]);
                }
            }
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CANCEL_TOUCH_ZOOM, new Object[0]);
        }

        @Override
        public void onCaptureAreaSingleTapUp(Point point) {
            PointF pointF = FastViewFinder.this.convertTouchPointToDevicePreviewPositionRatio(point);
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_AF_AFTER_OBJECT_TRACKED, point, pointF);
            switch (this.mCameraType) {
                default: {
                    return;
                }
                case 1: 
            }
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, new Object[]{StateMachine.TouchEventSource.CAPTURE_AREA});
        }

        @Override
        public void onCaptureAreaStopped() {
            if (FastViewFinder.this.mTouchCapture == TouchCapture.ON) {
                FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
            }
        }

        @Override
        public void onCaptureAreaTouched(Point point) {
            FastViewFinder.this.hideBalloonTips();
            switch (this.mCameraType) {
                default: {
                    return;
                }
                case 2: 
            }
            switch (FastViewFinder.this.mVideoFocusMode) {
                default: {
                    return;
                }
                case OBJECT_TRACKING: 
            }
            this.setSelectedObjectPositionToDeviceAndViewFinder(point);
        }
    }

    private class ViewFinderStateListener
    implements CaptureArea.CaptureAreaStateListener {
        @Override
        public void onCaptureAreaCanceled() {
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SCREEN_CLEAR, new Object[0]);
        }

        @Override
        public void onCaptureAreaIsReadyToScale() {
            if (FastViewFinder.this.getCurrentLayoutPattern() != DefaultLayoutPattern.SELFTIMER) {
                FastViewFinder.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
            }
        }

        @Override
        public void onCaptureAreaLongPressed(Point point) {
        }

        @Override
        public void onCaptureAreaMoved(Point point) {
        }

        @Override
        public void onCaptureAreaReleased(Point point) {
        }

        @Override
        public void onCaptureAreaScaled(float f) {
        }

        @Override
        public void onCaptureAreaSingleTapUp(Point point) {
        }

        @Override
        public void onCaptureAreaStopped() {
        }

        @Override
        public void onCaptureAreaTouched(Point point) {
            FastViewFinder.this.hideBalloonTips();
        }
    }

    private class ViewFinderTouchActionNonObjectTrackingStateListener
    extends ViewFinderTouchActionStateListener {
        public ViewFinderTouchActionNonObjectTrackingStateListener(int n) {
            super(n);
        }

        @Override
        public void onCaptureAreaLongPressed(Point point) {
        }

        @Override
        public void onCaptureAreaMoved(Point point) {
            this.setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.MOVE);
        }

        @Override
        public void onCaptureAreaSingleTapUp(Point point) {
        }

        @Override
        public void onCaptureAreaTouched(Point point) {
            FastViewFinder.this.hideBalloonTips();
            this.setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.FIRST);
        }
    }

    private class ViewFinderTouchActionStateListener
    extends ViewFinderStateListener {
        protected final int mCameraType;

        public ViewFinderTouchActionStateListener(int n) {
            this.mCameraType = n;
        }

        @Override
        public void onCaptureAreaCanceled() {
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CANCEL_TOUCH_ZOOM, new Object[0]);
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SCREEN_CLEAR, new Object[0]);
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DESELECT_OBJECT_POSITION, new Object[0]);
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CANCEL_TOUCH_ZOOM, new Object[0]);
        }

        @Override
        public void onCaptureAreaIsReadyToScale() {
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PREPARE_TOUCH_ZOOM, new Object[0]);
        }

        @Override
        public void onCaptureAreaMoved(Point point) {
            this.setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.MOVE);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onCaptureAreaReleased(Point point) {
            switch (this.mCameraType) {
                case 1: {
                    this.setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.RELEASE);
                }
                default: {
                    break;
                }
                case 2: {
                    FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SCREEN_CLEAR, new Object[0]);
                }
            }
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CANCEL_TOUCH_ZOOM, new Object[0]);
        }

        @Override
        public void onCaptureAreaScaled(float f) {
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_TOUCH_ZOOM, Float.valueOf(f));
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_STOP_TOUCH_ZOOM, new Object[0]);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onCaptureAreaTouched(Point point) {
            FastViewFinder.this.hideBalloonTips();
            switch (this.mCameraType) {
                default: {
                    return;
                }
                case 1: {
                    this.setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.FIRST);
                    return;
                }
                case 2: {
                    if (FastViewFinder.this.mVideoFocusMode != FocusMode.OBJECT_TRACKING) return;
                    this.setSelectedObjectPositionToDeviceAndViewFinder(point);
                    return;
                }
            }
        }

        protected void setFocusPositionToDeviceAndViewFinder(Point point, FocusRectangles.FocusSetType focusSetType) {
            PointF pointF = FastViewFinder.this.convertTouchPointToDevicePreviewPositionRatio(point);
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SET_FOCUS_POSITION, new Object[]{point, pointF, focusSetType});
        }

        protected void setSelectedObjectPositionToDeviceAndViewFinder(Point point) {
            PointF pointF = FastViewFinder.this.convertTouchPointToDevicePreviewPositionRatio(point);
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SET_SELECTED_OBJECT_POSITION, point, pointF);
        }
    }

    private class ViewFinderTouchCaptureStateListener
    extends ViewFinderStateListener {
        protected final int mCameraType;

        public ViewFinderTouchCaptureStateListener(int n) {
            this.mCameraType = n;
        }

        @Override
        public void onCaptureAreaLongPressed(Point point) {
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
        }

        @Override
        public void onCaptureAreaReleased(Point point) {
            switch (this.mCameraType) {
                default: {
                    return;
                }
                case 1: {
                    FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, new Object[]{StateMachine.TouchEventSource.CAPTURE_AREA});
                    return;
                }
                case 2: 
            }
            if (FastViewFinder.this.mStateMachine.isInModeLessRecording()) {
                FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, new Object[]{StateMachine.TouchEventSource.CAPTURE_AREA});
                return;
            }
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAMCORD_BUTTON_RELEASE, new Object[0]);
        }

        @Override
        public void onCaptureAreaTouched(Point point) {
            FastViewFinder.this.hideBalloonTips();
            FastViewFinder.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
        }
    }

}

