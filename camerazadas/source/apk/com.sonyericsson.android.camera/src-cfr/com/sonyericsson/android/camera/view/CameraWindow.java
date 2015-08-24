/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$DeviceStabilityCondition
 *  com.sonyericsson.cameraextension.CameraExtension$SceneMode
 */
package com.sonyericsson.android.camera.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.LaunchConditions;
import com.sonyericsson.android.camera.burst.CountUpView;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoSelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.controller.VideoDevice;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.device.CameraSurfaceHolder;
import com.sonyericsson.android.camera.device.PreviewFrameRetriever;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.CoordinateUtil;
import com.sonyericsson.android.camera.util.LocalGoogleAnalyticsUtil;
import com.sonyericsson.android.camera.view.CameraWindowListener;
import com.sonyericsson.android.camera.view.CameraWindowListenerLaunch;
import com.sonyericsson.android.camera.view.CameraWindowListenerPrepared;
import com.sonyericsson.android.camera.view.DetectedFaceRectangles;
import com.sonyericsson.android.camera.view.FocusRectanglesManager;
import com.sonyericsson.android.camera.view.FrontCameraLocationIndicatorDialog;
import com.sonyericsson.android.camera.view.Indicators;
import com.sonyericsson.android.camera.view.LayoutAsyncInflateItems;
import com.sonyericsson.android.camera.view.TouchArea;
import com.sonyericsson.android.camera.view.onscreenbutton.CaptureButtonEventHandler;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationFactory;
import com.sonyericsson.cameracommon.capturefeedback.contextview.GLSurfaceContextView;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.FocusRectanglesViewList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.RectangleColor;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
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
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ClassDefinitionChecker;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.viewfinder.AllEventListener;
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
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;
import com.sonymobile.cameracommon.media.utility.AudioResourceChecker;
import com.sonymobile.cameracommon.view.Notification;
import com.sonymobile.cameracommon.view.RecognizedCondition;
import com.sonymobile.cameracommon.view.RecognizedScene;
import com.sonymobile.cameracommon.view.SelfTimerCountDownView;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.List;

/*
 * Failed to analyse overrides
 */
public class CameraWindow
extends ViewFinder
implements LocationAcquiredListener,
BaseActivity.LayoutOrientationChangedListener,
FrontCameraLocationIndicatorDialog.OnCloseListener,
ReviewWindowListener,
ContentResolverUtilListener,
SettingDialogListener,
StorageAutoSwitchController.StorageAutoSwitchListener,
ContentsViewController.OnClickThumbnailProgressListener {
    public static final int GEOTAG_OFF = 0;
    public static final int GEOTAG_ON = 1;
    public static final int GPS_ACQUIRED_GPS = 3;
    public static final int GPS_ACQUIRED_GPS_AND_NETWORK = 5;
    public static final int GPS_ACQUIRED_NETWORK = 4;
    public static final int GPS_ACQUIRING = 2;
    public static final int NO_RESOURCE_ID = -1;
    public static final String TAG = CameraWindow.class.getSimpleName();
    private AutoReviewWindow mAutoReview;
    private CameraWindowListener mCameraWindowListener;
    private boolean mCanSwitchStorage;
    private CaptureFeedback mCaptureFeedback = null;
    private Context mContext;
    private View mCounterView = null;
    private Rect mFocusRect;
    private FocusRectanglesManager mFocusRectangles;
    private FrontCameraLocationIndicatorDialog mFrontCameraLocationDialog;
    private CameraWindowHandler mHandler;
    private Indicators mIndicators;
    private boolean mIsOpenCapturingModeSelector = false;
    private boolean mIsOpenInstantViewer = false;
    private boolean mIsOpenPhotoStackMenu = false;
    private boolean mIsOpenSettingsDialog = false;
    private boolean mIsTouchGuideShown = false;
    private Notification mNotification;
    private int mOrientation = 2;
    private boolean mPrepared = false;
    private int mRecordingOrientation = 0;
    private boolean mReleased = false;
    private Runnable mRunnableSetPadding;
    private Runnable mRunnableUpdateAf;
    private SelfTimer mSelfTimer = SelfTimer.OFF;
    private SelfTimerCountDownView mSelfTimerCountDownView;
    private SelfTimerCountDownView mSelfTimerCountDownViewNext;
    private int mSensorOrientation = 0;
    private SettingController mSettingController;
    private SettingDialogStack mSettingDialogStack;
    private int mSurfaceHeight;
    private SurfaceView mSurfaceView;
    private int mSurfaceWidth;
    private TouchArea mTouchArea;
    private int mType = 0;
    private View mViewFinder;
    private RelativeLayout mViewFinderLayout;
    private View mWindowCover;
    public int mZoomStep = 0;

    public CameraWindow(Context context) {
        super((BaseActivity)context, new DefaultLayoutPatternApplier(), null);
        this.mContext = context;
    }

    private void addSelfTimerCountDownView() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.getBaseLayout().getPreview().getWidth(), this.getBaseLayout().getPreview().getHeight());
        layoutParams.addRule(13);
        this.removeSelfTimerCountDownView();
        this.mSelfTimerCountDownView = this.mSelfTimerCountDownViewNext;
        this.mSelfTimerCountDownView.setLayoutParams(layoutParams);
        this.mSelfTimerCountDownView.setSensorOrientation(this.mOrientation);
        this.mSelfTimerCountDownView.setVisibility(0);
        this.cancelSelfTimerCountDownView();
        this.getBaseLayout().getLazyInflatedUiComponentContainerBack().addView(this.mSelfTimerCountDownView);
        this.getBaseLayout().getLazyInflatedUiComponentContainerBack().bringChildToFront(this.mSelfTimerCountDownView);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void addVideoChapter(byte[] object, int n, PreviewFrameRetriever.PreviewInfo previewInfo) {
        ByteArrayOutputStream byteArrayOutputStream;
        RecordingIndicator recordingIndicator = this.getBaseLayout().getRecordingIndicator();
        if (!(recordingIndicator.getVisibility() == 0 && previewInfo != null && (object = new YuvImage((byte[])object, previewInfo.format, previewInfo.width, previewInfo.height, null)).compressToJpeg(new Rect(0, 0, previewInfo.width, previewInfo.height), 80, byteArrayOutputStream = new ByteArrayOutputStream()))) {
            return;
        }
        recordingIndicator.addChapter(byteArrayOutputStream.toByteArray(), n);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void applyAllParametes(Parameters parameters) {
        this.setAutoReviweDuration(parameters.getAutoReview());
        this.setCapturingMode(parameters.capturingMode);
        this.setFocusMode(parameters.getFocusMode());
        if (parameters.capturingMode.getType() == 2 || this.getCameraActivity().isOneShotVideo()) {
            this.setVideoSize(parameters.getVideoSize());
            this.setPhotoSmileLevel(SmileCapture.OFF);
        } else {
            this.setResolution(parameters.getResolution());
            this.setPhotoSmileLevel(parameters.getSmileCapture());
        }
        this.setSelfTimer(parameters.capturingMode, parameters.getSelfTimer());
        this.setSelfTimer(parameters.capturingMode, parameters.getVideoSelfTimer());
        this.setTouchCapture(parameters.getTouchCapture());
        this.commit();
        this.showDefaultView();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void applyResolution(Parameters parameters) {
        if (parameters.capturingMode.getType() == 2 || this.getCameraActivity().isOneShotVideo()) {
            this.setVideoSize(parameters.getVideoSize());
        } else {
            this.setResolution(parameters.getResolution());
        }
        this.commit();
    }

    private void cancelSelfTimerCountDownView() {
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.cancelSelfTimerCountDownAnimation();
            this.getBaseLayout().getLazyInflatedUiComponentContainerBack().removeView(this.mSelfTimerCountDownView);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void changeOnScreenButtonAppearance(CapturingMode capturingMode, CaptureState captureState) {
        boolean bl = true;
        CameraActivity cameraActivity = this.getCameraActivity();
        Object object = this.getCurrentParameters().getVideoSize();
        if (!ClassDefinitionChecker.isMediaRecorderPauseAndResumeSupported() || VideoDevice.isConstraint((VideoSize)object, cameraActivity)) {
            if (captureState != CaptureState.CAPTURING) {
                bl = false;
            }
            this.changeOnScreenButtonAppearanceNotSupportedPauseRecording(capturingMode, bl);
            return;
        }
        object = this.getBaseLayout().getOnScreenButtonGroup();
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            default: {
                object.setMain(OnScreenButtonGroup.ButtonType.NONE);
                object.setSub(OnScreenButtonGroup.ButtonType.NONE);
                return;
            }
            case 1: {
                if (this.getCameraActivity().isOneShotPhoto()) {
                    this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                    object.setSub(OnScreenButtonGroup.ButtonType.NONE);
                    return;
                }
                if (cameraActivity.isOneShotVideo()) {
                    switch (.$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState[captureState.ordinal()]) {
                        default: {
                            return;
                        }
                        case 1: {
                            object.setMain(OnScreenButtonGroup.ButtonType.PAUSE_RECORDING, this.mRecordingOrientation, false);
                            object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING, this.mRecordingOrientation, false);
                            return;
                        }
                        case 2: {
                            object.setMain(OnScreenButtonGroup.ButtonType.START_RECORDING, this.mSensorOrientation, true);
                            object.setSub(OnScreenButtonGroup.ButtonType.NONE);
                            return;
                        }
                        case 3: 
                    }
                    object.setMain(OnScreenButtonGroup.ButtonType.RESTART_RECORDING, this.mRecordingOrientation, false);
                    object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING_IN_PAUSE, this.mRecordingOrientation, false);
                    return;
                }
                switch (.$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState[captureState.ordinal()]) {
                    default: {
                        return;
                    }
                    case 1: {
                        object.setMain(OnScreenButtonGroup.ButtonType.PAUSE_RECORDING, this.mRecordingOrientation, false);
                        object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING, this.mRecordingOrientation, false);
                        return;
                    }
                    case 2: {
                        this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                        object.setSub(OnScreenButtonGroup.ButtonType.START_RECORDING, this.mSensorOrientation, true);
                        return;
                    }
                    case 3: 
                }
                object.setMain(OnScreenButtonGroup.ButtonType.RESTART_RECORDING, this.mRecordingOrientation, false);
                object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING_IN_PAUSE, this.mRecordingOrientation, false);
                return;
            }
            case 2: 
            case 3: 
            case 4: {
                if (cameraActivity.isOneShotPhoto()) {
                    this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                    object.setSub(OnScreenButtonGroup.ButtonType.NONE);
                    return;
                }
                if (cameraActivity.isOneShotVideo()) {
                    switch (.$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState[captureState.ordinal()]) {
                        default: {
                            return;
                        }
                        case 1: {
                            object.setMain(OnScreenButtonGroup.ButtonType.PAUSE_RECORDING, this.mRecordingOrientation, false);
                            object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING, this.mRecordingOrientation, false);
                            return;
                        }
                        case 2: {
                            object.setMain(OnScreenButtonGroup.ButtonType.START_RECORDING, this.mSensorOrientation, true);
                            object.setSub(OnScreenButtonGroup.ButtonType.NONE, this.mSensorOrientation, true);
                            return;
                        }
                        case 3: 
                    }
                    object.setMain(OnScreenButtonGroup.ButtonType.RESTART_RECORDING, this.mRecordingOrientation, false);
                    object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING_IN_PAUSE, this.mRecordingOrientation, false);
                    return;
                }
                switch (.$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState[captureState.ordinal()]) {
                    default: {
                        return;
                    }
                    case 1: {
                        object.setMain(OnScreenButtonGroup.ButtonType.PAUSE_RECORDING, this.mRecordingOrientation, false);
                        object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING, this.mRecordingOrientation, false);
                        return;
                    }
                    case 2: {
                        this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                        object.setSub(OnScreenButtonGroup.ButtonType.START_RECORDING, this.mSensorOrientation, true);
                        return;
                    }
                    case 3: 
                }
                object.setMain(OnScreenButtonGroup.ButtonType.RESTART_RECORDING, this.mRecordingOrientation, false);
                object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING_IN_PAUSE, this.mRecordingOrientation, false);
                return;
            }
            case 5: 
            case 6: {
                this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                if (cameraActivity.isOneShot()) {
                    object.setSub(OnScreenButtonGroup.ButtonType.NONE);
                    return;
                }
                switch (.$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState[captureState.ordinal()]) {
                    default: {
                        return;
                    }
                    case 1: {
                        object.setMain(OnScreenButtonGroup.ButtonType.CAPTURE);
                        object.setSub(OnScreenButtonGroup.ButtonType.HIDDEN);
                        return;
                    }
                    case 2: 
                }
                object.setSub(OnScreenButtonGroup.ButtonType.PHOTO_TO_VIDEO);
                return;
            }
            case 7: 
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState[captureState.ordinal()]) {
            case 1: {
                object.setMain(OnScreenButtonGroup.ButtonType.PAUSE_RECORDING, this.mRecordingOrientation, false);
                break;
            }
            case 2: {
                object.setMain(OnScreenButtonGroup.ButtonType.START_RECORDING, this.mSensorOrientation, true);
                break;
            }
            case 3: {
                object.setMain(OnScreenButtonGroup.ButtonType.RESTART_RECORDING, this.mRecordingOrientation, false);
            }
        }
        if (cameraActivity.isOneShot()) {
            object.setSub(OnScreenButtonGroup.ButtonType.NONE);
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$view$CameraWindow$CaptureState[captureState.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING, this.mRecordingOrientation, false);
                return;
            }
            case 2: {
                object.setSub(OnScreenButtonGroup.ButtonType.VIDEO_TO_PHOTO, this.mSensorOrientation, true);
                return;
            }
            case 3: 
        }
        object.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING_IN_PAUSE, this.mRecordingOrientation, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void changeOnScreenButtonAppearanceNotSupportedPauseRecording(CapturingMode capturingMode, boolean bl) {
        this.hideRightBottomCaptureButton();
        OnScreenButtonGroup onScreenButtonGroup = this.getBaseLayout().getOnScreenButtonGroup();
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            default: {
                onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.NONE);
                onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.NONE);
                return;
            }
            case 1: {
                if (this.getCameraActivity().isOneShotPhoto()) {
                    this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                    onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.NONE);
                    return;
                }
                if (this.getCameraActivity().isOneShotVideo()) {
                    if (bl) {
                        onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.STOP_RECORDING);
                    } else {
                        onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.START_RECORDING);
                    }
                    onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.NONE);
                    return;
                }
                this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                if (bl) {
                    onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING);
                    return;
                }
                onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.START_RECORDING);
                return;
            }
            case 2: 
            case 3: 
            case 4: {
                if (this.getCameraActivity().isOneShotPhoto()) {
                    this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                    onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.NONE);
                    return;
                }
                if (this.getCameraActivity().isOneShotVideo()) {
                    if (bl) {
                        onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.STOP_RECORDING);
                    } else {
                        onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.START_RECORDING);
                    }
                    onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.NONE);
                    return;
                }
                if (this.getCameraActivity().getParameterManager().getParameters().getVideoSize() == VideoSize.MMS) {
                    this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                    if (bl) {
                        onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.STOP_RECORDING);
                        onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.NONE);
                        return;
                    }
                    onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.START_RECORDING);
                    return;
                }
                this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                if (bl) {
                    onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.STOP_RECORDING);
                    return;
                }
                onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.START_RECORDING);
                return;
            }
            case 5: 
            case 6: {
                this.setMainCaptureButton(this.mSelfTimer, this.mSensorOrientation, true);
                if (this.getCameraActivity().isOneShot()) {
                    onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.NONE);
                    return;
                }
                if (bl) {
                    onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.HIDDEN);
                    return;
                }
                onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.PHOTO_TO_VIDEO);
                return;
            }
            case 7: 
        }
        if (bl) {
            onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.STOP_RECORDING);
        } else {
            onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.START_RECORDING);
        }
        if (this.getCameraActivity().isOneShot()) {
            onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.NONE);
            return;
        }
        if (this.getCameraActivity().getParameterManager().getParameters().getVideoSize() == VideoSize.MMS) {
            if (bl) {
                onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.NONE);
                return;
            }
            onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.VIDEO_TO_PHOTO);
            return;
        }
        if (bl) {
            onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.CAPTURE);
            return;
        }
        onScreenButtonGroup.setSub(OnScreenButtonGroup.ButtonType.VIDEO_TO_PHOTO);
    }

    private void closeSettingsDialog() {
        if (this.mIsOpenSettingsDialog && this.mSettingController != null) {
            this.mSettingController.closeDialogs();
        }
    }

    private void createSelfTimerCountDownView(SelfTimer selfTimer) {
        this.mSelfTimerCountDownViewNext = (SelfTimerCountDownView)this.getActivity().getLayoutInflater().inflate(2130903070, null);
        this.mSelfTimerCountDownViewNext.setSelfTimer(selfTimer);
    }

    private Parameters getCurrentParameters() {
        return this.getCameraActivity().getParameterManager().getParameters();
    }

    private LayoutInflater getLayoutInflater() {
        return this.getCameraActivity().getLayoutInflater();
    }

    private CapturingModeButtonAttributes getModeAttribute(CapturingMode capturingMode) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            default: {
                return new CapturingModeButtonAttributes(capturingMode.name(), capturingMode.getIconId(), capturingMode.getTextId());
            }
            case 5: 
            case 6: 
            case 7: {
                return new CapturingModeButtonAttributes(CapturingMode.NORMAL.name(), CapturingMode.NORMAL.getIconId(), CapturingMode.NORMAL.getTextId());
            }
            case 1: 
            case 4: 
        }
        return new CapturingModeButtonAttributes(CapturingMode.SCENE_RECOGNITION.name(), CapturingMode.SCENE_RECOGNITION.getIconId(), CapturingMode.SCENE_RECOGNITION.getTextId());
    }

    private void hideCameraItems() {
        this.setCaptureButtonVisibility(false);
        this.setLeftIconsVisibility(false);
        this.setNotificationsVisibility(false);
        this.setPhotoStackVisibility(false);
        this.setZoombarVisibility(false);
    }

    private void hideDefaultViewCamera() {
        this.mFocusRectangles.hide();
    }

    private void hideDefaultViewVideo() {
        this.mFocusRectangles.hide();
    }

    private void hideRightBottomCaptureButton() {
        this.getBaseLayout().getCaptureButtonGroup().setVisibility(4);
    }

    private void hideSelfTimerCountDownView() {
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.setVisibility(4);
        }
    }

    private boolean isAllDialogClosed() {
        if (this.isOpenPhotoStackMenu() || this.isCapturingModeSelectorOpened() || this.isOpenSettingsDialog() || this.isTouchGuideShown() || this.getActivity().getStorageController().isStorageDialogOpen()) {
            return false;
        }
        return true;
    }

    private boolean isDisableAutoReview() {
        if (this.getCurrentParameters().getAutoReview() == AutoReview.OFF) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onOrientationChanged(int n) {
        boolean bl = this.getCameraActivity().isRecording();
        if (bl) {
            super.setOrientation(n, this.mRecordingOrientation);
        } else {
            super.setOrientation(n);
        }
        this.mSensorOrientation = n;
        if (bl) {
            this.setCameraUiOrientation(this.mRecordingOrientation);
            return;
        }
        this.setOrientation(this.mSensorOrientation);
    }

    private void preparationForInstantViewer() {
        this.getBaseLayout().getContentsViewController().setClickThumbnailProgressListener((ContentsViewController.OnClickThumbnailProgressListener)this);
        if (this.mAutoReview != null) {
            this.mAutoReview.setUri(null);
        }
    }

    private void removeSelfTimerCountDownView() {
        if (this.mSelfTimerCountDownView != null) {
            this.getBaseLayout().getLazyInflatedUiComponentContainerBack().removeView(this.mSelfTimerCountDownView);
            this.mSelfTimerCountDownView = null;
        }
    }

    private void sendGoogleAnalyticsModeSelectorEvent(CapturingMode capturingMode) {
        LocalGoogleAnalyticsUtil.getInstance().sendEventSettings();
        GoogleAnalyticsUtil.getInstance().onPause(true);
        LocalGoogleAnalyticsUtil.getInstance().sendView(CustomDimension.GALaunchedBy.MODE_SELECTOR, capturingMode, false);
    }

    private void sendGoogleAnalyticsSameActivityEvent(CapturingMode capturingMode) {
        LocalGoogleAnalyticsUtil.getInstance().sendEventSettings();
        GoogleAnalyticsUtil.getInstance().onPause(true);
        LocalGoogleAnalyticsUtil.getInstance().sendView(CustomDimension.GALaunchedBy.SAME_ACTIVITY, capturingMode, false);
    }

    private void setCameraUiOrientation(int n) {
        if (this.mNotification != null) {
            this.mNotification.setSensorOrientation(n);
        }
        if (this.mIndicators != null) {
            this.mIndicators.setSensorOrientation(n);
        }
        if (this.mSettingController != null) {
            this.mSettingController.setSensorOrientation(n);
        }
        if (this.mFrontCameraLocationDialog != null) {
            this.mFrontCameraLocationDialog.setSensorOrientation(this.mSensorOrientation);
        }
        if (this.mAutoReview != null) {
            this.mAutoReview.setOrientation(this.mSensorOrientation);
        }
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.setSensorOrientation(n);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setCaptureButtonVisibility(boolean bl) {
        OnScreenButtonGroup onScreenButtonGroup = this.getBaseLayout().getOnScreenButtonGroup();
        int n = bl ? 0 : 4;
        onScreenButtonGroup.setVisibility(n);
    }

    private void setLeftIconsVisibility(boolean bl) {
        if (bl) {
            this.getBaseLayout().showLeftIconContainer();
            return;
        }
        this.getBaseLayout().hideLeftIconContainer();
    }

    private void setMainCaptureButton(SelfTimer selfTimer, int n, boolean bl) {
        OnScreenButtonGroup onScreenButtonGroup = this.getBaseLayout().getOnScreenButtonGroup();
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[selfTimer.ordinal()]) {
            default: {
                onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.CAPTURE, n, bl);
                return;
            }
            case 1: {
                onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.SELFTIMER_LONG, n, bl);
                return;
            }
            case 2: {
                onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.SELFTIMER_SHORT, n, bl);
                return;
            }
            case 3: 
        }
        onScreenButtonGroup.setMain(OnScreenButtonGroup.ButtonType.SELFTIMER_INSTANT, n, bl);
    }

    private void setNotificationsVisibility(boolean bl) {
        if (this.mNotification != null) {
            this.mNotification.updateLayout();
        }
    }

    private void setPhotoStackVisibility(boolean bl) {
        if (bl && !this.getActivity().isOneShot()) {
            this.getBaseLayout().showContentsViewController();
            return;
        }
        this.getBaseLayout().hideContentsViewController();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setZoomBarType() {
        Zoombar zoombar = this.getBaseLayout().getZoomBar();
        if (zoombar == null) {
            return;
        }
        Parameters parameters = this.getCurrentParameters();
        CameraActivity cameraActivity = this.getCameraActivity();
        boolean bl = parameters.capturingMode == CapturingMode.VIDEO || cameraActivity.isOneShotVideo();
        boolean bl2 = parameters.getSuperResolution() == SuperResolution.ON;
        if (bl2 && !bl) {
            zoombar.updateZoombarType(Zoombar.Type.PARTIAL_SUPER_RESOLUTION);
            return;
        }
        zoombar.updateZoombarType(Zoombar.Type.NORMAL);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setZoombarVisibility(boolean bl) {
        Zoombar zoombar = this.getBaseLayout().getZoomBar();
        if (zoombar != null) {
            int n = bl ? 0 : 4;
            zoombar.setVisibility(n);
        }
    }

    private void setupAutoReview() {
        if (this.isInflated()) {
            this.mAutoReview = (AutoReviewWindow)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.AUTO_REVIEW).get(0);
            this.mAutoReview.setup(this.getActivity().getMessagePopup(), this.getActivity().getCommonSettings());
        }
        if (this.mAutoReview == null) {
            this.mAutoReview = (AutoReviewWindow)LayoutInflater.from(this.getCameraActivity()).inflate(2130903041, null);
        }
        this.getBaseLayout().addLazyInflatedUiComponentFullScreen(this.mAutoReview);
        ((FrameLayout.LayoutParams)this.mAutoReview.getLayoutParams()).gravity = 3;
    }

    private void setupFrontCameraLocationDialog() {
        this.mFrontCameraLocationDialog = new FrontCameraLocationIndicatorDialog((FrameLayout)this.getActivity().findViewById(2131689621), (FrontCameraLocationIndicatorDialog.OnCloseListener)this);
    }

    private void setupNotifications(CapturingMode capturingMode, Geotag object, SelfTimer selfTimer, VideoSelfTimer videoSelfTimer, SmileCapture smileCapture) {
        object = this.getLayoutInflater();
        if (this.isInflated()) {
            this.mNotification = (Notification)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.NOTIFICATION).get(0);
        }
        if (this.mNotification == null) {
            this.mNotification = (Notification)object.inflate(2130903063, null);
        }
        this.getBaseLayout().getModeIndicatorContainer().addView(this.mNotification);
        if (this.isInflated()) {
            this.mIndicators = (Indicators)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.CAMERA_INDICATORS).get(0);
        }
        if (this.mIndicators == null) {
            this.mIndicators = (Indicators)object.inflate(2130903045, null);
        }
        this.getBaseLayout().getCaptureMethodIndicatorContainer().addView(this.mIndicators);
        this.setSelfTimer(capturingMode, selfTimer);
        this.setSelfTimer(capturingMode, videoSelfTimer);
        this.updatePhotoSmileCaptureIndicator(smileCapture);
    }

    private void setupOnScreenButton(CapturingMode object) {
        this.changeOnScreenButtonAppearance((CapturingMode)object, CaptureState.STANDBY);
        object = new CaptureButtonEventHandler(0, this.mSettingController, this.getCameraActivity().getControllerManager());
        CaptureButtonEventHandler captureButtonEventHandler = new CaptureButtonEventHandler(1, this.mSettingController, this.getCameraActivity().getControllerManager());
        PhotoVideoSwitchEventHandler photoVideoSwitchEventHandler = new PhotoVideoSwitchEventHandler();
        CaptureButtonEventHandler captureButtonEventHandler2 = new CaptureButtonEventHandler(2, this.mSettingController, this.getCameraActivity().getControllerManager());
        OnScreenButtonGroup onScreenButtonGroup = this.getBaseLayout().getOnScreenButtonGroup();
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.CAPTURE, (OnScreenButtonListener)object);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.START_RECORDING, captureButtonEventHandler);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.STOP_RECORDING, captureButtonEventHandler);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.STOP_RECORDING_IN_PAUSE, captureButtonEventHandler);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.PHOTO_TO_VIDEO, photoVideoSwitchEventHandler);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.VIDEO_TO_PHOTO, photoVideoSwitchEventHandler);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.PAUSE_RECORDING, captureButtonEventHandler2);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.RESTART_RECORDING, captureButtonEventHandler2);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.SELFTIMER_LONG, (OnScreenButtonListener)object);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.SELFTIMER_SHORT, (OnScreenButtonListener)object);
        onScreenButtonGroup.setListener(OnScreenButtonGroup.ButtonType.SELFTIMER_INSTANT, (OnScreenButtonListener)object);
        if (ClassDefinitionChecker.isMediaRecorderPauseAndResumeSupported()) {
            this.getBaseLayout().getCaptureButtonIcon().setScaleType(ImageView.ScaleType.CENTER);
            this.getBaseLayout().getCaptureButtonIcon().set(OnScreenButtonGroup.ButtonType.CAPTURE_IN_SEQUENTIAL_RECORDING.subButtonResource);
            this.getBaseLayout().getCaptureButtonIcon().setListener((OnScreenButtonListener)object);
            this.getBaseLayout().getCaptureButtonIcon().setVisibility(0);
        }
    }

    private void setupSettingController() {
        ListView listView = new ListView(this.mContext);
        this.mSettingDialogStack = new SettingDialogStack(this.getCameraActivity(), (SettingDialogListener)this, (ViewGroup)this.getActivity().findViewById(2131689635), (ViewGroup)this.getActivity().findViewById(2131689630), listView);
        this.mSettingController = new SettingController(this.getCameraActivity(), this.mSettingDialogStack);
    }

    private void setupTouchArea() {
        ViewStub viewStub = (ViewStub)this.getActivity().findViewById(2131689528);
        if (viewStub == null) {
            return;
        }
        this.mTouchArea = (TouchArea)viewStub.inflate();
    }

    private void setupViewFinderIcons(Parameters parameters) {
        this.joinInflateTask();
        if (this.isInflated()) {
            FocusRectanglesViewList focusRectanglesViewList = new FocusRectanglesViewList();
            focusRectanglesViewList.faceViewList = this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FACE).toArray(new View[0]);
            focusRectanglesViewList.trackedObjectView = (TaggedRectangle)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_OBJECT_TRACKING).get(0);
            focusRectanglesViewList.singleAfView = (RelativeLayout)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_SINGLE).get(0);
            focusRectanglesViewList.touchAfView = (RelativeLayout)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_TOUCH).get(0);
            this.mFocusRectangles.setPreInfalteMap(focusRectanglesViewList);
            this.setPreInflatedHeadUpDisplay((View)((ViewGroup)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.HEAD_UP_DISPLAY).get(0)));
        }
        this.requestSetupHeadUpDisplay();
        this.setupViewFinderLayout();
        this.getBaseLayout().getPreviewOverlayContainer().addView(this.mViewFinderLayout);
        this.setupSettingController();
        this.setupOnScreenButton(parameters.capturingMode);
        if (this.isDisplayFrontCameraLocationIndication()) {
            this.setupFrontCameraLocationDialog();
        }
        this.setupNotifications(parameters.capturingMode, parameters.getGeotag(), parameters.getSelfTimer(), parameters.getVideoSelfTimer(), parameters.getSmileCapture());
        this.setupZoomBar();
        this.setupAutoReview();
        this.setOrientation(this.mOrientation);
        this.clearPreInflatedViews();
    }

    private void setupViewFinderLayout() {
        if (this.isInflated()) {
            this.mViewFinderLayout = (RelativeLayout)this.getPreInflatedView((InflateItem)LayoutAsyncInflateItems.CameraInflateItem.SPECIFIC_VIEWFIDER_LAYOUT).get(0);
        }
        if (this.mViewFinderLayout == null) {
            this.mViewFinderLayout = (RelativeLayout)this.getLayoutInflater().inflate(2130903082, null);
        }
        GLSurfaceContextView gLSurfaceContextView = new GLSurfaceContextView(this.getActivity(), null);
        this.mViewFinderLayout.addView(gLSurfaceContextView);
        gLSurfaceContextView.getLayoutParams().width = -1;
        gLSurfaceContextView.getLayoutParams().height = -1;
        gLSurfaceContextView.setVisibility(4);
        this.mCaptureFeedback = gLSurfaceContextView;
    }

    private void setupZoomBar() {
        this.getBaseLayout().getZoomBar().setBackgroundResource(2130837757);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void showDefaultView(boolean bl) {
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.PREVIEW);
        if (!this.prepared()) {
            return;
        }
        this.changeOnScreenButtonAppearance(this.getCurrentParameters().capturingMode, CaptureState.STANDBY);
        if (bl) {
            this.mFocusRectangles.hide();
        } else {
            this.mFocusRectangles.startViewFinder();
        }
        this.showFrontCameraLocationIndicator();
        this.setLeftIconsVisibility(true);
        this.requestToDimSystemUi();
        if (this.mSettingController != null) {
            this.mSettingController.showShortcutTray();
            if (this.getCameraActivity().getExtraOperation() == LaunchConditions.ExtraOperation.NONE) {
                if (this.getCameraActivity().isMenuAvailable() && this.isDisableAutoReview()) {
                    this.mSettingController.reopenTemporaryClosedDialog();
                } else {
                    this.mSettingController.forgetTemporaryClosedDialog();
                }
            }
        }
        if (this.mIndicators == null) return;
        this.mIndicators.showSelfTimerIndicator();
    }

    private void showFrontCameraLocationIndicator() {
        if (this.isDisplayFrontCameraLocationIndication()) {
            if (this.getCameraActivity().getConfigurations().isNeedToShowFrontCameraLocationHelp() && this.getCurrentParameters().capturingMode.isFront()) {
                this.visibleFrontCameraLocationDialog(true);
            }
        } else {
            return;
        }
        this.visibleFrontCameraLocationDialog(false);
    }

    private void switchPhotoVideo() {
        if (this.isOpenCapturingModeSelector()) {
            return;
        }
        this.mSettingController.closeDialogsWithAnimation();
        if (this.getCurrentParameters().capturingMode == CapturingMode.VIDEO) {
            this.sendGoogleAnalyticsSameActivityEvent(CapturingMode.NORMAL);
            this.getCameraActivity().changeCapturingMode(CapturingMode.NORMAL);
            return;
        }
        this.sendGoogleAnalyticsSameActivityEvent(CapturingMode.VIDEO);
        this.getCameraActivity().changeCapturingMode(CapturingMode.VIDEO);
    }

    private void updateCapturingModeButton(CapturingMode capturingMode) {
        CapturingMode capturingMode2 = capturingMode;
        if (capturingMode.isFront()) {
            capturingMode2 = this.getCameraActivity().getPreviousCapturingModeNotFront();
        }
        this.getBaseLayout().getCapturingModeButton().setCurrentCapturingMode(this.getModeAttribute(capturingMode2));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updatePhotoSmileCaptureIndicator(SmileCapture smileCapture) {
        if (this.getCameraActivity().isOneShotVideo() || this.mIndicators == null) {
            return;
        }
        this.mIndicators.onPhotoSmileCaptureSettingsChanged(smileCapture.isSmileCaptureOn(), smileCapture.getNotificationIconId());
    }

    private void updateVideoSmileCaptureIndicator(VideoSmileCapture videoSmileCapture) {
        if (this.getCameraActivity().isOneShotVideo()) {
            videoSmileCapture = VideoSmileCapture.OFF;
        }
        if (this.mIndicators != null) {
            this.mIndicators.onVideoSmileCaptureSettingsChanged(videoSmileCapture.isSmileCaptureOn(), videoSmileCapture.getNotificationIconId());
        }
    }

    private void visibleFrontCameraLocationDialog(boolean bl) {
        if (bl) {
            ControllerManager.suspend();
            this.mFrontCameraLocationDialog.show();
            return;
        }
        this.mFrontCameraLocationDialog.close();
    }

    public void addCountUpView(int n) {
        if (this.mCounterView != null) {
            this.getBaseLayout().getContentsViewController().removeContentOverlayView(n, this.mCounterView);
            this.mCounterView = null;
        }
        this.mCounterView = CountUpView.createCountUpView(this.getCameraActivity());
        if (this.mCounterView != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.mCounterView.setLayoutParams(layoutParams);
            this.getBaseLayout().getContentsViewController().addContentOverlayView(n, this.mCounterView, layoutParams);
        }
    }

    public boolean canSwitchStorage() {
        return this.mCanSwitchStorage;
    }

    public void cancelSelftimer(boolean bl) {
        this.cancelSelfTimerCountDownView();
        this.hideSelfTimerCountDownView();
        if (!bl) {
            this.hideOnScreenButton();
        }
    }

    public void changeSurfaceSize(int n, int n2) {
        boolean bl;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)this.mSurfaceView.getLayoutParams();
        boolean bl2 = bl = false;
        if (layoutParams.height == n2) {
            bl2 = bl;
            if (layoutParams.width == n) {
                bl2 = bl;
                if (this.getCameraActivity().getCameraDevice().needStartPreview()) {
                    bl2 = true;
                }
            }
        }
        layoutParams.height = n2;
        layoutParams.width = n;
        if (this.mIsOpenSettingsDialog) {
            this.mSurfaceView.setLayoutParams(layoutParams);
            this.onSurfaceSizeChanged(n, n2);
            if (bl2) {
                this.mHandler.postDelayed(new Runnable(){

                    @Override
                    public void run() {
                        Object object = CameraWindow.this.getCameraActivity().getCameraDevice().getSurfaceHolder();
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)CameraWindow.this.mSurfaceView.getLayoutParams();
                        object = new CameraSurfaceHolder((SurfaceHolder)object, layoutParams.width, layoutParams.height);
                        Executor.sendEvent(ControllerEvent.EV_SURFACE_CHANGED, 0, object);
                    }
                }, 100);
            }
            return;
        }
        this.mSurfaceView.setLayoutParams(layoutParams);
        this.onSurfaceSizeChanged(n, n2);
    }

    public void clearFaceRectangles() {
        this.mFocusRectangles.clearFaceRectangle();
    }

    public void clearObjectRectangles() {
        this.mFocusRectangles.claerObjectRectangle();
    }

    public void clearTouchRectangle() {
        this.mFocusRectangles.clearTouchRectangle();
    }

    public void closeCurrentDialog() {
        if (this.mSettingController != null) {
            this.mSettingDialogStack.closeCurrentDialog();
        }
    }

    public void closeDialogTemporary() {
        if (this.mSettingController != null) {
            this.mSettingController.closeDialogTemporary();
        }
    }

    public void closeReviewWindow() {
        if (this.mAutoReview != null) {
            this.mAutoReview.hide();
        }
    }

    public void commit() {
        if (this.mSettingController != null) {
            this.mSettingController.updateShortcutTray();
        }
        this.setCapturingMode(this.getCurrentParameters().capturingMode);
    }

    public void countUp(int n) {
        if (this.mCounterView != null) {
            CountUpView.setCount(this.mCounterView, n);
        }
    }

    public void disableClickOnThumbnail() {
        this.getBaseLayout().getContentsViewController().disableClick();
    }

    public void disableTouchDetectedFace() {
        this.mFocusRectangles.disableTouchDetectedFace();
    }

    public void disbleTouchEvent() {
        this.getBaseLayout().getAllEventListener().disableTouchEvent();
    }

    public void enableClickOnThumbnail() {
        this.getBaseLayout().getContentsViewController().enableClick();
    }

    public void enableTouchEvent() {
        this.getBaseLayout().getAllEventListener().enableTouchEvent();
    }

    public void fadeoutCounter() {
        this.mCounterView.setVisibility(4);
    }

    public CameraActivity getCameraActivity() {
        return (CameraActivity)this.mContext;
    }

    public FocusMode getFocusMode() {
        FocusMode focusMode = null;
        if (this.mFocusRectangles != null) {
            focusMode = this.mFocusRectangles.getFocusMode();
        }
        FocusMode focusMode2 = focusMode;
        if (focusMode == null) {
            focusMode2 = this.getCurrentParameters().getFocusMode();
        }
        return focusMode2;
    }

    GeotagIndicator getGeoTagIndicator() {
        return this.getBaseLayout().getGeoTagIndicator();
    }

    public LocationAcquiredListener getLocationListener() {
        return this;
    }

    public final int getOrientation() {
        return this.mOrientation;
    }

    public Rect getPosition(int n, int n2) {
        Rect rect = this.mTouchArea.getTouchAreaRect();
        return CoordinateUtil.convertPositionToAligned(n, n2, this.getSurfaceRect(), rect, this.mFocusRect.width(), this.mFocusRect.height());
    }

    /*
     * Enabled aggressive block sorting
     */
    public int getRequestId(boolean bl) {
        this.preparationForInstantViewer();
        int n = bl ? this.getBaseLayout().getContentsViewController().createContentFrame() : this.getBaseLayout().getContentsViewController().createClearContentFrame();
        this.onShutterDone(true);
        return n;
    }

    public Rect getSurfaceRect() {
        Rect rect = new Rect();
        if (this.mSurfaceView.getGlobalVisibleRect(rect)) {
            rect.right = rect.left + this.mSurfaceWidth;
            rect.bottom = rect.top + this.mSurfaceHeight;
            return rect;
        }
        return new Rect(this.mSurfaceView.getLeft(), this.mSurfaceView.getTop(), this.mSurfaceView.getLeft() + this.mSurfaceWidth, this.mSurfaceView.getTop() + this.mSurfaceHeight);
    }

    public SurfaceView getSurfaceView() {
        return this.mSurfaceView;
    }

    public Indicator getThermalIndicator() {
        return this.getBaseLayout().getThermalIndicator();
    }

    public NamedFace getTopPriorityFace() {
        return this.mFocusRectangles.getTopPriorityFace();
    }

    public View getTouchArea() {
        return this.getActivity().findViewById(2131689529);
    }

    public void hideBalloonTips() {
        if (this.getBaseLayout().getBalloonTips() != null) {
            this.getBaseLayout().getBalloonTips().hide();
        }
    }

    public void hideBlankScreen() {
        if (this.mWindowCover != null && this.mWindowCover.getVisibility() == 0) {
            this.mWindowCover.setVisibility(4);
        }
    }

    public void hideDefaultView(int n) {
        if (n == 1) {
            this.hideDefaultViewCamera();
            return;
        }
        this.hideDefaultViewVideo();
    }

    public void hideFaceRectangles() {
        this.mFocusRectangles.hideFaceRectangle();
    }

    public void hideObjectRectangles() {
        this.mFocusRectangles.hideObjectRectangle();
    }

    public void hideOnScreenButton() {
        this.getBaseLayout().getOnScreenButtonGroup().clearTouched();
    }

    public void hidePauseView() {
        this.hideBalloonTips();
        this.pauseSettings();
        super.pause();
        this.releaseCapturingModeSelector();
        this.mSurfaceView.setVisibility(8);
        if (this.mIndicators != null) {
            this.mIndicators.setPhotoSmileCaptureVisible(false);
            this.mIndicators.setVideoSmileCaptureVisible(false);
        }
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.onPause();
        }
        this.closeReviewWindow();
        this.clearPreInflatedViews();
    }

    public void hideRecordingView() {
        this.changeOnScreenButtonAppearance(this.getCurrentParameters().capturingMode, CaptureState.STANDBY);
        this.mFocusRectangles.setRectangleColor(RectangleColor.NORMAL, null);
        this.setOrientation(this.mSensorOrientation);
    }

    public void hideShutterAnimeBack() {
    }

    public void hideShutterAnimeBackForce() {
    }

    public void hideSurfaceView() {
        if (this.prepared()) {
            this.mSurfaceView.setVisibility(8);
        }
    }

    public void hideThumbnail() {
        this.getBaseLayout().getContentsViewController().hideThumbnail();
    }

    public void hideThumbnailWhileRecording() {
        this.getBaseLayout().getContentsViewController().hide();
    }

    public void hideTouchRectangle() {
        this.mFocusRectangles.hideTouchRectangle();
    }

    public void hideZoombar() {
        if (!this.prepared()) {
            return;
        }
        this.setZoombarVisibility(false);
    }

    public void init() {
        Rect rect = LayoutDependencyResolver.getViewFinderSize(this.getCameraActivity());
        this.mHandler = new CameraWindowHandler();
        this.mCameraWindowListener = new CameraWindowListenerLaunch(this);
        this.mSurfaceView = (SurfaceView)this.getLayoutInflater().inflate(2130903084, null);
        this.mSurfaceView.setVisibility(8);
        this.mSurfaceView.requestLayout();
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        this.mFocusRectangles = new FocusRectanglesManager();
        this.setupTouchArea();
        this.setup((View)this.mSurfaceView);
        FrameLayout frameLayout = (FrameLayout)this.getActivity().findViewById(2131689580);
        this.mFocusRectangles.setupRectangles(this.getCameraActivity(), frameLayout, rect);
        this.mViewFinder = frameLayout;
        MeasurePerformance.measureResource("End inflate camera window");
    }

    public void initZoom() {
        Zoombar zoombar = this.getBaseLayout().getZoomBar();
        if (zoombar != null) {
            zoombar.initZoom();
        }
        this.mZoomStep = 0;
    }

    public boolean isDisplayFrontCameraLocationIndication() {
        try {
            boolean bl = this.getCameraActivity().getResources().getBoolean(2131558403);
            return bl;
        }
        catch (Resources.NotFoundException var2_2) {
            return false;
        }
    }

    public boolean isOpenCapturingModeSelector() {
        return this.mIsOpenCapturingModeSelector;
    }

    public boolean isOpenPhotoStackMenu() {
        return this.mIsOpenPhotoStackMenu;
    }

    public boolean isOpenSettingsDialog() {
        return this.mIsOpenSettingsDialog;
    }

    public boolean isTouchGuideShown() {
        return this.mIsTouchGuideShown;
    }

    public void onAcquired(boolean bl, boolean bl2) {
        this.mCameraWindowListener.onAcquired(bl, bl2);
    }

    public void onClickThumbnailProgress() {
        if (this.mAutoReview == null) {
            return;
        }
        if (this.mAutoReview.getUri() == null) {
            Executor.sendEmptyEvent(ControllerEvent.EV_CLICK_CONTENT_PROGRESS);
            return;
        }
        Executor.sendEvent(ControllerEvent.EV_CLICK_CONTENT_PROGRESS, 0, this.mAutoReview.getUri());
    }

    public void onClose(FrontCameraLocationIndicatorDialog frontCameraLocationIndicatorDialog) {
        this.getCameraActivity().getConfigurations().countUpFrontCameraLocationHelpShownTimes();
        ControllerManager.resume();
    }

    protected void onCloseCapturingModeSelector() {
        this.mIsOpenCapturingModeSelector = false;
        if (this.isAllDialogClosed()) {
            ControllerManager.resume();
        }
        this.requestToDimSystemUi();
    }

    public void onClosePhotoStackMenu() {
        this.mIsOpenPhotoStackMenu = false;
        if (this.isAllDialogClosed()) {
            ControllerManager.resume();
        }
        this.requestToDimSystemUi();
    }

    public void onCloseSettingDialog(SettingDialogStack settingDialogStack, boolean bl) {
        if (bl) {
            this.mSettingDialogStack.clearShortcutSelected();
            this.mIsOpenSettingsDialog = false;
            if (this.isAllDialogClosed()) {
                ControllerManager.resume();
            }
            this.requestToDimSystemUi();
            this.mSettingController.updateShortcutTray();
        }
    }

    public void onCloseStorageDialog() {
        if (this.isAllDialogClosed()) {
            ControllerManager.resume();
        }
        this.requestToDimSystemUi();
    }

    public void onDeleted(boolean bl, Uri uri) {
        this.getBaseLayout().reloadContentsViewController(this.getThumbnailClickListener());
    }

    public void onDisabled() {
        this.getCurrentParameters().set(Geotag.OFF);
        super.onDisabled();
        if (this.mIsOpenSettingsDialog) {
            this.updateSettingDialog();
        }
    }

    public void onFinishInflate() {
        this.mPrepared = false;
    }

    public void onHidePhotoStackDialog() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation layoutOrientation) {
        int n = layoutOrientation == BaseActivity.LayoutOrientation.Portrait ? 1 : 2;
        this.onOrientationChanged(n);
    }

    public void onLost() {
        this.mCameraWindowListener.onLost();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onModeFinish() {
        this.closeCapturingModeSelector();
        if (!this.getActivity().isInLockTaskMode()) {
            this.hideSurfaceView();
            this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.CLEAR);
            if (this.mSettingController != null) {
                this.mSettingController.hideShortcutTray();
                this.mSettingController.closeDialogs();
            }
        } else {
            this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.PREVIEW);
        }
        this.getActivity().terminateApplication();
    }

    public void onModeSelect(String object) {
        CapturingMode capturingMode;
        object = capturingMode = CapturingMode.convertFrom((String)object, CapturingMode.UNKNOWN);
        if (capturingMode == CapturingMode.NORMAL) {
            object = this.getCameraActivity().getPreviousManualMode();
        }
        if (this.getCameraActivity().isNewMode((CapturingMode)object)) {
            this.sendGoogleAnalyticsModeSelectorEvent((CapturingMode)object);
            this.getCameraActivity().changeCapturingMode((CapturingMode)object);
        }
        this.closeCapturingModeSelector();
        AudioResourceChecker.checkAudioResourceAndShowErrorDialogIfNecessary((CameraActivity)this.mContext);
    }

    public void onNotifyThermalNormal() {
        if (this.mCameraWindowListener != null) {
            this.mCameraWindowListener.onNotifyThermalNormal();
        }
    }

    public void onNotifyThermalWarning() {
        if (this.mCameraWindowListener != null) {
            this.mCameraWindowListener.onNotifyThermalWarning();
        }
    }

    protected void onOpenCapturingModeSelector() {
        this.closeSettingsDialog();
        this.mIsOpenCapturingModeSelector = true;
        ControllerManager.suspend();
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.MODE_SELECTOR);
        this.hideBalloonTips();
        this.setLeftIconsVisibility(false);
        this.setZoombarVisibility(false);
        this.requestToRecoverSystemUi();
    }

    public void onOpenSettingDialog(SettingDialogStack settingDialogStack, boolean bl, boolean bl2) {
        if (!bl) {
            this.mIsOpenSettingsDialog = true;
            this.closeCapturingModeSelector();
            this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.SETTING);
            this.hideBalloonTips();
            ControllerManager.suspend();
            this.setNotificationsVisibility(false);
            this.setZoombarVisibility(false);
            this.requestToRecoverSystemUi();
        }
    }

    public void onOpenStorageDialog() {
        this.closeSettingsDialog();
        this.closeCapturingModeSelector();
        if (this.getActivity().getStorageManager().isReady()) {
            ControllerManager.suspend();
        }
    }

    public void onReviewWindowClose() {
        this.mIsOpenInstantViewer = false;
        Executor.sendEmptyEvent(ControllerEvent.EV_CONTROLLER_RESUME);
        this.requestToDimSystemUi();
    }

    public void onReviewWindowOpen() {
        this.hideCameraItems();
        this.requestToRecoverSystemUi();
        Executor.sendEvent(ControllerEvent.EV_CONTROLLER_PAUSE, 0, Boolean.TRUE);
    }

    public void onShowPhotoStackDialog() {
    }

    public void onStorageAutoSwitch(String string) {
        Executor.sendEvent(ControllerEvent.EV_STORAGE_SHOULD_CHANGE, ControllerEventSource.AUTO_STATE_TRANSITION);
    }

    public void onStoreComplete(final StoreDataResult storeDataResult) {
        this.mHandler.postDelayed(new Runnable(){

            @Override
            public void run() {
                CameraWindow.this.getBaseLayout().getContentsViewController().addContent(storeDataResult.savingRequest.getRequestId(), storeDataResult.uri);
            }
        }, 0);
    }

    public void onSurfaceSizeChanged(int n, int n2) {
        this.mViewFinder.setVisibility(4);
        this.mViewFinder.requestLayout();
        this.mSurfaceWidth = n;
        this.mSurfaceHeight = n2;
        this.mTouchArea.setSurfaceArea(this.getSurfaceRect());
        this.mFocusRectangles.onSurfaceSizeChanged(n, n2, this.mOrientation, false);
        PositionConverter.getInstance().setSurfaceSize(this.mSurfaceWidth, this.mSurfaceHeight);
        this.mRunnableUpdateAf = new Runnable(){

            @Override
            public void run() {
                CameraWindow.this.mFocusRectangles.setAfRectanglePosition(CameraWindow.this.mSurfaceWidth, CameraWindow.this.mSurfaceHeight, CameraWindow.this.mOrientation);
                CameraWindow.this.mViewFinder.setVisibility(0);
                CameraWindow.this.mViewFinder.requestLayout();
            }
        };
        this.mRunnableSetPadding = new Runnable(){

            @Override
            public void run() {
                CameraWindow.access$1000((CameraWindow)CameraWindow.this).getLayoutParams().width = CameraWindow.this.mSurfaceView.getWidth();
                CameraWindow.access$1000((CameraWindow)CameraWindow.this).getLayoutParams().height = CameraWindow.this.mSurfaceView.getHeight();
                CameraWindow.this.mViewFinder.requestLayout();
                CameraWindow.this.mHandler.post(CameraWindow.this.mRunnableUpdateAf);
            }
        };
        this.mHandler.post(this.mRunnableSetPadding);
    }

    public void openInstantViewer(byte[] arrby, String string, SavingRequest savingRequest) {
        this.mIsOpenInstantViewer = true;
        if (!this.mAutoReview.open(this.getActivity(), arrby, string, savingRequest.common.mimeType, new Rect(0, 0, savingRequest.common.width, savingRequest.common.height), 0, savingRequest.common.orientation, this.getCurrentParameters().capturingMode.isFront(), (ReviewWindowListener)this, (ContentResolverUtilListener)this)) {
            this.closeReviewWindow();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void openReviewWindow(Uri uri, SavingRequest savingRequest) {
        if (savingRequest.common.mimeType.equals("image/jpeg") && this.getCurrentParameters().getAutoReview() == AutoReview.EDIT || savingRequest.common.mimeType.equals("video/mp4") && this.getCurrentParameters().getVideoAutoReview() == VideoAutoReview.EDIT || savingRequest.common.mimeType.equals("video/3gpp") && this.getCurrentParameters().getVideoAutoReview() == VideoAutoReview.EDIT) {
            AutoReviewWindow.launchEditor(this.getCameraActivity(), uri, savingRequest.common.mimeType);
            return;
        } else {
            if (this.mAutoReview.open(this.getActivity(), uri, savingRequest.common.mimeType, new Rect(0, 0, savingRequest.common.width, savingRequest.common.height), 0, savingRequest.common.orientation, this.getCurrentParameters().capturingMode.isFront(), (ReviewWindowListener)this, (ContentResolverUtilListener)this)) return;
            {
                this.closeReviewWindow();
                return;
            }
        }
    }

    public boolean openSettingsMenu() {
        this.mHandler.sendEmptyMessage(1);
        return true;
    }

    public void pauseSettings() {
        if (this.mSettingController != null) {
            this.mSettingController.closeDialogs();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void prepare(Parameters parameters) {
        this.mType = parameters.capturingMode.getType();
        this.setupViewFinderIcons(parameters);
        this.setCapturingMode(parameters.capturingMode);
        this.getBaseLayout().reloadContentsViewController(this.getThumbnailClickListener());
        this.getCameraActivity().addOrienationListener((BaseActivity.LayoutOrientationChangedListener)this);
        CameraWindowListener.Location location = this.mCameraWindowListener.getLocation();
        boolean bl = this.mCameraWindowListener.hasWithholdThermalWarning();
        this.mCameraWindowListener = new CameraWindowListenerPrepared(this);
        if (location != null) {
            if (location.mIsAcquired) {
                this.onAcquired(location.mIsGps, location.mIsNetwork);
            } else {
                this.onLost();
            }
        }
        if (bl) {
            this.onNotifyThermalWarning();
        } else {
            this.onNotifyThermalNormal();
        }
        this.applyAllParametes(parameters);
        this.mPrepared = true;
        this.onLayoutOrientationChanged(this.getActivity().getLastDetectedOrientation());
    }

    public void prepareRecording(int n, boolean bl, boolean bl2) {
        if (!bl) {
            this.getBaseLayout().getRecordingIndicator().setSequenceMode(true);
        }
        this.getBaseLayout().getRecordingIndicator().setConstraint(bl);
        this.getBaseLayout().getRecordingIndicator().prepareBeforeRecording(n, bl2);
    }

    public boolean prepared() {
        return this.mPrepared;
    }

    public void release() {
        View view = this.getActivity().findViewById(2131689580);
        if (view != null) {
            ((ViewGroup)view).removeAllViews();
        }
        this.mWindowCover = null;
        if (this.mHandler != null) {
            this.mHandler.removeCallbacks(this.mRunnableSetPadding);
            this.mHandler.removeCallbacks(this.mRunnableUpdateAf);
        }
        this.mFocusRectangles.release();
        this.mSurfaceView = null;
        this.mReleased = true;
        this.mCaptureFeedback.release();
        this.mCaptureFeedback = null;
    }

    public boolean released() {
        return this.mReleased;
    }

    public void removeEarlyThumbnailView() {
        this.getBaseLayout().getContentsViewController().removeEarlyThumbnailView();
    }

    public void requestInflate() {
        if (this.mViewFinderLayout == null) {
            this.startInflateTask(this.getLayoutInflater(), LayoutAsyncInflateItems.getItems());
        }
    }

    public void requestShowIconsOnReviewWindow(StoreDataResult storeDataResult) {
        if (storeDataResult != null && this.mAutoReview != null && this.mAutoReview.getUri() == null) {
            this.mAutoReview.setUri(storeDataResult.uri);
            if (this.mIsOpenInstantViewer) {
                this.mAutoReview.showRightIcons(true);
            }
        }
    }

    public void requestToAddVideoChapter(int n) {
        CameraDevice cameraDevice = this.getCameraActivity().getCameraDevice();
        if (cameraDevice != null) {
            cameraDevice.getPreviewFrameRetriever().request(new VideoChapterInserter(n));
        }
    }

    public void requestToRestoreNavigationBar() {
        this.requestToRestoreSystemUi();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void resume(Parameters parameters, boolean bl) {
        this.hideBlankScreen();
        if (this.prepared()) {
            this.applyAllParametes(parameters);
        } else {
            this.applyResolution(parameters);
            this.showSurfaceView();
        }
        if (bl) {
            this.showSurfaceView();
        }
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.onResume();
        }
        super.resume();
        this.mIsOpenCapturingModeSelector = false;
    }

    public void setAutoReviweDuration(AutoReview autoReview) {
        if (this.mAutoReview != null) {
            this.mAutoReview.setDuration(autoReview.getDuration());
        }
    }

    public void setCanSwitchStorage(boolean bl) {
        this.mCanSwitchStorage = bl;
    }

    public void setCapturingMode(CapturingMode capturingMode) {
        if (this.mType == 0) {
            return;
        }
        this.mType = capturingMode.getType();
        if (this.mNotification != null) {
            this.mNotification.updateLayout();
            this.mNotification.onModeChanged(this.mType, this.getActivity().isOneShot());
        }
        this.mFocusRectangles.setCapturingMode(capturingMode);
        this.hideOnScreenButton();
        if (this.getCurrentLayoutPattern() != DefaultLayoutPattern.SELFTIMER) {
            this.changeOnScreenButtonAppearance(capturingMode, CaptureState.STANDBY);
        }
        this.updateCapturingModeButton(capturingMode);
    }

    public void setChangeFocusFaceListener(DetectedFaceRectangles.ChangeFocusFaceListener changeFocusFaceListener) {
        this.mFocusRectangles.setChangeFocusFaceListener(changeFocusFaceListener);
    }

    public void setEarlyThumbnailView(View view) {
        this.getBaseLayout().getContentsViewController().setEarlyThumbnailView(view);
    }

    public void setEmptyShortcut() {
        this.mSettingController.clearShortcutTray();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setFocusMode(FocusMode focusMode) {
        if (this.mFocusRectangles == null) {
            CameraLogger.e(TAG, "setFocusMode fail. mFocusRectangles is null.");
            return;
        }
        FocusMode focusMode2 = focusMode;
        if (focusMode == FocusMode.MULTI) {
            focusMode2 = this.mZoomStep == 0 ? FocusMode.MULTI : FocusMode.SINGLE;
        }
        this.mFocusRectangles.setFocusMode(focusMode2);
    }

    public void setGeotag(boolean bl) {
        if (this.getGeoTagIndicator() != null) {
            this.getGeoTagIndicator().set(bl);
        }
    }

    public void setNotificationCondition(CameraExtension.DeviceStabilityCondition object) {
        object = RecognizedCondition.create((CameraExtension.DeviceStabilityCondition)object);
        if (this.mNotification != null) {
            this.mNotification.onRecognisedConditionChanged((RecognizedCondition)object);
        }
    }

    public void setNotificationMacro(boolean bl, CameraExtension.SceneMode sceneMode) {
        if (this.mNotification != null) {
            this.mNotification.onMacroStatusChanged(bl, sceneMode);
        }
    }

    public void setNotificationScene(CameraExtension.SceneMode object) {
        object = RecognizedScene.create((CameraExtension.SceneMode)object);
        if (this.mNotification != null) {
            this.mNotification.onRecognisedSceneChanged((RecognizedScene)object);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void setOrientation(int n) {
        boolean bl = this.getCameraActivity().isRecording();
        if (bl) {
            super.setOrientation(n, this.mRecordingOrientation);
        } else {
            super.setOrientation(n);
        }
        if (this.released()) {
            CameraLogger.e(TAG, "setOrientation() : already released.");
            return;
        }
        if (!this.prepared()) return;
        this.mOrientation = n;
        if (bl) {
            this.setCameraUiOrientation(this.mRecordingOrientation);
        } else {
            this.setCameraUiOrientation(this.mSensorOrientation);
        }
        if (this.mSettingDialogStack != null) {
            this.mSettingDialogStack.setUiOrientation(this.mSensorOrientation);
        }
        this.clearFaceRectangles();
        this.changeSurfaceSize(this.mSurfaceWidth, this.mSurfaceHeight);
    }

    public void setOrientationFollowingSensor() {
        this.setOrientation(this.mSensorOrientation);
    }

    public void setPhotoSmileLevel(SmileCapture smileCapture) {
        this.updatePhotoSmileCaptureIndicator(smileCapture);
        this.mFocusRectangles.setSmileCapture(smileCapture);
    }

    public void setRecordingOrientation(int n) {
        this.mRecordingOrientation = n;
    }

    public void setRectangleColor(RectangleColor rectangleColor, AutoFocusListener.Result result) {
        this.mFocusRectangles.setRectangleColor(rectangleColor, result);
    }

    public void setResolution(Resolution object) {
        float f = (float)object.getPictureRect().width() / (float)object.getPictureRect().height();
        object = LayoutDependencyResolver.getSurfaceRect(this.getCameraActivity(), f);
        this.mSurfaceWidth = object.width();
        this.mSurfaceHeight = object.height();
        this.changeSurfaceSize(this.mSurfaceWidth, this.mSurfaceHeight);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setSelfTimer(CapturingMode capturingMode, SelfTimer selfTimer) {
        if (this.getCameraActivity().isOneShotVideo() || capturingMode != CapturingMode.SCENE_RECOGNITION && capturingMode != CapturingMode.SUPERIOR_FRONT && capturingMode != CapturingMode.NORMAL && capturingMode != CapturingMode.FRONT_PHOTO) {
            return;
        }
        this.mSelfTimer = selfTimer;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[selfTimer.ordinal()]) {
            default: {
                throw new IllegalArgumentException(TAG + ":setSelfTimer [Irregular value] : " + selfTimer);
            }
            case 1: 
            case 2: 
            case 3: {
                this.createSelfTimerCountDownView(selfTimer);
                return;
            }
            case 4: 
        }
        this.removeSelfTimerCountDownView();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setSelfTimer(CapturingMode capturingMode, VideoSelfTimer videoSelfTimer) {
        if (this.getCameraActivity().isOneShotPhoto() || this.mIndicators == null) {
            return;
        }
        this.mIndicators.onVideoSelftimerSettingsChanged(capturingMode, videoSelfTimer.getBooleanValue(), videoSelfTimer.getNotificationIconId());
    }

    public void setThumbnailViewClickListener(ContentsViewController.OnClickThumbnailProgressListener onClickThumbnailProgressListener) {
        this.getBaseLayout().getContentsViewController().setClickThumbnailProgressListener(onClickThumbnailProgressListener);
    }

    public void setTouchCapture(TouchCapture touchCapture) {
        this.mFocusRectangles.setTouchCapture(touchCapture);
    }

    public void setTouchEventListener(View.OnTouchListener onTouchListener) {
        this.mFocusRect = new Rect(0, 0, this.getCameraActivity().getResources().getDimensionPixelSize(2131492885), this.getCameraActivity().getResources().getDimensionPixelSize(2131492886));
        this.mTouchArea.setTocuhAreaListener(onTouchListener);
    }

    public void setVideoAutoReviweDuration(VideoAutoReview videoAutoReview) {
    }

    public void setVideoSize(VideoSize object) {
        float f = (float)object.getVideoRect().width() / (float)object.getVideoRect().height();
        object = LayoutDependencyResolver.getSurfaceRect(this.getCameraActivity(), f);
        this.mSurfaceWidth = object.width();
        this.mSurfaceHeight = object.height();
        this.changeSurfaceSize(this.mSurfaceWidth, this.mSurfaceHeight);
    }

    public void setVideoSmileLevel(VideoSmileCapture videoSmileCapture) {
        this.updateVideoSmileCaptureIndicator(videoSmileCapture);
        this.mFocusRectangles.setSmileCapture(videoSmileCapture.getSmileCapture(this.getActivity().isOneShot()));
    }

    public void setupSurfaceView(SurfaceHolder.Callback callback) {
        this.mSurfaceView.getHolder().addCallback(callback);
    }

    public boolean shouldShowDialogOnStorageSettingChangedToInternal() {
        if (!this.getCameraActivity().getStorageManager().isExternalStorageUnavailableWithExternalStorageSettingAtFirstLaunch()) {
            return true;
        }
        return false;
    }

    public void showAutoFocusView() {
        this.requestToRemoveSystemUi();
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.FOCUS_SEARCHING);
        CapturingMode capturingMode = this.getCurrentParameters().capturingMode;
        if (capturingMode == CapturingMode.NORMAL) {
            this.changeOnScreenButtonAppearance(capturingMode, CaptureState.CAPTURING);
        }
        this.setNotificationsVisibility(false);
        this.setLeftIconsVisibility(false);
        this.mFocusRectangles.showAfRectangle(this.mZoomStep);
        if (this.mSettingController != null) {
            this.mSettingController.hideShortcutTray();
        }
    }

    public void showBalloonTips() {
        if (!this.getActivity().isOneShot() && this.getBaseLayout().getBalloonTips().isBalloonTipsEnabled()) {
            this.getBaseLayout().getBalloonTips().show();
        }
    }

    public void showBlankScreen() {
        if (this.mWindowCover == null) {
            Object object = this.getLayoutInflater();
            if (object == null) {
                return;
            }
            this.mWindowCover = object.inflate(2130903047, null);
            object = this.getCameraActivity().getWindow();
            WindowManager.LayoutParams layoutParams = object.getAttributes();
            object.addContentView(this.mWindowCover, layoutParams);
        }
        if (this.mSettingController != null) {
            this.mSettingController.clearShortcutTray();
        }
        this.mWindowCover.setVisibility(0);
    }

    public void showBurstShootingView() {
        this.requestToRemoveSystemUi();
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.BURST_SHOOTING);
        this.setNotificationsVisibility(false);
        this.setLeftIconsVisibility(false);
        if (this.mSettingController != null) {
            this.mSettingController.hideShortcutTray();
        }
    }

    public void showCurrentAfRectangle() {
        this.mFocusRectangles.showCurrentAfRectangle();
    }

    public void showDefaultView() {
        this.showDefaultView(false);
    }

    public void showIcons() {
        this.getBaseLayout().showIcons();
    }

    public void showProgressForSnapshot(int n) {
        this.removeEarlyThumbnailView();
        this.getBaseLayout().getContentsViewController().showProgress(n);
    }

    public void showReadyForRecordView() {
        this.requestToRemoveSystemUi();
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.FOCUS_DONE);
        if (this.getCurrentParameters().capturingMode == CapturingMode.VIDEO) {
            this.getBaseLayout().getOnScreenButtonGroup().setSub(OnScreenButtonGroup.ButtonType.HIDDEN);
        }
        this.setNotificationsVisibility(false);
        this.setLeftIconsVisibility(false);
        if (this.mSettingController != null) {
            this.mSettingController.hideShortcutTray();
        }
    }

    public void showRecordingPausingView() {
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.PAUSE_RECORDING);
        this.changeOnScreenButtonAppearance(this.getCurrentParameters().capturingMode, CaptureState.PAUSING);
        if (this.getBaseLayout().getRecordingIndicator() != null) {
            this.getBaseLayout().getRecordingIndicator().setIndicator(false);
        }
    }

    public void showRecordingView() {
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.RECORDING);
        this.requestToDimSystemUi();
        this.changeOnScreenButtonAppearance(this.getCurrentParameters().capturingMode, CaptureState.CAPTURING);
        if (this.mSettingController != null) {
            this.mSettingController.hideShortcutTray();
        }
        if (this.mIndicators != null) {
            this.mIndicators.hideSelfTimerIndicator();
        }
        this.getBaseLayout().getContentsViewController().hide();
        this.mFocusRectangles.setRectangleColor(RectangleColor.RECORDING, null);
        this.setOrientation(this.mSensorOrientation);
        if (this.getBaseLayout().getRecordingIndicator() != null) {
            this.getBaseLayout().getRecordingIndicator().setIndicator(true);
        }
    }

    public void showStorageWarningView() {
        this.showDefaultView(true);
    }

    public boolean showSurfaceView() {
        boolean bl = false;
        if (this.mSurfaceView.getVisibility() != 0) {
            this.mSurfaceView.setVisibility(0);
            bl = true;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void showZoombar(boolean bl) {
        if (!this.prepared()) {
            return;
        }
        this.setZoomBarType();
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.ZOOMING);
        if (!bl) {
            this.setNotificationsVisibility(false);
        }
        this.setLeftIconsVisibility(false);
        if (this.mSettingController == null) return;
        this.mSettingController.hideShortcutTray();
    }

    public void startCaptureFeedbackAnimation() {
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.start(CaptureFeedbackAnimationFactory.createDefaultAnimation());
        }
    }

    public void startEarlyThumbnailInsertAnimation(int n) {
        if (!this.getActivity().isOneShot()) {
            this.getBaseLayout().getContentsViewController().startInsertAnimation(n);
        }
    }

    public void startEarlyThumbnailInsertAnimation(int n, Animation.AnimationListener animationListener) {
        if (!this.getActivity().isOneShot()) {
            this.getBaseLayout().getContentsViewController().startInsertAnimation(n, animationListener);
        }
    }

    public void startHideThumbnail(Animation.AnimationListener animationListener) {
        this.getBaseLayout().getContentsViewController().stopAnimation(true);
        Animation animation = AnimationUtils.loadAnimation(this.getCameraActivity(), 2130968592);
        animation.setAnimationListener(animationListener);
        this.getBaseLayout().getContentsViewController().startAnimation(animation);
    }

    public void startObjectTrackingAnimation(Rect rect) {
        this.mFocusRectangles.startObjectTrackingAnimation(rect);
    }

    public void startPhotoSelftimer() {
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.SELFTIMER);
        this.addSelfTimerCountDownView();
        this.getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.CAPTURE);
        if (this.mSettingController != null) {
            this.mSettingController.hideShortcutTray();
        }
    }

    public void startSelfTimerCountDownAnimation() {
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.startSelfTimerCountDownAnimation();
        }
    }

    public void startSetupCapturingModeSelectorTask(Parameters parameters) {
        this.startSetupCapturingModeSelectorTask();
    }

    public void startTouchDownAnimation(Rect rect) {
        this.mFocusRectangles.startTouchDownAnimation(rect);
    }

    public void startTouchUpAnimation(Rect rect) {
        this.mFocusRectangles.startTouchUpAnimation(rect);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startVideoSelftimer() {
        this.changeLayoutTo((LayoutPattern)DefaultLayoutPattern.SELFTIMER);
        CapturingMode capturingMode = this.getCurrentParameters().capturingMode;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            case 7: {
                this.getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.START_RECORDING);
            }
            default: {
                break;
            }
            case 1: 
            case 2: 
            case 3: {
                if (this.getCameraActivity().isOneShotVideo()) {
                    this.getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.START_RECORDING);
                    break;
                }
                this.getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.CAPTURE);
            }
        }
        if (this.mSettingController != null) {
            this.mSettingController.hideShortcutTray();
        }
    }

    public void updateFaceRectangles(FaceInformationList faceInformationList) {
        this.mFocusRectangles.updateFaceRectangle(faceInformationList, this.mSensorOrientation, this.getCameraActivity().isOneShotVideo());
    }

    public void updateObjectRectangles(Rect rect) {
        this.mFocusRectangles.updateObjectRectangle(rect);
    }

    public void updateProgressbar(int n) {
        this.getBaseLayout().getRecordingIndicator().updateRecordingTime(n);
    }

    public void updateRecordingTime(int n) {
        this.getBaseLayout().getRecordingIndicator().updateRecordingTime(n);
        this.getBaseLayout().getOnScreenButtonGroup().restartAnimation();
    }

    public void updateSettingDialog() {
        if (this.mSettingController != null) {
            this.mSettingController.updateSettingMenu(false);
            this.mSettingController.updatSecondLayerDialog(false);
        }
    }

    public void updateTouchRectangle(Rect rect) {
        this.mFocusRectangles.updateTouchRectangle(rect);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateZoombar(int n, int n2, int n3) {
        Zoombar zoombar = this.getBaseLayout().getZoomBar();
        if (zoombar != null) {
            if (this.getCurrentParameters().getSuperResolution() == SuperResolution.ON) {
                zoombar.updateZoombarType(Zoombar.Type.PARTIAL_SUPER_RESOLUTION);
            } else {
                zoombar.updateZoombarType(Zoombar.Type.NORMAL);
            }
            this.onZoomChanged(n, n2, n3);
        }
        n3 = n;
        if (n < 0) {
            n3 = 0;
        }
        n = n3;
        if (n3 > n2) {
            n = n2;
        }
        this.mZoomStep = n;
    }

    @SuppressLint(value={"HandlerLeak"})
    private class CameraWindowHandler
    extends Handler {
        private static final int MSG_OPEN_SCENE_DIALOG = 2;
        private static final int MSG_OPEN_SETTINGS_MENU = 1;
        private static final int MSG_PHOTO_VIDEO_SWITCH = 4;
        private static final int MSG_SWITCH_CAMERA = 3;

        private CameraWindowHandler() {
        }

        @Override
        public void handleMessage(Message message) {
            switch (message.what) {
                default: {
                    return;
                }
                case 1: {
                    CameraWindow.this.mSettingController.updateShortcutTray();
                    CameraWindow.this.mSettingController.openMenuDialog(SettingGroup.PHOTO);
                    return;
                }
                case 4: 
            }
            CameraWindow.this.switchPhotoVideo();
        }
    }

    public static enum CaptureState {
        CAPTURING,
        PAUSING,
        STANDBY;
        

        private CaptureState() {
        }
    }

    public class PhotoVideoSwitchEventHandler
    implements OnScreenButtonListener {
        @Override
        public void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        }

        @Override
        public void onDispatchDraw(OnScreenButton onScreenButton, Canvas canvas) {
        }

        @Override
        public void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        }

        @Override
        public void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        }

        @Override
        public void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            if (!CameraWindow.this.mHandler.hasMessages(4)) {
                CameraWindow.this.mHandler.sendEmptyMessage(4);
            }
        }
    }

    private class VideoChapterInserter
    implements PreviewFrameRetriever.OnPreviewFrameAvarableListener {
        private final int mOrientaion;

        public VideoChapterInserter(int n) {
            this.mOrientaion = n;
        }

        @Override
        public void onPreviewFrameAvarable(PreviewFrameRetriever previewFrameRetriever, byte[] arrby) {
            CameraWindow.this.addVideoChapter(arrby, this.mOrientaion, previewFrameRetriever.getPreviewInfo());
        }
    }

}

