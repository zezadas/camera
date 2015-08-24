/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingResult
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionResult
 */
package com.sonyericsson.android.camera.fastcapturing.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler;
import com.sonyericsson.android.camera.fastcapturing.ChapterThumbnail;
import com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity;
import com.sonyericsson.android.camera.fastcapturing.StateMachine;
import com.sonyericsson.android.camera.fastcapturing.view.BaseFastViewFinder;
import com.sonyericsson.android.camera.fastcapturing.view.CaptureArea;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.android.camera.view.settings.SettingList;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.focusview.FocusActionListener;
import com.sonyericsson.cameracommon.focusview.FocusRectangles;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.mediasaving.StorageAutoSwitchController;
import com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.review.AutoReviewWindow;
import com.sonyericsson.cameracommon.review.ReviewWindowListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.viewfinder.BaseViewFinderLayout;
import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.ViewFinder;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import com.sonymobile.cameracommon.view.SelfTimerCountDownView;
import java.util.List;

/*
 * Failed to analyse overrides
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
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
    private static final String TAG;
    private FastCapturingActivity mActivity;
    private AutoReviewWindow mAutoReview;
    private AutoReview mAutoReviewSetting;
    private CameraDeviceHandler mCameraDevice;
    private final SettingExecutorInterface<SettingGroup> mCameraSwitchExecutor;
    private CaptureFeedback mCaptureFeedback;
    private CapturingMode mCapturingMode;
    private ImageView mConditionIndicatorIcon;
    private View mCounterView;
    private BaseFastViewFinder.UiComponentKind mCurrentDisplayingUiComponent;
    private SettingDialogItemFactory mDialogItemFactory;
    private FocusRectangles mFocusRectangles;
    private final View.OnKeyListener mInterceptSettingDialogKeyListener;
    private Boolean mIsFaceDetectionIdSupported;
    private boolean mIsInstantViewerOpened;
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
    private SurfaceHolder mSurfaceHolder;
    private SurfaceView mSurfaceView;
    private TouchCapture mTouchCapture;
    private final UiComponentBackgroundTouchEventHandler mUiComponentBackgroundTouchEventHandler;
    private VideoAutoReview mVideoAutoReviewSetting;
    private FocusMode mVideoFocusMode;
    private CaptureArea mViewFinderCaptureArea;

    static;

    public FastViewFinder(Context var1);

    static /* synthetic */ KeyEventTranslator access$1200(FastViewFinder var0);

    static /* synthetic */ SettingDialogStack access$1300(FastViewFinder var0);

    static /* synthetic */ boolean access$1400(FastViewFinder var0);

    static /* synthetic */ void access$1600(FastViewFinder var0);

    static /* synthetic */ void access$1700(FastViewFinder var0);

    static /* synthetic */ BaseActivity access$1800(FastViewFinder var0);

    static /* synthetic */ FastCapturingActivity access$1900(FastViewFinder var0);

    static /* synthetic */ SettingDialogItemFactory access$2000(FastViewFinder var0);

    static /* synthetic */ List access$2100(FastViewFinder var0, Context var1, ParameterKey var2);

    static /* synthetic */ CapturingMode access$2200(FastViewFinder var0);

    static /* synthetic */ void access$2300(FastViewFinder var0);

    static /* synthetic */ BaseActivity access$2400(FastViewFinder var0);

    static /* synthetic */ SettingAdapter access$2500(FastViewFinder var0, CapturingMode var1);

    static /* synthetic */ TextView access$2600(FastViewFinder var0);

    static /* synthetic */ FocusMode access$2700(FastViewFinder var0);

    static /* synthetic */ PointF access$2800(FastViewFinder var0, Point var1);

    static /* synthetic */ TouchCapture access$2900(FastViewFinder var0);

    static /* synthetic */ CameraDeviceHandler access$3000(FastViewFinder var0);

    static /* synthetic */ BaseViewFinderLayout access$3100(FastViewFinder var0);

    static /* synthetic */ BaseActivity access$3200(FastViewFinder var0);

    static /* synthetic */ AutoReviewWindow access$3300(FastViewFinder var0);

    static /* synthetic */ SurfaceView access$400(FastViewFinder var0);

    static /* synthetic */ void access$500(FastViewFinder var0, SurfaceHolder var1, int var2, int var3);

    static /* synthetic */ String access$600();

    static /* synthetic */ void access$700(FastViewFinder var0);

    static /* synthetic */ StateMachine access$800(FastViewFinder var0);

    static /* synthetic */ void access$900(FastViewFinder var0);

    private void addCountUpView(int var1);

    private SettingAdapter addItem(SettingAdapter var1, SettingList.Shortcut var2, boolean var3);

    private void addVideoChapter(ChapterThumbnail var1);

    private void cancelSelfTimerCountDownView();

    private void changeScreenButtonImage(BaseFastViewFinder.HeadUpDisplaySetupState var1, boolean var2);

    private void changeToLayoutWithSetupState(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void changeToPauseView();

    private void changeToPhotoBurstView(Boolean var1);

    private void changeToPhotoCaptureView();

    private void changeToPhotoCaptureWaitForAfDoneView();

    private void changeToPhotoDialogView(BaseFastViewFinder.UiComponentKind var1);

    private void changeToPhotoFocusDoneView(Boolean var1);

    private void changeToPhotoFocusSearchView();

    private void changeToPhotoFocusView();

    private void changeToPhotoIdleView(boolean var1);

    private void changeToPhotoSelftimerView();

    private void changeToPhotoZoomingView();

    private void changeToReadyForRecordView();

    private void changeToVideoIdleView();

    private void changeToVideoRecordingPauseView();

    private void changeToVideoRecordingView();

    private void changeToVideoZoomingWhileRecordingView();

    private void checkSurfaceIsPreparedOrNot(SurfaceHolder var1, int var2, int var3);

    private void clearSurfaceView();

    private void closeCurrentDisplayingUiComponent();

    private void closeSettingDialog();

    private PointF convertTouchPointToDevicePreviewPositionRatio(Point var1);

    private void createSelfTimerCountDownView(SelfTimer var1);

    private SettingExecutorInterface<ParameterValue> createSettingChangeExecutor(ParameterKey var1, ParameterValue var2);

    private void doChangeCondition(CameraExtension.SceneRecognitionResult var1);

    private void doChangeSceneMode(CameraExtension.SceneRecognitionResult var1);

    private List<SettingItem> generateChildrenSettinItem(Context var1, ParameterKey var2);

    private SettingAdapter generateShortcutItemAdapter(CapturingMode var1);

    private SettingItem generateShortcutSettingItem(SettingList.Shortcut var1);

    private OnScreenButtonGroup.ButtonType getCaptureButtonTypeAccoringToSelfTimerSetting();

    private Flash getCurrentFlashSetting(Flash[] var1);

    private void getDownHeadUpDisplay();

    private void hideBalloonTips();

    private void hideSurfaceBlinderView();

    private boolean isAllDialogClosed();

    public static final boolean isNearSameSize(Rect var0, Rect var1);

    private boolean isVisible(ParameterKey var1);

    private boolean isVisible(SettingGroup var1);

    private void loadSettingsFromSharedPreferencesDeviceAndResources();

    private void loadSettingsFromSharedPreferencesDeviceAndResources(int var1);

    private static void logPerformance(String var0);

    private void notifyOnEvfPrepared(Rect var1);

    private void onCameraModeChangedTo(int var1);

    private void onFaceDetected(CameraExtension.FaceDetectionResult var1);

    private void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> var1);

    private void onLazyInitializationTaskRun();

    private void onSceneModeChanged(CameraExtension.SceneRecognitionResult var1);

    private void onSurfaceAvailableInternal(SurfaceHolder var1, int var2, int var3);

    private void onToggleCameraSwitch();

    private void onToggleMenuButton();

    private void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult var1);

    private /* varargs */ void onViewFinderStateChanged(StateMachine.CaptureState var1, Object ... var2);

    private void openInstantViewer(byte[] var1, String var2, SavingRequest var3);

    private void pauseView();

    private void preparationForInstantViewer();

    private void releaseSurfaceBlinderView();

    private void removeCountUpView(int var1);

    private void removeSelfTimerCountDownView();

    private void resizeEvfScope(int var1, int var2);

    private void resumeView();

    private void setCount(int var1);

    private void setEarlyThumbnailView(View var1);

    private void setSceneIndicatorVisibleAllNotificationIndicators(int var1);

    private void setSceneNotificationIndicatorsInvisible(boolean var1);

    private void setupAnimations();

    private void setupAutoReview();

    private void setupCaptureArea(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void setupCapturingModeSelectorButton(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void setupContentsView();

    private void setupFocusRectangles();

    private void setupHeadUpDisplay(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void setupOnScreenCaptureButton(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void setupSceneNotificationIndicator();

    private void setupSelfTimerCountDownView();

    private void setupShortcutTray(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private RelativeLayout setupViewFinderLayout();

    private void setupZoomBar(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void showBalloonTips();

    private void showSelfTimerCountDownView();

    private void startEarlyThumbnailInsertAnimation(int var1);

    private void updateCaptureAreaSize();

    private void updateSelectability();

    private void updateUiComponent(BaseFastViewFinder.UiComponentKind var1);

    private void updateUuidBeforeUpdateView(CameraExtension.FaceDetectionResult var1);

    private void updateViewFinderCaptureAreaTouchEventHandling(TouchCapture var1, BaseFastViewFinder.HeadUpDisplaySetupState var2);

    public boolean canSwitchStorage();

    public void changeLayoutTo(LayoutPattern var1);

    public void checkSurfaceIsPreparedOrNot();

    public void closeReviewWindow();

    public void ensureVideoAutoReviewSettingHasLoaded();

    public void fadeoutCounter();

    public AutoReview getAutoReviewSetting();

    public Flash[] getFlashOptions();

    public int getOrientation();

    public int getOrientationForUiNotRotateInRecording();

    public SelfTimer getPhotoSelfTimerSetting();

    public int getRequestId(boolean var1);

    protected ContentPallet.ThumbnailClickListener getThumbnailClickListener();

    public TouchCapture getTouchCapture();

    public VideoAutoReview getVideoAutoReviewSetting();

    public void hideHudIcons();

    public boolean isInTouchCaptureArea(MotionEvent var1);

    public boolean isSetupHeadupDisplayInvoked();

    public boolean isTouchFocus();

    public void onCanceled();

    public void onClickThumbnailProgress();

    public void onCloseCapturingModeSelector();

    public void onCloseStorageDialog();

    public void onDeleted(boolean var1, Uri var2);

    public void onFaceSelected(Point var1);

    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation var1);

    public void onLongPressed();

    public void onModeFinish();

    public void onModeSelect(String var1);

    protected void onOpenCapturingModeSelector();

    public void onOpenStorageDialog();

    public void onReleased();

    public void onReviewWindowClose();

    public void onReviewWindowOpen();

    public void onSettingValueChanged(ParameterKey var1, ParameterValue var2);

    public /* varargs */ void onStateChanged(StateMachine.CaptureState var1, Object ... var2);

    public void onStorageAutoSwitch(String var1);

    public void onTouched();

    public void openCapturingModeSelector(String var1);

    public void openReviewWindow(Uri var1, SavingRequest var2);

    public void release();

    public void removeEarlyThumbnailView();

    public void requestInflate(LayoutInflater var1);

    public /* varargs */ void sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent var1, Object ... var2);

    public void setAutoReviweDuration(AutoReview var1);

    public void setCameraDevice(CameraDeviceHandler var1);

    public void setContentView();

    protected void setOrientation(int var1);

    public void setRecordingOrientation(int var1);

    public void setStateMachine(StateMachine var1);

    public boolean shouldShowDialogOnStorageSettingChangedToInternal();

    public void startCaptureFeedbackAnimation();

    public void startEarlyThumbnailInsertAnimation(int var1, Animation.AnimationListener var2);

    public void startHideThumbnail();

    public void startSelfTimerCountDownAnimation();

    public void surfaceChanged(SurfaceHolder var1, int var2, int var3, int var4);

    public void surfaceCreated(SurfaceHolder var1);

    public void surfaceDestroyed(SurfaceHolder var1);

    public void updateGeotagIcon();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CameraSwitchExecutor
    implements SettingExecutorInterface<SettingGroup> {
        final /* synthetic */ FastViewFinder this$0;

        private CameraSwitchExecutor(FastViewFinder var1);

        /* synthetic */ CameraSwitchExecutor(FastViewFinder var1,  var2);

        @Override
        public void onExecute(TypedSettingItem<SettingGroup> var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CloseExecutor<T>
    implements SettingExecutorInterface<T> {
        private final SettingExecutorInterface<T> mExecutor;
        final /* synthetic */ FastViewFinder this$0;

        private CloseExecutor(FastViewFinder var1, SettingExecutorInterface<T> var2);

        /* synthetic */ CloseExecutor(FastViewFinder var1, SettingExecutorInterface var2,  var3);

        @Override
        public void onExecute(TypedSettingItem<T> var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnScreenCamcordButtonStateListener
    implements OnScreenButtonListener {
        private final boolean mIsSubCamcordButton;
        final /* synthetic */ FastViewFinder this$0;

        public OnScreenCamcordButtonStateListener(FastViewFinder var1, boolean var2);

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
    private class OnScreenCaptureButtonStateListener
    implements OnScreenButtonListener {
        final /* synthetic */ FastViewFinder this$0;

        private OnScreenCaptureButtonStateListener(FastViewFinder var1);

        /* synthetic */ OnScreenCaptureButtonStateListener(FastViewFinder var1,  var2);

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
    class PostUiInflatedTask
    implements Runnable {
        final /* synthetic */ FastViewFinder this$0;

        PostUiInflatedTask(FastViewFinder var1);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class ReTrySetupHeadUpDisplayTask
    implements Runnable {
        final /* synthetic */ FastViewFinder this$0;

        ReTrySetupHeadUpDisplayTask(FastViewFinder var1);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SettingMenuOpenExecutor
    implements SettingExecutorInterface<SettingGroup> {
        final /* synthetic */ FastViewFinder this$0;

        private SettingMenuOpenExecutor(FastViewFinder var1);

        /* synthetic */ SettingMenuOpenExecutor(FastViewFinder var1,  var2);

        @Override
        public void onExecute(TypedSettingItem<SettingGroup> var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SettingShortcutDialogOpenExecutor
    implements SettingExecutorInterface<SettingList.Shortcut> {
        final /* synthetic */ FastViewFinder this$0;

        private SettingShortcutDialogOpenExecutor(FastViewFinder var1);

        /* synthetic */ SettingShortcutDialogOpenExecutor(FastViewFinder var1,  var2);

        @Override
        public void onExecute(TypedSettingItem<SettingList.Shortcut> var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SettingShortcutGroupDialogOpenExecutor
    implements SettingExecutorInterface<SettingGroup> {
        final /* synthetic */ FastViewFinder this$0;

        private SettingShortcutGroupDialogOpenExecutor(FastViewFinder var1);

        /* synthetic */ SettingShortcutGroupDialogOpenExecutor(FastViewFinder var1,  var2);

        @Override
        public void onExecute(TypedSettingItem<SettingGroup> var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SurfaceAvailableRetryTask
    implements Runnable {
        private final int mHeight;
        private final SurfaceHolder mSurface;
        private final int mWidth;
        final /* synthetic */ FastViewFinder this$0;

        SurfaceAvailableRetryTask(FastViewFinder var1, SurfaceHolder var2, int var3, int var4);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class UiComponentBackgroundTouchEventHandler
    implements View.OnTouchListener {
        final /* synthetic */ FastViewFinder this$0;

        private UiComponentBackgroundTouchEventHandler(FastViewFinder var1);

        /* synthetic */ UiComponentBackgroundTouchEventHandler(FastViewFinder var1,  var2);

        @Override
        public boolean onTouch(View var1, MotionEvent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderCaptureAreaNonObjectTrackingStateListener
    extends ViewFinderCaptureAreaStateListener {
        final /* synthetic */ FastViewFinder this$0;

        public ViewFinderCaptureAreaNonObjectTrackingStateListener(FastViewFinder var1, int var2);

        @Override
        public void onCaptureAreaMoved(Point var1);

        @Override
        public void onCaptureAreaTouched(Point var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderCaptureAreaStateListener
    extends ViewFinderTouchActionStateListener {
        final /* synthetic */ FastViewFinder this$0;

        public ViewFinderCaptureAreaStateListener(FastViewFinder var1, int var2);

        @Override
        public void onCaptureAreaLongPressed(Point var1);

        @Override
        public void onCaptureAreaMoved(Point var1);

        @Override
        public void onCaptureAreaReleased(Point var1);

        @Override
        public void onCaptureAreaSingleTapUp(Point var1);

        @Override
        public void onCaptureAreaStopped();

        @Override
        public void onCaptureAreaTouched(Point var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderStateListener
    implements CaptureArea.CaptureAreaStateListener {
        final /* synthetic */ FastViewFinder this$0;

        public ViewFinderStateListener(FastViewFinder var1);

        @Override
        public void onCaptureAreaCanceled();

        @Override
        public void onCaptureAreaIsReadyToScale();

        @Override
        public void onCaptureAreaLongPressed(Point var1);

        @Override
        public void onCaptureAreaMoved(Point var1);

        @Override
        public void onCaptureAreaReleased(Point var1);

        @Override
        public void onCaptureAreaScaled(float var1);

        @Override
        public void onCaptureAreaSingleTapUp(Point var1);

        @Override
        public void onCaptureAreaStopped();

        @Override
        public void onCaptureAreaTouched(Point var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderTouchActionNonObjectTrackingStateListener
    extends ViewFinderTouchActionStateListener {
        final /* synthetic */ FastViewFinder this$0;

        public ViewFinderTouchActionNonObjectTrackingStateListener(FastViewFinder var1, int var2);

        @Override
        public void onCaptureAreaLongPressed(Point var1);

        @Override
        public void onCaptureAreaMoved(Point var1);

        @Override
        public void onCaptureAreaSingleTapUp(Point var1);

        @Override
        public void onCaptureAreaTouched(Point var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderTouchActionStateListener
    extends ViewFinderStateListener {
        protected final int mCameraType;
        final /* synthetic */ FastViewFinder this$0;

        public ViewFinderTouchActionStateListener(FastViewFinder var1, int var2);

        @Override
        public void onCaptureAreaCanceled();

        @Override
        public void onCaptureAreaIsReadyToScale();

        @Override
        public void onCaptureAreaMoved(Point var1);

        @Override
        public void onCaptureAreaReleased(Point var1);

        @Override
        public void onCaptureAreaScaled(float var1);

        @Override
        public void onCaptureAreaTouched(Point var1);

        protected void setFocusPositionToDeviceAndViewFinder(Point var1, FocusRectangles.FocusSetType var2);

        protected void setSelectedObjectPositionToDeviceAndViewFinder(Point var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderTouchCaptureStateListener
    extends ViewFinderStateListener {
        protected final int mCameraType;
        final /* synthetic */ FastViewFinder this$0;

        public ViewFinderTouchCaptureStateListener(FastViewFinder var1, int var2);

        @Override
        public void onCaptureAreaLongPressed(Point var1);

        @Override
        public void onCaptureAreaReleased(Point var1);

        @Override
        public void onCaptureAreaTouched(Point var1);
    }

}

