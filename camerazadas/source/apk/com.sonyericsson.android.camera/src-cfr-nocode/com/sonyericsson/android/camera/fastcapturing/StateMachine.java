/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingResult
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionResult
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Handler;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera.burst.BurstShotPathBuilder;
import com.sonyericsson.android.camera.configuration.ConversationReader;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler;
import com.sonyericsson.android.camera.fastcapturing.ChapterThumbnail;
import com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity;
import com.sonyericsson.android.camera.fastcapturing.view.BaseFastViewFinder;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.selftimerfeedback.LedLight;
import com.sonyericsson.cameracommon.selftimerfeedback.SelfTimerFeedback;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.media.recorder.RecorderInterface;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StateMachine
implements SavingRequest.StoreDataCallback,
StorageController.StorageListener {
    private static final int OBJECT_TRACKING_ENGINE_RESET_TIMEOUT_COUNT = 3000;
    private static final int PREPARE_PINCH_ZOOM_TIMEOUT_COUNT = 100;
    private static final int RESUME_TIMEOUT = 5000;
    private static final String TAG;
    FastCapturingActivity mActivity;
    private StoreDataResult mBurstCoverResult;
    private int mBurstPictureCount;
    CameraDeviceHandler mCameraDeviceHandler;
    private ChangeCameraModeTask mChangeCameraModeTask;
    private ChapterThumbnail mChapterThumbnail;
    private ContentsViewController mContentsViewController;
    ConversationReader mConversationReader;
    private CapturingMode mCurrentCapturingMode;
    private State mCurrentState;
    private float mCurrentZoomLength;
    private ExecutorService mExecService;
    private Handler mHandler;
    private boolean mIsInModeLessRecording;
    private boolean mIsStopBurstRequested;
    private PhotoSavingRequest mLastPhotoSavingRequest;
    private VideoSavingRequest mLastVideoSavingRequest;
    private final Runnable mNotifyResumeTimeoutTask;
    private Set<OnStateChangedListener> mOnStateChangedListenerSet;
    private List<PhotoSavingRequest> mPhotoSavingRequestList;
    private final RecorderInterface.RecorderListener mRecorderListener;
    private StartRecordingTask mStartRecordingTask;
    private CapturingMode mTargetCapturingMode;
    private TrackedObjectLostTimeoutTask mTrackedObjectLostTimeoutTask;
    private int mUpdateProgressCount;
    BaseFastViewFinder mViewFinder;

    static;

    public StateMachine(FastCapturingActivity var1);

    static /* synthetic */ void access$000(StateMachine var0, boolean var1);

    static /* synthetic */ boolean access$100(StateMachine var0);

    static /* synthetic */ Runnable access$1000(StateMachine var0);

    static /* synthetic */ boolean access$102(StateMachine var0, boolean var1);

    static /* synthetic */ void access$1100(StateMachine var0, SurfaceHolder var1, FastCapture var2, boolean var3);

    static /* synthetic */ void access$1200(CameraDeviceHandler var0);

    static /* synthetic */ boolean access$1300(StateMachine var0);

    static /* synthetic */ boolean access$1400(StateMachine var0);

    static /* synthetic */ boolean access$1500(StateMachine var0);

    static /* synthetic */ boolean access$1600(StateMachine var0);

    static /* synthetic */ boolean access$1700(StateMachine var0);

    static /* synthetic */ void access$1800(StateMachine var0);

    static /* synthetic */ void access$1900(StateMachine var0);

    static /* synthetic */ int access$200(StateMachine var0);

    static /* synthetic */ void access$2000(StateMachine var0);

    static /* synthetic */ int access$202(StateMachine var0, int var1);

    static /* synthetic */ int access$2100(StateMachine var0);

    static /* synthetic */ void access$2300(StateMachine var0, Point var1);

    static /* synthetic */ void access$2400(StateMachine var0, PointF var1);

    static /* synthetic */ void access$2500(StateMachine var0);

    static /* synthetic */ float access$2602(StateMachine var0, float var1);

    static /* synthetic */ void access$2700(StateMachine var0);

    static /* synthetic */ VideoSavingRequest access$2800(StateMachine var0);

    static /* synthetic */ PhotoSavingRequest access$2900(StateMachine var0);

    static /* synthetic */ void access$300(StateMachine var0, StoreDataResult var1);

    static /* synthetic */ void access$3200(StateMachine var0);

    static /* synthetic */ void access$3400(StateMachine var0);

    static /* synthetic */ void access$3500(StateMachine var0);

    static /* synthetic */ void access$3600(StateMachine var0, boolean var1);

    static /* synthetic */ boolean access$3700(StateMachine var0);

    static /* synthetic */ void access$3800(StateMachine var0, boolean var1);

    static /* synthetic */ void access$3900(StateMachine var0, State var1, boolean var2);

    static /* synthetic */ void access$400(StateMachine var0, StoreDataResult var1);

    static /* synthetic */ void access$4000(StateMachine var0, int var1, float var2);

    static /* synthetic */ void access$4100(StateMachine var0);

    static /* synthetic */ void access$4200(StateMachine var0, PhotoSavingRequest var1);

    static /* synthetic */ ContentsViewController access$4300(StateMachine var0);

    static /* synthetic */ void access$4400(StateMachine var0);

    static /* synthetic */ void access$4500(StateMachine var0);

    static /* synthetic */ void access$4600(StateMachine var0, SavingRequest var1);

    static /* synthetic */ void access$4900(StateMachine var0, boolean var1, boolean var2);

    static /* synthetic */ boolean access$500(StateMachine var0, StoreDataResult var1);

    static /* synthetic */ boolean access$5000(StateMachine var0);

    static /* synthetic */ ChapterThumbnail access$5102(StateMachine var0, ChapterThumbnail var1);

    static /* synthetic */ void access$5200(StateMachine var0);

    static /* synthetic */ void access$5300(StateMachine var0, VideoSavingRequest var1);

    static /* synthetic */ boolean access$5402(StateMachine var0, boolean var1);

    static /* synthetic */ void access$5500(StateMachine var0);

    static /* synthetic */ void access$5600(StateMachine var0);

    static /* synthetic */ void access$5700(StateMachine var0);

    static /* synthetic */ void access$5800(StateMachine var0, int var1, boolean var2, boolean var3);

    static /* synthetic */ CapturingMode access$5902(StateMachine var0, CapturingMode var1);

    static /* synthetic */ String access$600();

    static /* synthetic */ CapturingMode access$6002(StateMachine var0, CapturingMode var1);

    static /* synthetic */ RecorderInterface.RecorderListener access$6200(StateMachine var0);

    static /* synthetic */ void access$6400(StateMachine var0, Object[] var1);

    static /* synthetic */ void access$6500(StateMachine var0, int var1);

    static /* synthetic */ void access$6600(StateMachine var0, PhotoSavingRequest var1);

    static /* synthetic */ List access$6700(StateMachine var0);

    static /* synthetic */ void access$6900(StateMachine var0);

    static /* synthetic */ Handler access$700(StateMachine var0);

    static /* synthetic */ void access$800(StateMachine var0, State var1, Object[] var2);

    private static final void assertNotNull(CameraDeviceHandler var0);

    private void calculateRemainStorage(boolean var1, boolean var2);

    private boolean canInvokePhotoSelfTimer();

    private void cancelAutoFocus(boolean var1);

    private void changeCameraModeTo(int var1, boolean var2, boolean var3);

    private /* varargs */ void changeTo(State var1, Object ... var2);

    private void changeToBackCameraMode();

    private void changeToFrontCameraMode();

    private void checkCallback(SavingRequest var1);

    private void clearBurst();

    private PhotoSavingRequest createBurstSavingRequest(int var1);

    private PhotoSavingRequest createPhotoSavingRequest(SavingTaskManager.SavedFileType var1);

    private TakenStatusCommon createTakenStatusCommon(SavingTaskManager.SavedFileType var1, Rect var2, String var3, String var4, String var5);

    private VideoSavingRequest createVideoSavingRequest(SavingTaskManager.SavedFileType var1);

    private void doCapture();

    private void doCaptureBestEffortBurst(boolean var1);

    private void doCaptureWhileRecording();

    private void doChangeSelectedFace(Point var1);

    private void doDeselectObject();

    private void doFastestCamcord();

    private void doFastestCapture();

    private void doHandleRecordingError();

    private void doPauseRecording();

    private void doResumeRecording();

    private void doSelectObject(PointF var1);

    private void doStartHighSpeedBurst(State var1, boolean var2);

    private /* varargs */ void doStartRecording(Object ... var1);

    private void doStartRecordingInPhotoMode();

    private void doStopBestEffortBurst();

    private boolean doStopHighSpeedBurst();

    private void doStopRecording();

    private void doStopZoom();

    private void doStoreComplete(StoreDataResult var1);

    private void doSuperResolutionZoomIn();

    private void doZoom(int var1, float var2);

    private void doZoomIn();

    private void doZoomOut();

    private int getCameraId(CapturingMode var1);

    private long getMaxDurationMillisecondForCamcord(VideoSize var1, long var2);

    private long getMaxFileSizeBytesForCamcord(VideoSize var1);

    private int getOrientation();

    private boolean isBurstShotEnabled();

    private boolean isLazyInitializationRunning();

    private boolean isPhotoSelfTimerEnabled();

    private boolean isSmoothZoomEnabled();

    private boolean isSuperResolutionZoom();

    private void launchEditor(StoreDataResult var1);

    private static void logPerformance(String var0);

    private void moveToCameraNotAvailable();

    private void notifyStateBlocked();

    private void notifyStateIdle();

    private boolean notifyStoreDone(StoreDataResult var1);

    private void requestPlayAutoFocusSuccessSound(boolean var1);

    private void requestStorePicture(PhotoSavingRequest var1);

    private void requestStoreVideo(VideoSavingRequest var1);

    private void sendGoogleAnalyticsBurstEvent();

    private void sendGoogleAnalyticsCaptureEvents();

    private boolean startAutoFocus();

    private void startFastCapture(SurfaceHolder var1, FastCapture var2, boolean var3);

    private void stopPlaySound();

    private void storePicture(PhotoSavingRequest var1);

    private void switchCamera();

    private void updateDateTaken(SavingRequest var1);

    private void updateRecordingProgress(int var1);

    public void addOnStateChangedListener(OnStateChangedListener var1);

    public boolean canApplicationBeFinished();

    public boolean canCurrentStateHandleAsynchronizedTask();

    public boolean canHandleWearableCaptureRequest();

    public boolean canSwitchPhotoVideoMode();

    public int getCurrentCameraId();

    public Camera.Parameters getCurrentCameraParameters(boolean var1);

    public CaptureState getCurrentCaptureState();

    public CapturingMode getCurrentCapturingMode();

    public final int getSensorOrientation();

    public int getTargetCameraId();

    public CapturingMode getTargetCapturingMode();

    public boolean isDialogOpened();

    public boolean isInModeLessRecording();

    public boolean isInRecordingStartingState();

    public boolean isMenuAvailable();

    public boolean isRecording();

    public boolean isStorageFull();

    public void onAutoFocusDone(boolean var1);

    @Override
    public void onAvailableSizeUpdated(long var1);

    public void onBurstShootingDone();

    public void onBurstStoreComplete(boolean var1);

    @Override
    public void onDestinationToSaveChanged();

    public void onDeviceError(ErrorCode var1, Exception var2);

    public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

    public void onInitialAutoFocusDone(boolean var1);

    public void onNotifyThermalStatus(boolean var1);

    public void onObjectTracked(CameraExtension.ObjectTrackingResult var1);

    public void onPreShutterDone(PhotoSavingRequest var1);

    public void onPreTakePictureDone(byte[] var1, PhotoSavingRequest var2);

    public void onSceneModeChanged(CameraExtension.SceneRecognitionResult var1);

    public void onShutterDone(PhotoSavingRequest var1);

    @Override
    public void onStorageStateChanged(String var1);

    @Override
    public void onStoreComplete(StoreDataResult var1);

    public void onTakePictureDone(byte[] var1, PhotoSavingRequest var2);

    public void onVideoRecordingDone(VideoSavingRequest var1);

    public void onZoomChange(int var1, boolean var2, Camera var3);

    public void releaseContentsViewController();

    public void removeChangeCameraModeTask();

    public void removeOnStateChangedListener(OnStateChangedListener var1);

    public void removeStartRecordingTask();

    public /* varargs */ void sendEvent(TransitterEvent var1, Object ... var2);

    public /* varargs */ void sendStaticEvent(StaticEvent var1, Object ... var2);

    public void sendVideoChapterThumbnailToViewFinder();

    public void setCameraDeviceHandler(CameraDeviceHandler var1);

    public void setCurrentCapturingMode(CapturingMode var1);

    public void setTargetCapturingMode(CapturingMode var1);

    public void setViewFinder(BaseFastViewFinder var1);

    public void showStorageErrorDialogForce();

    public boolean storeCoverResult(StoreDataResult var1);

    protected void switchStorage();

    public boolean tryToSetCameraParameters(Camera.Parameters var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class CaptureState
    extends Enum<CaptureState> {
        private static final /* synthetic */ CaptureState[] $VALUES;
        public static final /* enum */ CaptureState STATE_CAMERA_SWITCHING;
        public static final /* enum */ CaptureState STATE_FINALIZE;
        public static final /* enum */ CaptureState STATE_INITIALIZE;
        public static final /* enum */ CaptureState STATE_NONE;
        public static final /* enum */ CaptureState STATE_PAUSE;
        public static final /* enum */ CaptureState STATE_PHOTO_AF_DONE;
        public static final /* enum */ CaptureState STATE_PHOTO_AF_DONE_IN_TOUCH;
        public static final /* enum */ CaptureState STATE_PHOTO_AF_SEARCH;
        public static final /* enum */ CaptureState STATE_PHOTO_AF_SEARCH_IN_TOUCH;
        public static final /* enum */ CaptureState STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION;
        public static final /* enum */ CaptureState STATE_PHOTO_BASE;
        public static final /* enum */ CaptureState STATE_PHOTO_CAPTURE;
        public static final /* enum */ CaptureState STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST;
        public static final /* enum */ CaptureState STATE_PHOTO_CAPTURE_HI_SPEED_BURST;
        public static final /* enum */ CaptureState STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE;
        public static final /* enum */ CaptureState STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE;
        public static final /* enum */ CaptureState STATE_PHOTO_READY_FOR_RECORDING;
        public static final /* enum */ CaptureState STATE_PHOTO_SELFTIMER_COUNTDOWN;
        public static final /* enum */ CaptureState STATE_PHOTO_STORE;
        public static final /* enum */ CaptureState STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START;
        public static final /* enum */ CaptureState STATE_PHOTO_ZOOMING;
        public static final /* enum */ CaptureState STATE_PHOTO_ZOOMING_BASE;
        public static final /* enum */ CaptureState STATE_PHOTO_ZOOMING_IN_TOUCH;
        public static final /* enum */ CaptureState STATE_RESUME;
        public static final /* enum */ CaptureState STATE_STANDBY;
        public static final /* enum */ CaptureState STATE_STANDBY_DIALOG;
        public static final /* enum */ CaptureState STATE_VIDEO_BASE;
        public static final /* enum */ CaptureState STATE_VIDEO_CAPTURE_WHILE_RECORDING;
        public static final /* enum */ CaptureState STATE_VIDEO_RECORDING;
        public static final /* enum */ CaptureState STATE_VIDEO_RECORDING_PAUSING;
        public static final /* enum */ CaptureState STATE_VIDEO_RECORDING_STARTING;
        public static final /* enum */ CaptureState STATE_VIDEO_STORE;
        public static final /* enum */ CaptureState STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING;
        public static final /* enum */ CaptureState STATE_VIDEO_ZOOMING_BASE;
        public static final /* enum */ CaptureState STATE_VIDEO_ZOOMING_IN_TOUCH_WHILE_RECORDING;
        public static final /* enum */ CaptureState STATE_VIDEO_ZOOMING_WHILE_RECORDING;
        public static final /* enum */ CaptureState STATE_WARNING;
        final boolean mCanApplicationBeFinished;
        final boolean mCanHandleAsynchronizedTask;
        final boolean mCanHandleWearableCaptureRequest;
        final boolean mCanSwitchPhotoVideoMode;

        static;

        private CaptureState(boolean var3, boolean var4, boolean var5, boolean var6);

        public static CaptureState valueOf(String var0);

        public static CaptureState[] values();

        public boolean canApplicationBeFinished();

        public boolean canHandleAsynchronizedTask();

        public boolean canHandleWearableCaptureRequest();

        public boolean canSwitchPhotoVideoMode();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ChangeCameraModeTask
    implements Runnable {
        private final boolean mIsChangeToStandbyRequired;
        private final boolean mIsModelessRecording;
        private final int mRequestCameraType;
        final /* synthetic */ StateMachine this$0;

        public ChangeCameraModeTask(StateMachine var1, int var2, boolean var3, boolean var4);

        @Override
        public void run();

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DoFastestCamcordTask
    implements Runnable {
        final /* synthetic */ StateMachine this$0;

        private DoFastestCamcordTask(StateMachine var1);

        /* synthetic */ DoFastestCamcordTask(StateMachine var1, com.sonyericsson.android.camera.fastcapturing.StateMachine$1 var2);

        @Override
        public void run();

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ErrorCode
    extends Enum<ErrorCode> {
        private static final /* synthetic */ ErrorCode[] $VALUES;
        public static final /* enum */ ErrorCode ERROR_ON_START_PREVIEW;

        static;

        private ErrorCode();

        public static ErrorCode valueOf(String var0);

        public static ErrorCode[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FaceIdCallback
    implements FaceIdentification.FaceIdentificationCallback {
        final /* synthetic */ StateMachine this$0;

        private FaceIdCallback(StateMachine var1);

        /* synthetic */ FaceIdCallback(StateMachine var1,  var2);

        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyDelayedEventTask
    implements Runnable {
        private final Object[] mArgs;
        private final TransitterEvent mEvent;
        final /* synthetic */ StateMachine this$0;

        private NotifyDelayedEventTask(StateMachine var1, TransitterEvent var2, Object[] var3);

        /* synthetic */ NotifyDelayedEventTask(StateMachine var1, TransitterEvent var2, Object[] var3,  var4);

        @Override
        public void run();
    }

    public static interface OnStateChangedListener {
        public /* varargs */ void onStateChanged(CaptureState var1, Object ... var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class RequestStoreTask
    implements Runnable {
        private final PhotoSavingRequest mRequest;
        final /* synthetic */ StateMachine this$0;

        public RequestStoreTask(StateMachine var1, PhotoSavingRequest var2);

        @Override
        public void run();

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StartRecordingTask
    implements Runnable {
        final /* synthetic */ StateMachine this$0;

        private StartRecordingTask(StateMachine var1);

        /* synthetic */ StartRecordingTask(StateMachine var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class State {
        protected CaptureState mCaptureState;
        final /* synthetic */ StateMachine this$0;

        public State(StateMachine var1);

        public void entry();

        public void exit();

        public CaptureState getCaptureState();

        public /* varargs */ void handleCamcordButtonRelease(Object ... var1);

        public /* varargs */ void handleCancelTouchZoom(Object ... var1);

        public /* varargs */ void handleCaptureButtonCancel(Object ... var1);

        public /* varargs */ void handleCaptureButtonLongPress(Object ... var1);

        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        public /* varargs */ void handleCaptureButtonTouch(Object ... var1);

        public /* varargs */ void handleChangeSelectedFace(Object ... var1);

        public /* varargs */ void handleDeselectObjectPosition(Object ... var1);

        public /* varargs */ void handleDialogClosed(Object ... var1);

        public /* varargs */ void handleDialogOpened(Object ... var1);

        public /* varargs */ void handleFinalize(Object ... var1);

        public /* varargs */ void handleInitialize(Object ... var1);

        public /* varargs */ void handleKeyBack(Object ... var1);

        public /* varargs */ void handleKeyCaptureDown(Object ... var1);

        public /* varargs */ void handleKeyCaptureUp(Object ... var1);

        public /* varargs */ void handleKeyFocusDown(Object ... var1);

        public /* varargs */ void handleKeyFocusUp(Object ... var1);

        public /* varargs */ void handleKeyMenu(Object ... var1);

        public /* varargs */ void handleKeyZoomInDown(Object ... var1);

        public /* varargs */ void handleKeyZoomOutDown(Object ... var1);

        public /* varargs */ void handleKeyZoomUp(Object ... var1);

        public /* varargs */ void handleOnAutoFocusDone(Object ... var1);

        public /* varargs */ void handleOnBurstGroupStoreCompleted(Object ... var1);

        public /* varargs */ void handleOnBurstShutterDone(Object ... var1);

        public /* varargs */ void handleOnBurstStoreCompleted(Object ... var1);

        public /* varargs */ void handleOnContinuousPreviewFrameUpdated(Object ... var1);

        public /* varargs */ void handleOnEvfPreparationFailed(Object ... var1);

        public /* varargs */ void handleOnEvfPrepared(Object ... var1);

        public /* varargs */ void handleOnFaceDetected(Object ... var1);

        public /* varargs */ void handleOnFaceIdentified(Object ... var1);

        public /* varargs */ void handleOnInitialAutoFocusDone(Object ... var1);

        public /* varargs */ void handleOnObjectTracked(Object ... var1);

        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... var1);

        public /* varargs */ void handleOnOrientationChanged(Object ... var1);

        public /* varargs */ void handleOnPhotoStackInitialized(Object ... var1);

        public /* varargs */ void handleOnPreShutterDone(Object ... var1);

        public /* varargs */ void handleOnPreTakePictureDone(Object ... var1);

        public /* varargs */ void handleOnPrepareTouchZoomTimedOut(Object ... var1);

        public /* varargs */ void handleOnRecordingError(Object ... var1);

        public /* varargs */ void handleOnRecordingStartWaitDone(Object ... var1);

        public /* varargs */ void handleOnSceneModeChanged(Object ... var1);

        public /* varargs */ void handleOnShutterDone(Object ... var1);

        public /* varargs */ void handleOnStoreCompleted(Object ... var1);

        public /* varargs */ void handleOnStoreRequested(Object ... var1);

        public /* varargs */ void handleOnTakePictureDone(Object ... var1);

        public /* varargs */ void handleOnVideoRecordingDone(Object ... var1);

        public /* varargs */ void handlePause(Object ... var1);

        public /* varargs */ void handlePrepareTouchZoom(Object ... var1);

        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... var1);

        public /* varargs */ void handleResume(Object ... var1);

        public /* varargs */ void handleResumeTimeout(Object ... var1);

        public /* varargs */ void handleScreenClear(Object ... var1);

        public /* varargs */ void handleSetFocusPosition(Object ... var1);

        public /* varargs */ void handleSetSelectedObjectPosition(Object ... var1);

        public /* varargs */ void handleStartAfAfterObjectTracked(Object ... var1);

        public /* varargs */ void handleStartAfSearchInTouch(Object ... var1);

        public /* varargs */ void handleStartAfSearchInTouchStop(Object ... var1);

        public /* varargs */ void handleStartTouchZoom(Object ... var1);

        public /* varargs */ void handleStopTouchZoom(Object ... var1);

        public /* varargs */ void handleStorageError(Object ... var1);

        public /* varargs */ void handleStorageMounted(Object ... var1);

        public /* varargs */ void handleStorageShouldChange(Object ... var1);

        public /* varargs */ void handleSubCamcordButtonCancel(Object ... var1);

        public /* varargs */ void handleSubCamcordButtonRelease(Object ... var1);

        public /* varargs */ void handleSubCamcordButtonTouch(Object ... var1);

        public /* varargs */ void handleSwitchCamera(Object ... var1);

        public void handleTouchContentProgress();

        public boolean isMenuAvailable();

        public boolean isRecording();

        public String toString();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        class ReTrySetupHeadUpDisplayTask
        implements Runnable {
            final /* synthetic */ State this$1;

            ReTrySetupHeadUpDisplayTask(State var1);

            @Override
            public void run();
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateCameraSwitching
    extends State {
        private static final String TAG = "StateMachine.StateCameraSwitching";
        private final FastCapture mFastCapture;
        private boolean mIsLaunch;
        final /* synthetic */ StateMachine this$0;

        public StateCameraSwitching(StateMachine var1);

        public StateCameraSwitching(StateMachine var1, FastCapture var2);

        @Override
        public /* varargs */ void handleOnEvfPreparationFailed(Object ... var1);

        @Override
        public /* varargs */ void handleOnEvfPrepared(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleResumeTimeout(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateFinalize
    extends State {
        final /* synthetic */ StateMachine this$0;

        public StateFinalize(StateMachine var1);

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateInitialize
    extends State {
        final /* synthetic */ StateMachine this$0;

        public StateInitialize(StateMachine var1);

        @Override
        public /* varargs */ void handleOnInitialAutoFocusDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnPreShutterDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnPreTakePictureDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleResume(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateNone
    extends State {
        final /* synthetic */ StateMachine this$0;

        public StateNone(StateMachine var1);

        public StateNone(StateMachine var1, FastCapture var2);

        @Override
        public /* varargs */ void handleInitialize(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePause
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePause";
        final /* synthetic */ StateMachine this$0;

        public StatePause(StateMachine var1);

        @Override
        public /* varargs */ void handleFinalize(Object ... var1);

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... var1);

        @Override
        public /* varargs */ void handleResume(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoAfDone
    extends StatePhotoBase {
        final /* synthetic */ StateMachine this$0;

        public StatePhotoAfDone(StateMachine var1);

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyFocusUp(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoAfDoneInTouch
    extends StatePhotoBase {
        final /* synthetic */ StateMachine this$0;

        public StatePhotoAfDoneInTouch(StateMachine var1);

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonLongPress(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleScreenClear(Object ... var1);

        @Override
        public /* varargs */ void handleStartAfSearchInTouch(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoAfSearch
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoAfSearch";
        final /* synthetic */ StateMachine this$0;

        public StatePhotoAfSearch(StateMachine var1);

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyFocusUp(Object ... var1);

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoAfSearchInTouch
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoAfSearchInTouch";
        private boolean mIsAutoFocusAlreadyCanceled;
        private boolean mIsPreparePinchZoomAlreadyTimedout;
        private boolean mIsUseBurst;
        final /* synthetic */ StateMachine this$0;

        public StatePhotoAfSearchInTouch(StateMachine var1, boolean var2, boolean var3);

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonLongPress(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnPrepareTouchZoomTimedOut(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handlePrepareTouchZoom(Object ... var1);

        @Override
        public /* varargs */ void handleScreenClear(Object ... var1);

        @Override
        public /* varargs */ void handleSetFocusPosition(Object ... var1);

        @Override
        public /* varargs */ void handleStartAfSearchInTouch(Object ... var1);

        @Override
        public /* varargs */ void handleStartAfSearchInTouchStop(Object ... var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoAfSearchInTouchDraggingFocusPosition
    extends StatePhotoBase {
        final /* synthetic */ StateMachine this$0;

        public StatePhotoAfSearchInTouchDraggingFocusPosition(StateMachine var1);

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonTouch(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleScreenClear(Object ... var1);

        @Override
        public /* varargs */ void handleSetFocusPosition(Object ... var1);

        @Override
        public /* varargs */ void handleStartAfSearchInTouchStop(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoBase
    extends State {
        final /* synthetic */ StateMachine this$0;

        public StatePhotoBase(StateMachine var1);

        @Override
        public /* varargs */ void handleOnOrientationChanged(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoCapture
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCapture";
        private boolean mIsNextCaptureRequired;
        final /* synthetic */ StateMachine this$0;

        public StatePhotoCapture(StateMachine var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... var1);

        @Override
        public /* varargs */ void handleOnPreShutterDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnPreTakePictureDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnShutterDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnTakePictureDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoCaptureBestEffortBurst
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCapture";
        private final boolean mIsCalledByKeyEvent;
        private boolean mIsCaptureDone;
        private boolean mIsMemoryErrorOccured;
        private boolean mIsRequestStoreDone;
        private final BurstShotPathBuilder mPathBuilder;
        private boolean mWaitingForAfDone;
        final /* synthetic */ StateMachine this$0;

        public StatePhotoCaptureBestEffortBurst(StateMachine var1, boolean var2, boolean var3);

        private void setStopBurstRequest(boolean var1);

        private void takeNextPicture();

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleKeyCaptureUp(Object ... var1);

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnShutterDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... var1);

        @Override
        public /* varargs */ void handleOnTakePictureDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleScreenClear(Object ... var1);

        @Override
        public /* varargs */ void handleStorageError(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoCaptureHighSpeedBurst
    extends StatePhotoBase {
        private final boolean mIsCalledByKeyEvent;
        private boolean mWaitingForAfDone;
        final /* synthetic */ StateMachine this$0;

        public StatePhotoCaptureHighSpeedBurst(StateMachine var1, boolean var2, boolean var3);

        static /* synthetic */ void access$4800(StatePhotoCaptureHighSpeedBurst var0);

        private void finishBurst();

        private void setStopBurstRequest();

        private void setStopBurstRequest(boolean var1);

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleDialogOpened(Object ... var1);

        @Override
        public /* varargs */ void handleKeyCaptureUp(Object ... var1);

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnBurstGroupStoreCompleted(Object ... var1);

        @Override
        public /* varargs */ void handleOnBurstShutterDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnBurstStoreCompleted(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleScreenClear(Object ... var1);

        @Override
        public /* varargs */ void handleStorageError(Object ... var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class FinishHighSpeedBurstTask
        implements Runnable {
            final /* synthetic */ StatePhotoCaptureHighSpeedBurst this$1;

            private FinishHighSpeedBurstTask(StatePhotoCaptureHighSpeedBurst var1);

            /* synthetic */ FinishHighSpeedBurstTask(StatePhotoCaptureHighSpeedBurst var1,  var2);

            @Override
            public void run();
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoCaptureWaitForAfDone
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCaptureWaitForAfDone";
        private final boolean mIsCalledByKeyEvent;
        private final boolean mIsDirectCaptureRequired;
        private boolean mIsReleaseShutterKey;
        final /* synthetic */ StateMachine this$0;

        public StatePhotoCaptureWaitForAfDone(StateMachine var1, boolean var2, boolean var3);

        @Override
        public /* varargs */ void handleKeyCaptureUp(Object ... var1);

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnInitialAutoFocusDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoCaptureWaitForNextCapture
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCapture";
        private PhotoSavingRequest mCachedRequest;
        private boolean mIsAlreadyPreviousCaptureDone;
        private boolean mIsAlreadyRequestStoreDone;
        private boolean mIsMemoryErrorOccured;
        private boolean mIsNextCaptureRequired;
        final /* synthetic */ StateMachine this$0;

        public StatePhotoCaptureWaitForNextCapture(StateMachine var1);

        private /* varargs */ void checkAndGoToNextCapture(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... var1);

        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... var1);

        @Override
        public /* varargs */ void handleOnTakePictureDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleStorageError(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoReadyForRecording
    extends StatePhotoBase {
        final /* synthetic */ StateMachine this$0;

        public StatePhotoReadyForRecording(StateMachine var1);

        @Override
        public void entry();

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleStorageError(Object ... var1);

        @Override
        public /* varargs */ void handleSubCamcordButtonCancel(Object ... var1);

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... var1);

        @Override
        public boolean isMenuAvailable();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoStandbyDialog
    extends StatePhotoBase {
        final /* synthetic */ StateMachine this$0;

        public StatePhotoStandbyDialog(StateMachine var1);

        @Override
        public /* varargs */ void handleDialogClosed(Object ... var1);

        @Override
        public /* varargs */ void handleDialogOpened(Object ... var1);

        @Override
        public /* varargs */ void handleKeyBack(Object ... var1);

        @Override
        public /* varargs */ void handleKeyMenu(Object ... var1);

        @Override
        public /* varargs */ void handleOnContinuousPreviewFrameUpdated(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleStorageShouldChange(Object ... var1);

        @Override
        public /* varargs */ void handleSwitchCamera(Object ... var1);

        @Override
        public boolean isMenuAvailable();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoStore
    extends StatePhotoBase {
        final /* synthetic */ StateMachine this$0;

        public StatePhotoStore(StateMachine var1);

        @Override
        public /* varargs */ void handleDialogOpened(Object ... var1);

        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoWaitingTrackedObjectForAfStart
    extends State {
        boolean mIsAutoFocusStarted;
        boolean mIsFirstCallback;
        boolean mIsImmediateCaptureRequired;
        final /* synthetic */ StateMachine this$0;

        public StatePhotoWaitingTrackedObjectForAfStart(StateMachine var1);

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleScreenClear(Object ... var1);

        @Override
        public /* varargs */ void handleStartAfAfterObjectTracked(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoZooming
    extends StatePhotoZoomingBase {
        final /* synthetic */ StateMachine this$0;

        public StatePhotoZooming(StateMachine var1);

        @Override
        public /* varargs */ void handleKeyZoomUp(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoZoomingBase
    extends StatePhotoBase {
        final /* synthetic */ StateMachine this$0;

        public StatePhotoZoomingBase(StateMachine var1);

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... var1);

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StatePhotoZoomingInTouch
    extends StatePhotoZoomingBase {
        private final int mStartZoomStep;
        final /* synthetic */ StateMachine this$0;

        public StatePhotoZoomingInTouch(StateMachine var1);

        @Override
        public /* varargs */ void handleCancelTouchZoom(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleScreenClear(Object ... var1);

        @Override
        public /* varargs */ void handleStartTouchZoom(Object ... var1);

        @Override
        public /* varargs */ void handleStopTouchZoom(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateResume
    extends StateCameraSwitching {
        final /* synthetic */ StateMachine this$0;

        public StateResume(StateMachine var1, FastCapture var2);

        @Override
        public /* varargs */ void handleOnInitialAutoFocusDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnPreShutterDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnPreTakePictureDone(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateSelfTimerCountdown
    extends StateStandby {
        private final Runnable mCountdownFinishEvent;
        private SelfTimerFeedback mFeedback;
        private final LedLight mLedLight;
        final /* synthetic */ StateMachine this$0;

        public StateSelfTimerCountdown(StateMachine var1);

        static /* synthetic */ void access$3300(StateSelfTimerCountdown var0);

        private void recoverFlash();

        private void startSelfTimer(SelfTimer var1);

        @Override
        public void entry();

        @Override
        public void exit();

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonTouch(Object ... var1);

        @Override
        public /* varargs */ void handleKeyBack(Object ... var1);

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyFocusDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyZoomInDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyZoomOutDown(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleSetFocusPosition(Object ... var1);

        @Override
        public /* varargs */ void handleStorageError(Object ... var1);

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class CountdownFinishEvent
        implements Runnable {
            final /* synthetic */ StateSelfTimerCountdown this$1;

            private CountdownFinishEvent(StateSelfTimerCountdown var1);

            /* synthetic */ CountdownFinishEvent(StateSelfTimerCountdown var1,  var2);

            @Override
            public void run();
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class LedLightImpl
        implements LedLight {
            final /* synthetic */ StateSelfTimerCountdown this$1;

            private LedLightImpl(StateSelfTimerCountdown var1);

            /* synthetic */ LedLightImpl(StateSelfTimerCountdown var1,  var2);

            @Override
            public void turnOff();

            @Override
            public void turnOn();
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateStandby
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StateStandby";
        private CameraExtension.FaceDetectionResult mLatestFaceDetectionResult;
        private final boolean mWithExtensionFeatures;
        final /* synthetic */ StateMachine this$0;

        public StateStandby(StateMachine var1);

        public StateStandby(StateMachine var1, boolean var2);

        private void sendGoogleAnalyticsViewEvent();

        @Override
        public void entry();

        @Override
        public void exit();

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonTouch(Object ... var1);

        @Override
        public /* varargs */ void handleChangeSelectedFace(Object ... var1);

        @Override
        public /* varargs */ void handleDeselectObjectPosition(Object ... var1);

        @Override
        public /* varargs */ void handleDialogOpened(Object ... var1);

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyFocusDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyMenu(Object ... var1);

        @Override
        public /* varargs */ void handleKeyZoomInDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyZoomOutDown(Object ... var1);

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... var1);

        @Override
        public /* varargs */ void handleOnFaceIdentified(Object ... var1);

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... var1);

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... var1);

        @Override
        public /* varargs */ void handleOnSceneModeChanged(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handlePrepareTouchZoom(Object ... var1);

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... var1);

        @Override
        public /* varargs */ void handleScreenClear(Object ... var1);

        @Override
        public /* varargs */ void handleSetFocusPosition(Object ... var1);

        @Override
        public /* varargs */ void handleSetSelectedObjectPosition(Object ... var1);

        @Override
        public /* varargs */ void handleStartAfAfterObjectTracked(Object ... var1);

        @Override
        public /* varargs */ void handleStorageError(Object ... var1);

        @Override
        public /* varargs */ void handleStorageShouldChange(Object ... var1);

        @Override
        public /* varargs */ void handleSubCamcordButtonTouch(Object ... var1);

        @Override
        public /* varargs */ void handleSwitchCamera(Object ... var1);

        @Override
        public void handleTouchContentProgress();

        @Override
        public boolean isMenuAvailable();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoBase
    extends State {
        final /* synthetic */ StateMachine this$0;

        StateVideoBase(StateMachine var1);

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... var1);

        @Override
        public /* varargs */ void handleOnOrientationChanged(Object ... var1);

        @Override
        public boolean isRecording();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoCaptureWhileRecording
    extends State {
        private final boolean mIsPaused;
        private boolean mIsReturnToVideoRecordingRequired;
        final /* synthetic */ StateMachine this$0;

        public StateVideoCaptureWhileRecording(StateMachine var1, boolean var2);

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... var1);

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... var1);

        @Override
        public /* varargs */ void handleOnShutterDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... var1);

        @Override
        public /* varargs */ void handleOnTakePictureDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleStorageError(Object ... var1);

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... var1);

        @Override
        public boolean isRecording();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoRecording
    extends StateVideoBase {
        private static final String TAG = "StateMachine.StateVideoRecording";
        private boolean mAlreadyRequestStop;
        final /* synthetic */ StateMachine this$0;

        public StateVideoRecording(StateMachine var1);

        public StateVideoRecording(StateMachine var1, boolean var2);

        @Override
        public /* varargs */ void handleCamcordButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleChangeSelectedFace(Object ... var1);

        @Override
        public /* varargs */ void handleDeselectObjectPosition(Object ... var1);

        @Override
        public /* varargs */ void handleKeyBack(Object ... var1);

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyZoomInDown(Object ... var1);

        @Override
        public /* varargs */ void handleKeyZoomOutDown(Object ... var1);

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... var1);

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... var1);

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... var1);

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... var1);

        @Override
        public /* varargs */ void handleOnSceneModeChanged(Object ... var1);

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handlePrepareTouchZoom(Object ... var1);

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... var1);

        @Override
        public /* varargs */ void handleSetSelectedObjectPosition(Object ... var1);

        @Override
        public /* varargs */ void handleStorageError(Object ... var1);

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... var1);

        protected boolean isPaused();

        @Override
        public boolean isRecording();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoRecordingPausing
    extends StateVideoRecording {
        final /* synthetic */ StateMachine this$0;

        public StateVideoRecordingPausing(StateMachine var1);

        @Override
        public /* varargs */ void handleCamcordButtonRelease(Object ... var1);

        @Override
        protected boolean isPaused();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoRecordingStarting
    extends StateVideoBase {
        private boolean mIsImmediatelyRecordingPauseRequired;
        private boolean mIsImmediatelyRecordingStopRequired;
        private boolean mShouldRequestChapterThumbnail;
        final /* synthetic */ StateMachine this$0;

        public StateVideoRecordingStarting(StateMachine var1, boolean var2);

        private boolean isPaused();

        @Override
        public /* varargs */ void handleCamcordButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleKeyBack(Object ... var1);

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... var1);

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... var1);

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... var1);

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... var1);

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... var1);

        @Override
        public /* varargs */ void handleOnRecordingStartWaitDone(Object ... var1);

        @Override
        public /* varargs */ void handleOnSceneModeChanged(Object ... var1);

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... var1);

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... var1);

        @Override
        public boolean isRecording();

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoRecordingStartingFromFastestCamcord
    extends StateVideoRecordingStarting {
        final /* synthetic */ StateMachine this$0;

        public StateVideoRecordingStartingFromFastestCamcord(StateMachine var1, boolean var2);

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoStore
    extends StateVideoBase {
        final /* synthetic */ StateMachine this$0;

        public StateVideoStore(StateMachine var1);

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... var1);

        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoZoomingBase
    extends StateVideoBase {
        final /* synthetic */ StateMachine this$0;

        public StateVideoZoomingBase(StateMachine var1);

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... var1);

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... var1);

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoZoomingInTouchWhileRecording
    extends StateVideoZoomingBase {
        final boolean mIsPaused;
        int mStartZoomStep;
        final /* synthetic */ StateMachine this$0;

        public StateVideoZoomingInTouchWhileRecording(StateMachine var1, boolean var2);

        @Override
        public /* varargs */ void handleCancelTouchZoom(Object ... var1);

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... var1);

        @Override
        public /* varargs */ void handleScreenClear(Object ... var1);

        @Override
        public /* varargs */ void handleStartTouchZoom(Object ... var1);

        @Override
        public /* varargs */ void handleStopTouchZoom(Object ... var1);

        @Override
        public boolean isRecording();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateVideoZoomingWhileRecording
    extends StateVideoZoomingBase {
        private final boolean mIsPaused;
        final /* synthetic */ StateMachine this$0;

        public StateVideoZoomingWhileRecording(StateMachine var1, boolean var2);

        @Override
        public /* varargs */ void handleKeyZoomUp(Object ... var1);

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... var1);

        @Override
        public boolean isRecording();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateWarning
    extends StatePhotoBase {
        final /* synthetic */ StateMachine this$0;

        public StateWarning(StateMachine var1);

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... var1);

        @Override
        public /* varargs */ void handleDialogOpened(Object ... var1);

        @Override
        public /* varargs */ void handleKeyMenu(Object ... var1);

        @Override
        public /* varargs */ void handlePause(Object ... var1);

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... var1);

        @Override
        public /* varargs */ void handleStorageMounted(Object ... var1);

        @Override
        public /* varargs */ void handleStorageShouldChange(Object ... var1);

        @Override
        public /* varargs */ void handleSwitchCamera(Object ... var1);

        @Override
        public boolean isMenuAvailable();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class StaticEvent
    extends Enum<StaticEvent> {
        private static final /* synthetic */ StaticEvent[] $VALUES;
        public static final /* enum */ StaticEvent EVENT_ON_FACE_DETECTED;
        public static final /* enum */ StaticEvent EVENT_ON_FACE_IDENTEFIED;
        public static final /* enum */ StaticEvent EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED;
        public static final /* enum */ StaticEvent EVENT_ON_LAZY_INITIALIZATION_TASK_RUN;
        public static final /* enum */ StaticEvent EVENT_ON_OBJECT_TRACKED;
        public static final /* enum */ StaticEvent EVENT_ON_ORIENTATION_CHANGED;
        public static final /* enum */ StaticEvent EVENT_ON_PHOTO_STACK_INITIALIZED;
        public static final /* enum */ StaticEvent EVENT_ON_SCENE_MODE_CHANGED;

        static;

        private StaticEvent();

        public static StaticEvent valueOf(String var0);

        public static StaticEvent[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class TouchEventSource
    extends Enum<TouchEventSource> {
        private static final /* synthetic */ TouchEventSource[] $VALUES;
        public static final /* enum */ TouchEventSource CAPTURE_AREA;
        public static final /* enum */ TouchEventSource FACE;
        public static final /* enum */ TouchEventSource PHOTO_BUTTON;
        public static final /* enum */ TouchEventSource UNKNOWN;
        public static final /* enum */ TouchEventSource VIDEO_BUTTON;

        static;

        private TouchEventSource();

        public static TouchEventSource valueOf(String var0);

        public static TouchEventSource[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class TrackedObjectLostTimeoutTask
    implements Runnable {
        final /* synthetic */ StateMachine this$0;

        private TrackedObjectLostTimeoutTask(StateMachine var1);

        /* synthetic */ TrackedObjectLostTimeoutTask(StateMachine var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class TransitterEvent
    extends Enum<TransitterEvent> {
        private static final /* synthetic */ TransitterEvent[] $VALUES;
        public static final /* enum */ TransitterEvent EVENT_CAMCORD_BUTTON_RELEASE;
        public static final /* enum */ TransitterEvent EVENT_CANCEL_TOUCH_ZOOM;
        public static final /* enum */ TransitterEvent EVENT_CAPTURE_BUTTON_CANCEL;
        public static final /* enum */ TransitterEvent EVENT_CAPTURE_BUTTON_LONG_PRESS;
        public static final /* enum */ TransitterEvent EVENT_CAPTURE_BUTTON_RELEASE;
        public static final /* enum */ TransitterEvent EVENT_CAPTURE_BUTTON_TOUCH;
        public static final /* enum */ TransitterEvent EVENT_CHANGE_SELECTED_FACE;
        public static final /* enum */ TransitterEvent EVENT_DESELECT_OBJECT_POSITION;
        public static final /* enum */ TransitterEvent EVENT_DIALOG_CLOSED;
        public static final /* enum */ TransitterEvent EVENT_DIALOG_OPENED;
        public static final /* enum */ TransitterEvent EVENT_FINALIZE;
        public static final /* enum */ TransitterEvent EVENT_INITIALIZE;
        public static final /* enum */ TransitterEvent EVENT_KEY_BACK;
        public static final /* enum */ TransitterEvent EVENT_KEY_CAPTURE_DOWN;
        public static final /* enum */ TransitterEvent EVENT_KEY_CAPTURE_UP;
        public static final /* enum */ TransitterEvent EVENT_KEY_FOCUS_DOWN;
        public static final /* enum */ TransitterEvent EVENT_KEY_FOCUS_UP;
        public static final /* enum */ TransitterEvent EVENT_KEY_MENU;
        public static final /* enum */ TransitterEvent EVENT_KEY_ZOOM_IN_DOWN;
        public static final /* enum */ TransitterEvent EVENT_KEY_ZOOM_OUT_DOWN;
        public static final /* enum */ TransitterEvent EVENT_KEY_ZOOM_UP;
        public static final /* enum */ TransitterEvent EVENT_ON_AUTO_FOCUS_DONE;
        public static final /* enum */ TransitterEvent EVENT_ON_BURST_GROUP_STORE_COMPLETED;
        public static final /* enum */ TransitterEvent EVENT_ON_BURST_SHUTTER_DONE;
        public static final /* enum */ TransitterEvent EVENT_ON_BURST_STORE_COMPLETED;
        public static final /* enum */ TransitterEvent EVENT_ON_CONTINUOUS_PREVIEW_FRAME_UPDATED;
        public static final /* enum */ TransitterEvent EVENT_ON_DEVICE_ERROR;
        public static final /* enum */ TransitterEvent EVENT_ON_EVF_PREPARATION_FAILED;
        public static final /* enum */ TransitterEvent EVENT_ON_EVF_PREPARED;
        public static final /* enum */ TransitterEvent EVENT_ON_INITIAL_AUTO_FOCUS_DONE;
        public static final /* enum */ TransitterEvent EVENT_ON_ONE_PREVIEW_FRAME_UPDATED;
        public static final /* enum */ TransitterEvent EVENT_ON_PREPARE_TOUCH_ZOOM_TIMED_OUT;
        public static final /* enum */ TransitterEvent EVENT_ON_PRE_SHUTTER_DONE;
        public static final /* enum */ TransitterEvent EVENT_ON_PRE_TAKE_PICTURE_DONE;
        public static final /* enum */ TransitterEvent EVENT_ON_RECORDING_ERROR;
        public static final /* enum */ TransitterEvent EVENT_ON_RECORDING_START_WAIT_DONE;
        public static final /* enum */ TransitterEvent EVENT_ON_SHUTTER_DONE;
        public static final /* enum */ TransitterEvent EVENT_ON_STORE_COMPLETED;
        public static final /* enum */ TransitterEvent EVENT_ON_STORE_REQUESTED;
        public static final /* enum */ TransitterEvent EVENT_ON_SWITCH_CAMERA;
        public static final /* enum */ TransitterEvent EVENT_ON_TAKE_PICTURE_DONE;
        public static final /* enum */ TransitterEvent EVENT_ON_VIDEO_RECORDING_DONE;
        public static final /* enum */ TransitterEvent EVENT_PAUSE;
        public static final /* enum */ TransitterEvent EVENT_PREPARE_TOUCH_ZOOM;
        public static final /* enum */ TransitterEvent EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY;
        public static final /* enum */ TransitterEvent EVENT_RESUME;
        public static final /* enum */ TransitterEvent EVENT_RESUME_TIMEOUT;
        public static final /* enum */ TransitterEvent EVENT_SCREEN_CLEAR;
        public static final /* enum */ TransitterEvent EVENT_SET_FOCUS_POSITION;
        public static final /* enum */ TransitterEvent EVENT_SET_SELECTED_OBJECT_POSITION;
        public static final /* enum */ TransitterEvent EVENT_START_AF_AFTER_OBJECT_TRACKED;
        public static final /* enum */ TransitterEvent EVENT_START_AF_SEARCH_IN_TOUCH;
        public static final /* enum */ TransitterEvent EVENT_START_AF_SEARCH_IN_TOUCH_STOP;
        public static final /* enum */ TransitterEvent EVENT_START_TOUCH_ZOOM;
        public static final /* enum */ TransitterEvent EVENT_STOP_TOUCH_ZOOM;
        public static final /* enum */ TransitterEvent EVENT_STORAGE_ERROR;
        public static final /* enum */ TransitterEvent EVENT_STORAGE_MOUNTED;
        public static final /* enum */ TransitterEvent EVENT_STORAGE_SHOULD_CHANGE;
        public static final /* enum */ TransitterEvent EVENT_SUB_CAMCORD_BUTTON_CANCEL;
        public static final /* enum */ TransitterEvent EVENT_SUB_CAMCORD_BUTTON_RELEASE;
        public static final /* enum */ TransitterEvent EVENT_SUB_CAMCORD_BUTTON_TOUCH;
        public static final /* enum */ TransitterEvent EVENT_TOUCH_CONTENT_PROGRESS;

        static;

        private TransitterEvent();

        public static TransitterEvent valueOf(String var0);

        public static TransitterEvent[] values();
    }

}

