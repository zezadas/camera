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
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoSelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.device.PreviewFrameRetriever;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.view.CameraWindowListener;
import com.sonyericsson.android.camera.view.DetectedFaceRectangles;
import com.sonyericsson.android.camera.view.FocusRectanglesManager;
import com.sonyericsson.android.camera.view.FrontCameraLocationIndicatorDialog;
import com.sonyericsson.android.camera.view.Indicators;
import com.sonyericsson.android.camera.view.TouchArea;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.RectangleColor;
import com.sonyericsson.cameracommon.mediasaving.StorageAutoSwitchController;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.review.AutoReviewWindow;
import com.sonyericsson.cameracommon.review.ReviewWindowListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.viewfinder.BaseViewFinderLayout;
import com.sonyericsson.cameracommon.viewfinder.ViewFinder;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButtonAttributes;
import com.sonyericsson.cameracommon.viewfinder.indicators.GeotagIndicator;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.view.Notification;
import com.sonymobile.cameracommon.view.SelfTimerCountDownView;

/*
 * Failed to analyse overrides
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
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
    public static final String TAG;
    private AutoReviewWindow mAutoReview;
    private CameraWindowListener mCameraWindowListener;
    private boolean mCanSwitchStorage;
    private CaptureFeedback mCaptureFeedback;
    private Context mContext;
    private View mCounterView;
    private Rect mFocusRect;
    private FocusRectanglesManager mFocusRectangles;
    private FrontCameraLocationIndicatorDialog mFrontCameraLocationDialog;
    private CameraWindowHandler mHandler;
    private Indicators mIndicators;
    private boolean mIsOpenCapturingModeSelector;
    private boolean mIsOpenInstantViewer;
    private boolean mIsOpenPhotoStackMenu;
    private boolean mIsOpenSettingsDialog;
    private boolean mIsTouchGuideShown;
    private Notification mNotification;
    private int mOrientation;
    private boolean mPrepared;
    private int mRecordingOrientation;
    private boolean mReleased;
    private Runnable mRunnableSetPadding;
    private Runnable mRunnableUpdateAf;
    private SelfTimer mSelfTimer;
    private SelfTimerCountDownView mSelfTimerCountDownView;
    private SelfTimerCountDownView mSelfTimerCountDownViewNext;
    private int mSensorOrientation;
    private SettingController mSettingController;
    private SettingDialogStack mSettingDialogStack;
    private int mSurfaceHeight;
    private SurfaceView mSurfaceView;
    private int mSurfaceWidth;
    private TouchArea mTouchArea;
    private int mType;
    private View mViewFinder;
    private RelativeLayout mViewFinderLayout;
    private View mWindowCover;
    public int mZoomStep;

    static;

    public CameraWindow(Context var1);

    static /* synthetic */ CameraWindowHandler access$000(CameraWindow var0);

    static /* synthetic */ View access$1000(CameraWindow var0);

    static /* synthetic */ Runnable access$1100(CameraWindow var0);

    static /* synthetic */ void access$1200(CameraWindow var0, byte[] var1, int var2, PreviewFrameRetriever.PreviewInfo var3);

    static /* synthetic */ SettingController access$200(CameraWindow var0);

    static /* synthetic */ void access$300(CameraWindow var0);

    static /* synthetic */ BaseViewFinderLayout access$400(CameraWindow var0);

    static /* synthetic */ SurfaceView access$500(CameraWindow var0);

    static /* synthetic */ int access$600(CameraWindow var0);

    static /* synthetic */ int access$700(CameraWindow var0);

    static /* synthetic */ int access$800(CameraWindow var0);

    static /* synthetic */ FocusRectanglesManager access$900(CameraWindow var0);

    private void addSelfTimerCountDownView();

    private void addVideoChapter(byte[] var1, int var2, PreviewFrameRetriever.PreviewInfo var3);

    private void applyAllParametes(Parameters var1);

    private void applyResolution(Parameters var1);

    private void cancelSelfTimerCountDownView();

    private void changeOnScreenButtonAppearance(CapturingMode var1, CaptureState var2);

    private void changeOnScreenButtonAppearanceNotSupportedPauseRecording(CapturingMode var1, boolean var2);

    private void closeSettingsDialog();

    private void createSelfTimerCountDownView(SelfTimer var1);

    private Parameters getCurrentParameters();

    private LayoutInflater getLayoutInflater();

    private CapturingModeButtonAttributes getModeAttribute(CapturingMode var1);

    private void hideCameraItems();

    private void hideDefaultViewCamera();

    private void hideDefaultViewVideo();

    private void hideRightBottomCaptureButton();

    private void hideSelfTimerCountDownView();

    private boolean isAllDialogClosed();

    private boolean isDisableAutoReview();

    private void onOrientationChanged(int var1);

    private void preparationForInstantViewer();

    private void removeSelfTimerCountDownView();

    private void sendGoogleAnalyticsModeSelectorEvent(CapturingMode var1);

    private void sendGoogleAnalyticsSameActivityEvent(CapturingMode var1);

    private void setCameraUiOrientation(int var1);

    private void setCaptureButtonVisibility(boolean var1);

    private void setLeftIconsVisibility(boolean var1);

    private void setMainCaptureButton(SelfTimer var1, int var2, boolean var3);

    private void setNotificationsVisibility(boolean var1);

    private void setPhotoStackVisibility(boolean var1);

    private void setZoomBarType();

    private void setZoombarVisibility(boolean var1);

    private void setupAutoReview();

    private void setupFrontCameraLocationDialog();

    private void setupNotifications(CapturingMode var1, Geotag var2, SelfTimer var3, VideoSelfTimer var4, SmileCapture var5);

    private void setupOnScreenButton(CapturingMode var1);

    private void setupSettingController();

    private void setupTouchArea();

    private void setupViewFinderIcons(Parameters var1);

    private void setupViewFinderLayout();

    private void setupZoomBar();

    private void showDefaultView(boolean var1);

    private void showFrontCameraLocationIndicator();

    private void switchPhotoVideo();

    private void updateCapturingModeButton(CapturingMode var1);

    private void updatePhotoSmileCaptureIndicator(SmileCapture var1);

    private void updateVideoSmileCaptureIndicator(VideoSmileCapture var1);

    private void visibleFrontCameraLocationDialog(boolean var1);

    public void addCountUpView(int var1);

    public boolean canSwitchStorage();

    public void cancelSelftimer(boolean var1);

    public void changeSurfaceSize(int var1, int var2);

    public void clearFaceRectangles();

    public void clearObjectRectangles();

    public void clearTouchRectangle();

    public void closeCurrentDialog();

    public void closeDialogTemporary();

    public void closeReviewWindow();

    public void commit();

    public void countUp(int var1);

    public void disableClickOnThumbnail();

    public void disableTouchDetectedFace();

    public void disbleTouchEvent();

    public void enableClickOnThumbnail();

    public void enableTouchEvent();

    public void fadeoutCounter();

    public CameraActivity getCameraActivity();

    public FocusMode getFocusMode();

    GeotagIndicator getGeoTagIndicator();

    public LocationAcquiredListener getLocationListener();

    public final int getOrientation();

    public Rect getPosition(int var1, int var2);

    public int getRequestId(boolean var1);

    public Rect getSurfaceRect();

    public SurfaceView getSurfaceView();

    public Indicator getThermalIndicator();

    public NamedFace getTopPriorityFace();

    public View getTouchArea();

    public void hideBalloonTips();

    public void hideBlankScreen();

    public void hideDefaultView(int var1);

    public void hideFaceRectangles();

    public void hideObjectRectangles();

    public void hideOnScreenButton();

    public void hidePauseView();

    public void hideRecordingView();

    public void hideShutterAnimeBack();

    public void hideShutterAnimeBackForce();

    public void hideSurfaceView();

    public void hideThumbnail();

    public void hideThumbnailWhileRecording();

    public void hideTouchRectangle();

    public void hideZoombar();

    public void init();

    public void initZoom();

    public boolean isDisplayFrontCameraLocationIndication();

    public boolean isOpenCapturingModeSelector();

    public boolean isOpenPhotoStackMenu();

    public boolean isOpenSettingsDialog();

    public boolean isTouchGuideShown();

    public void onAcquired(boolean var1, boolean var2);

    public void onClickThumbnailProgress();

    public void onClose(FrontCameraLocationIndicatorDialog var1);

    protected void onCloseCapturingModeSelector();

    public void onClosePhotoStackMenu();

    public void onCloseSettingDialog(SettingDialogStack var1, boolean var2);

    public void onCloseStorageDialog();

    public void onDeleted(boolean var1, Uri var2);

    public void onDisabled();

    public void onFinishInflate();

    public void onHidePhotoStackDialog();

    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation var1);

    public void onLost();

    public void onModeFinish();

    public void onModeSelect(String var1);

    public void onNotifyThermalNormal();

    public void onNotifyThermalWarning();

    protected void onOpenCapturingModeSelector();

    public void onOpenSettingDialog(SettingDialogStack var1, boolean var2, boolean var3);

    public void onOpenStorageDialog();

    public void onReviewWindowClose();

    public void onReviewWindowOpen();

    public void onShowPhotoStackDialog();

    public void onStorageAutoSwitch(String var1);

    public void onStoreComplete(StoreDataResult var1);

    public void onSurfaceSizeChanged(int var1, int var2);

    public void openInstantViewer(byte[] var1, String var2, SavingRequest var3);

    public void openReviewWindow(Uri var1, SavingRequest var2);

    public boolean openSettingsMenu();

    public void pauseSettings();

    public void prepare(Parameters var1);

    public void prepareRecording(int var1, boolean var2, boolean var3);

    public boolean prepared();

    public void release();

    public boolean released();

    public void removeEarlyThumbnailView();

    public void requestInflate();

    public void requestShowIconsOnReviewWindow(StoreDataResult var1);

    public void requestToAddVideoChapter(int var1);

    public void requestToRestoreNavigationBar();

    public void resume(Parameters var1, boolean var2);

    public void setAutoReviweDuration(AutoReview var1);

    public void setCanSwitchStorage(boolean var1);

    public void setCapturingMode(CapturingMode var1);

    public void setChangeFocusFaceListener(DetectedFaceRectangles.ChangeFocusFaceListener var1);

    public void setEarlyThumbnailView(View var1);

    public void setEmptyShortcut();

    public void setFocusMode(FocusMode var1);

    public void setGeotag(boolean var1);

    public void setNotificationCondition(CameraExtension.DeviceStabilityCondition var1);

    public void setNotificationMacro(boolean var1, CameraExtension.SceneMode var2);

    public void setNotificationScene(CameraExtension.SceneMode var1);

    protected void setOrientation(int var1);

    public void setOrientationFollowingSensor();

    public void setPhotoSmileLevel(SmileCapture var1);

    public void setRecordingOrientation(int var1);

    public void setRectangleColor(RectangleColor var1, AutoFocusListener.Result var2);

    public void setResolution(Resolution var1);

    public void setSelfTimer(CapturingMode var1, SelfTimer var2);

    public void setSelfTimer(CapturingMode var1, VideoSelfTimer var2);

    public void setThumbnailViewClickListener(ContentsViewController.OnClickThumbnailProgressListener var1);

    public void setTouchCapture(TouchCapture var1);

    public void setTouchEventListener(View.OnTouchListener var1);

    public void setVideoAutoReviweDuration(VideoAutoReview var1);

    public void setVideoSize(VideoSize var1);

    public void setVideoSmileLevel(VideoSmileCapture var1);

    public void setupSurfaceView(SurfaceHolder.Callback var1);

    public boolean shouldShowDialogOnStorageSettingChangedToInternal();

    public void showAutoFocusView();

    public void showBalloonTips();

    public void showBlankScreen();

    public void showBurstShootingView();

    public void showCurrentAfRectangle();

    public void showDefaultView();

    public void showIcons();

    public void showProgressForSnapshot(int var1);

    public void showReadyForRecordView();

    public void showRecordingPausingView();

    public void showRecordingView();

    public void showStorageWarningView();

    public boolean showSurfaceView();

    public void showZoombar(boolean var1);

    public void startCaptureFeedbackAnimation();

    public void startEarlyThumbnailInsertAnimation(int var1);

    public void startEarlyThumbnailInsertAnimation(int var1, Animation.AnimationListener var2);

    public void startHideThumbnail(Animation.AnimationListener var1);

    public void startObjectTrackingAnimation(Rect var1);

    public void startPhotoSelftimer();

    public void startSelfTimerCountDownAnimation();

    public void startSetupCapturingModeSelectorTask(Parameters var1);

    public void startTouchDownAnimation(Rect var1);

    public void startTouchUpAnimation(Rect var1);

    public void startVideoSelftimer();

    public void updateFaceRectangles(FaceInformationList var1);

    public void updateObjectRectangles(Rect var1);

    public void updateProgressbar(int var1);

    public void updateRecordingTime(int var1);

    public void updateSettingDialog();

    public void updateTouchRectangle(Rect var1);

    public void updateZoombar(int var1, int var2, int var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    @SuppressLint(value={"HandlerLeak"})
    private class CameraWindowHandler
    extends Handler {
        private static final int MSG_OPEN_SCENE_DIALOG = 2;
        private static final int MSG_OPEN_SETTINGS_MENU = 1;
        private static final int MSG_PHOTO_VIDEO_SWITCH = 4;
        private static final int MSG_SWITCH_CAMERA = 3;
        final /* synthetic */ CameraWindow this$0;

        private CameraWindowHandler(CameraWindow var1);

        /* synthetic */ CameraWindowHandler(CameraWindow var1,  var2);

        @Override
        public void handleMessage(Message var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class CaptureState
    extends Enum<CaptureState> {
        private static final /* synthetic */ CaptureState[] $VALUES;
        public static final /* enum */ CaptureState CAPTURING;
        public static final /* enum */ CaptureState PAUSING;
        public static final /* enum */ CaptureState STANDBY;

        static;

        private CaptureState();

        public static CaptureState valueOf(String var0);

        public static CaptureState[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class PhotoVideoSwitchEventHandler
    implements OnScreenButtonListener {
        final /* synthetic */ CameraWindow this$0;

        public PhotoVideoSwitchEventHandler(CameraWindow var1);

        @Override
        public void onCancel(OnScreenButton var1, MotionEvent var2);

        @Override
        public void onDispatchDraw(OnScreenButton var1, Canvas var2);

        @Override
        public void onDown(OnScreenButton var1, MotionEvent var2);

        @Override
        public void onMove(OnScreenButton var1, MotionEvent var2);

        @Override
        public void onUp(OnScreenButton var1, MotionEvent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class VideoChapterInserter
    implements PreviewFrameRetriever.OnPreviewFrameAvarableListener {
        private final int mOrientaion;
        final /* synthetic */ CameraWindow this$0;

        public VideoChapterInserter(CameraWindow var1, int var2);

        @Override
        public void onPreviewFrameAvarable(PreviewFrameRetriever var1, byte[] var2);
    }

}

