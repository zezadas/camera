/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import android.view.animation.Animation;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.ControllerMessage;
import com.sonyericsson.android.camera.controller.EventAction;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.State;
import com.sonyericsson.android.camera.device.CameraSurfaceHolder;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StateTransitionController
extends CameraFunctions {
    private static final String TAG;
    private SavingRequest mLastSavingRequest;

    static;

    public StateTransitionController(CameraActivity var1, EventDispatcher var2);

    static /* synthetic */ void access$2700(StateTransitionController var0, StoreDataResult var1);

    static /* synthetic */ String access$2800();

    static /* synthetic */ SavingRequest access$2900(StateTransitionController var0);

    static /* synthetic */ SavingRequest access$2902(StateTransitionController var0, SavingRequest var1);

    static /* synthetic */ boolean access$3100(StateTransitionController var0, StoreDataResult var1);

    static /* synthetic */ boolean access$3300(StateTransitionController var0, byte[] var1);

    static /* synthetic */ void access$3400(StateTransitionController var0, ControllerMessage var1);

    static /* synthetic */ void access$3500(StateTransitionController var0, ControllerMessage var1);

    private void launchEditor(StoreDataResult var1);

    private boolean notifyStoreDone(StoreDataResult var1);

    private void openPhotoReviewWindow(ControllerMessage var1);

    private void openVideoReviewWindow(ControllerMessage var1);

    private boolean shouldRestartPreview(ControllerMessage var1);

    private boolean storeImage(byte[] var1);

    protected void cancelAf(Class<? extends State> var1);

    @Override
    public void captureAutoTransition();

    protected void captureInPhotoPreview(ControllerEventSource var1);

    protected void finalizeRec(ControllerMessage var1);

    protected EventAction getEventAction(ControllerMessage var1);

    protected Class<? extends State> getViewFinderState();

    protected Rect getViewRect(ControllerMessage var1);

    protected void launch();

    protected void onVideoInfo(ControllerMessage var1);

    protected void pauseRec(ControllerMessage var1);

    protected void registerStates();

    protected void resumeRec(ControllerMessage var1);

    @Override
    public void setInitState(boolean var1);

    protected void startAf(ControllerEventSource var1, boolean var2);

    protected void startRec(Class<? extends State> var1);

    protected boolean stopBurst(ControllerEventSource var1);

    protected void stopBurstAndGoToViewFinder(ControllerEventSource var1);

    protected void stopBurstAutoTransition(ControllerEventSource var1);

    protected void stopRec(ControllerMessage var1);

    public void stopRecordingUrgently(ControllerMessage var1);

    protected void switchStorage();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AbstractIdle
    extends ActiveState {
        final /* synthetic */ StateTransitionController this$0;

        private AbstractIdle(StateTransitionController var1);

        /* synthetic */ AbstractIdle(StateTransitionController var1,  var2);

        @Override
        public void handleStorageError(ControllerMessage var1);

        @Override
        public void handleSurfaceDestroyed(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class AbstractPreviewing
    extends ActiveState {
        final /* synthetic */ StateTransitionController this$0;

        private AbstractPreviewing(StateTransitionController var1);

        /* synthetic */ AbstractPreviewing(StateTransitionController var1, com.sonyericsson.android.camera.controller.StateTransitionController$1 var2);

        @Override
        public void emergencyExit(ControllerMessage var1);

        @Override
        public void entry();

        @Override
        public void handleClickContentProgress(ControllerMessage var1);

        @Override
        public void handleFaceDetect(ControllerMessage var1);

        @Override
        public void handleFaceDetectChange(ControllerMessage var1);

        @Override
        public void handleObjectTracking(ControllerMessage var1);

        @Override
        public void handleObjectTrackingInvisible(ControllerMessage var1);

        @Override
        public void handleObjectTrackingLost(ControllerMessage var1);

        @Override
        public void handleObjectTrackingStart(ControllerMessage var1);

        protected void handleOpenReviewWindow(ControllerMessage var1);

        protected void handleOpenReviewWindowOrNot(ControllerMessage var1);

        @Override
        public void handleSceneChanged(ControllerMessage var1);

        @Override
        public void handleZoomFinish(ControllerMessage var1);

        @Override
        public void handleZoomPrepare(ControllerMessage var1);

        @Override
        public void handleZoomProgress(ControllerMessage var1);

        @Override
        public void handleZoomStart(ControllerMessage var1);

        @Override
        public void handleZoomStop(ControllerMessage var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class AbstractSearching
    extends ActiveState {
        public boolean mBurstCapture;
        public boolean mCapture;
        final /* synthetic */ StateTransitionController this$0;

        private AbstractSearching(StateTransitionController var1);

        /* synthetic */ AbstractSearching(StateTransitionController var1,  var2);

        @Override
        public void entry();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class AbstractViewFinder
    extends AbstractPreviewing {
        final /* synthetic */ StateTransitionController this$0;

        private AbstractViewFinder(StateTransitionController var1);

        /* synthetic */ AbstractViewFinder(StateTransitionController var1,  var2);

        @Override
        public void emergencyExit(ControllerMessage var1);

        @Override
        public void entry();

        @Override
        public void handleChangeCapturingMode(ControllerMessage var1);

        @Override
        public void handleControllerPause(ControllerMessage var1);

        @Override
        public void handleLaunch(ControllerMessage var1);

        @Override
        public void handleSelfTimerCancel(ControllerMessage var1);

        @Override
        public void handleSelfTimerCountdown(ControllerMessage var1);

        @Override
        public void handleSelfTimerFinish(ControllerMessage var1);

        @Override
        public void handleSelfTimerStart(ControllerMessage var1);

        @Override
        public void handleSmileCapture(ControllerMessage var1);

        @Override
        public void handleStorageShouldChange(ControllerMessage var1);

        @Override
        public void handleStoreDone(ControllerMessage var1);

        @Override
        public void handleSurfaceChanged(ControllerMessage var1);

        @Override
        public void handleZoomFinish(ControllerMessage var1);

        @Override
        public boolean isMenuAvailable();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ActiveState
    extends State {
        final /* synthetic */ StateTransitionController this$0;

        private ActiveState(StateTransitionController var1);

        /* synthetic */ ActiveState(StateTransitionController var1,  var2);

        public void emergencyExit(ControllerMessage var1);

        @Override
        public void entry();

        @Override
        public void handleAbort(ControllerMessage var1);

        @Override
        public void handleDeviceError(ControllerMessage var1);

        @Override
        public void handleReachHighTemperature(ControllerMessage var1);

        @Override
        public void handleStorageError(ControllerMessage var1);

        @Override
        public void handleSurfaceCreated(ControllerMessage var1);

        @Override
        public void handleSurfaceDestroyed(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AfDone
    extends ActiveState {
        final /* synthetic */ StateTransitionController this$0;

        private AfDone(StateTransitionController var1);

        /* synthetic */ AfDone(StateTransitionController var1,  var2);

        @Override
        public void emergencyExit(ControllerMessage var1);

        @Override
        public void handleAfCancel(ControllerMessage var1);

        @Override
        public void handleBurstStart(ControllerMessage var1);

        @Override
        public void handleBurstStop(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleObjectTrackingLost(ControllerMessage var1);

        @Override
        public boolean isBackKeyValid();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AfDoneModelessRecording
    extends AfDone {
        final /* synthetic */ StateTransitionController this$0;

        private AfDoneModelessRecording(StateTransitionController var1);

        /* synthetic */ AfDoneModelessRecording(StateTransitionController var1,  var2);

        @Override
        public void entry();

        @Override
        public void handleAfCancel(ControllerMessage var1);

        @Override
        public void handleBurstStart(ControllerMessage var1);

        @Override
        public void handleBurstStop(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AfSearching
    extends AbstractSearching {
        final /* synthetic */ StateTransitionController this$0;

        private AfSearching(StateTransitionController var1);

        /* synthetic */ AfSearching(StateTransitionController var1,  var2);

        @Override
        public void emergencyExit(ControllerMessage var1);

        @Override
        public void handleAfCancel(ControllerMessage var1);

        @Override
        public void handleAfDone(ControllerMessage var1);

        @Override
        public void handleBurstStart(ControllerMessage var1);

        @Override
        public void handleBurstStop(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleFaceDetectChange(ControllerMessage var1);

        @Override
        public void handleObjectTrackingLost(ControllerMessage var1);

        @Override
        public void handleZoomPrepare(ControllerMessage var1);

        @Override
        public boolean isBackKeyValid();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AfSearchingModelessRecording
    extends AfSearching {
        final /* synthetic */ StateTransitionController this$0;

        private AfSearchingModelessRecording(StateTransitionController var1);

        /* synthetic */ AfSearchingModelessRecording(StateTransitionController var1,  var2);

        @Override
        public void handleAfCancel(ControllerMessage var1);

        @Override
        public void handleAfDone(ControllerMessage var1);

        @Override
        public void handleBurstStart(ControllerMessage var1);

        @Override
        public void handleBurstStop(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class BurstShooting
    extends ActiveState {
        private static final int TIMEOUT_UPDATE_REMAIN = 3000;
        private ExecutorService mExecutor;
        private boolean mShouldOpenReviewWindow;
        final /* synthetic */ StateTransitionController this$0;

        private BurstShooting(StateTransitionController var1);

        /* synthetic */ BurstShooting(StateTransitionController var1,  var2);

        private BurstStorageStatus updateRemain();

        @Override
        public void emergencyExit(ControllerMessage var1);

        @Override
        public void entry();

        @Override
        public void exit();

        @Override
        public void handleAfCancel(ControllerMessage var1);

        @Override
        public void handleBurstCompressedData(ControllerMessage var1);

        @Override
        public void handleBurstStop(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleControllerPause(ControllerMessage var1);

        @Override
        public void handleShutterDone(ControllerMessage var1);

        @Override
        public void handleStoreDone(ControllerMessage var1);

        @Override
        public boolean isBackKeyValid();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class UpdateRemainTask
        implements Callable<Boolean> {
            private final CameraActivity mActivity;
            final /* synthetic */ BurstShooting this$1;

            public UpdateRemainTask(BurstShooting var1, CameraActivity var2);

            @Override
            public Boolean call();
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class BurstStorageStatus
    extends Enum<BurstStorageStatus> {
        private static final /* synthetic */ BurstStorageStatus[] $VALUES;
        public static final /* enum */ BurstStorageStatus STORAGE_FULL;
        public static final /* enum */ BurstStorageStatus STORAGE_READY;
        public static final /* enum */ BurstStorageStatus UNKNOWN;

        static;

        private BurstStorageStatus();

        public static BurstStorageStatus valueOf(String var0);

        public static BurstStorageStatus[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class Capturing
    extends ActiveState {
        private boolean mOpenAutoReviewWindow;
        final /* synthetic */ StateTransitionController this$0;

        private Capturing(StateTransitionController var1);

        /* synthetic */ Capturing(StateTransitionController var1,  var2);

        @Override
        public void entry();

        @Override
        public void exit();

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleCompressedData(ControllerMessage var1);

        @Override
        public void handleControllerPause(ControllerMessage var1);

        @Override
        public void handleShutterDone(ControllerMessage var1);

        @Override
        public void handleStoreDone(ControllerMessage var1);

        @Override
        public boolean isBackKeyValid();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CapturingInManualRecording
    extends Capturing {
        private boolean mStopRecRequested;
        final /* synthetic */ StateTransitionController this$0;

        private CapturingInManualRecording(StateTransitionController var1);

        /* synthetic */ CapturingInManualRecording(StateTransitionController var1,  var2);

        @Override
        public void emergencyExit(ControllerMessage var1);

        @Override
        public void entry();

        @Override
        public void exit();

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleCompressedData(ControllerMessage var1);

        @Override
        public void handleControllerPause(ControllerMessage var1);

        @Override
        public void handleShutterDone(ControllerMessage var1);

        @Override
        public void handleStoreDone(ControllerMessage var1);

        @Override
        public void handleVideoFinished(ControllerMessage var1);

        @Override
        public void handleVideoInfo(ControllerMessage var1);

        @Override
        public void handleVideoProgress(ControllerMessage var1);

        @Override
        public boolean isRecording();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CapturingInManualRecordingPausing
    extends CapturingInManualRecording {
        private boolean mStopRecRequested;
        final /* synthetic */ StateTransitionController this$0;

        private CapturingInManualRecordingPausing(StateTransitionController var1);

        /* synthetic */ CapturingInManualRecordingPausing(StateTransitionController var1,  var2);

        @Override
        public void handleCompressedData(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CapturingInModelessRecording
    extends CapturingInManualRecording {
        private boolean mStopRecRequested;
        final /* synthetic */ StateTransitionController this$0;

        private CapturingInModelessRecording(StateTransitionController var1);

        /* synthetic */ CapturingInModelessRecording(StateTransitionController var1,  var2);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleCompressedData(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CapturingInModelessRecordingPausing
    extends CapturingInManualRecording {
        private boolean mStopRecRequested;
        final /* synthetic */ StateTransitionController this$0;

        private CapturingInModelessRecordingPausing(StateTransitionController var1);

        /* synthetic */ CapturingInModelessRecordingPausing(StateTransitionController var1,  var2);

        @Override
        public void handleCompressedData(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class Error
    extends ActiveState {
        final /* synthetic */ StateTransitionController this$0;

        private Error(StateTransitionController var1);

        /* synthetic */ Error(StateTransitionController var1,  var2);

        @Override
        public void entry();

        @Override
        public void handleDeviceError(ControllerMessage var1);

        @Override
        public void handleReachHighTemperature(ControllerMessage var1);

        @Override
        public void handleStorageError(ControllerMessage var1);

        @Override
        public void handleSurfaceDestroyed(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class Idle
    extends AbstractIdle {
        final /* synthetic */ StateTransitionController this$0;

        private Idle(StateTransitionController var1);

        /* synthetic */ Idle(StateTransitionController var1,  var2);

        @Override
        public void handleSurfaceChanged(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class IdleForFinish
    extends AbstractIdle {
        final /* synthetic */ StateTransitionController this$0;

        private IdleForFinish(StateTransitionController var1);

        /* synthetic */ IdleForFinish(StateTransitionController var1,  var2);

        @Override
        public void entry();

        @Override
        public void handleAbort(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class IdleForResume
    extends AbstractIdle {
        private boolean mSetupFinished;
        private CameraSurfaceHolder mSurfaceHolder;
        private boolean mSurfacePrepared;
        final /* synthetic */ StateTransitionController this$0;

        private IdleForResume(StateTransitionController var1);

        /* synthetic */ IdleForResume(StateTransitionController var1, com.sonyericsson.android.camera.controller.StateTransitionController$1 var2);

        private void checkCondition();

        private void sendGoogleAnalyticsViewEvent();

        @Override
        public void entry();

        @Override
        public void handleCameraSetupFinished(ControllerMessage var1);

        @Override
        public void handleLaunch(ControllerMessage var1);

        @Override
        public void handleSurfaceChanged(ControllerMessage var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ObjectSearching
    extends AbstractSearching {
        final /* synthetic */ StateTransitionController this$0;

        private ObjectSearching(StateTransitionController var1);

        /* synthetic */ ObjectSearching(StateTransitionController var1,  var2);

        @Override
        public void emergencyExit(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleObjectTracking(ControllerMessage var1);

        @Override
        public void handleObjectTrackingLost(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class Pause
    extends ActiveState {
        final /* synthetic */ StateTransitionController this$0;

        private Pause(StateTransitionController var1);

        /* synthetic */ Pause(StateTransitionController var1,  var2);

        @Override
        public void handleChangeCapturingMode(ControllerMessage var1);

        @Override
        public void handleCloseSettingsDialog(ControllerMessage var1);

        @Override
        public void handleControllerResume(ControllerMessage var1);

        @Override
        public void handleKeyBack(ControllerMessage var1);

        @Override
        public void handleStorageError(ControllerMessage var1);

        @Override
        public void handleStorageMounted(ControllerMessage var1);

        @Override
        public void handleStorageShouldChange(ControllerMessage var1);

        @Override
        public void handleStoreDone(ControllerMessage var1);

        @Override
        public void handleSurfaceChanged(ControllerMessage var1);

        @Override
        public boolean isMenuAvailable();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PauseInManualRecording
    extends RecordingManual {
        final /* synthetic */ StateTransitionController this$0;

        private PauseInManualRecording(StateTransitionController var1);

        /* synthetic */ PauseInManualRecording(StateTransitionController var1,  var2);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleSmileCapture(ControllerMessage var1);

        @Override
        public void handleVideoPauseResume(ControllerMessage var1);

        @Override
        public void handleVideoPaused(ControllerMessage var1);

        @Override
        public void handleZoomFinish(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PauseInModelessRecording
    extends PauseInManualRecording {
        final /* synthetic */ StateTransitionController this$0;

        private PauseInModelessRecording(StateTransitionController var1);

        /* synthetic */ PauseInModelessRecording(StateTransitionController var1,  var2);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleSmileCapture(ControllerMessage var1);

        @Override
        public void handleVideoPauseResume(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class RecordingManual
    extends AbstractPreviewing {
        protected Class<? extends State> mStateCapturing;
        protected boolean mStopRecCalled;
        final /* synthetic */ StateTransitionController this$0;

        private RecordingManual(StateTransitionController var1);

        /* synthetic */ RecordingManual(StateTransitionController var1,  var2);

        @Override
        public void emergencyExit(ControllerMessage var1);

        @Override
        public void entry();

        @Override
        public void handleAudioResourceError(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleControllerPause(ControllerMessage var1);

        @Override
        public void handleKeyBack(ControllerMessage var1);

        @Override
        protected void handleOpenReviewWindow(ControllerMessage var1);

        @Override
        public void handleSmileCapture(ControllerMessage var1);

        @Override
        public void handleStorageError(ControllerMessage var1);

        @Override
        public void handleStoreDone(ControllerMessage var1);

        @Override
        public void handleVideoFinished(ControllerMessage var1);

        @Override
        public void handleVideoInfo(ControllerMessage var1);

        @Override
        public void handleVideoPauseResume(ControllerMessage var1);

        @Override
        public void handleVideoProgress(ControllerMessage var1);

        @Override
        public void handleZoomFinish(ControllerMessage var1);

        @Override
        public void handleZoomPrepare(ControllerMessage var1);

        @Override
        public void handleZoomProgress(ControllerMessage var1);

        @Override
        public void handleZoomStart(ControllerMessage var1);

        @Override
        public void handleZoomStop(ControllerMessage var1);

        @Override
        public boolean isBackKeyValid();

        @Override
        public boolean isRecording();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class RecordingModeless
    extends RecordingManual {
        final /* synthetic */ StateTransitionController this$0;

        public RecordingModeless(StateTransitionController var1);

        @Override
        public void handleAudioResourceError(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleVideoPauseResume(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class RecordingModelessFinishing
    extends AbstractSearching {
        protected boolean mIsRecordingFinished;
        final /* synthetic */ StateTransitionController this$0;

        private RecordingModelessFinishing(StateTransitionController var1);

        /* synthetic */ RecordingModelessFinishing(StateTransitionController var1,  var2);

        @Override
        public void entry();

        @Override
        public void exit();

        @Override
        public void handleSurfaceChanged(ControllerMessage var1);

        @Override
        public void handleSurfaceDestroyed(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class RecordingModelessPreparing
    extends AbstractSearching {
        final /* synthetic */ StateTransitionController this$0;

        private RecordingModelessPreparing(StateTransitionController var1);

        /* synthetic */ RecordingModelessPreparing(StateTransitionController var1,  var2);

        @Override
        public void handleSurfaceChanged(ControllerMessage var1);

        @Override
        public void handleSurfaceDestroyed(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StorageWarning
    extends ActiveState {
        final /* synthetic */ StateTransitionController this$0;

        private StorageWarning(StateTransitionController var1);

        /* synthetic */ StorageWarning(StateTransitionController var1,  var2);

        @Override
        public void entry();

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleChangeCapturingMode(ControllerMessage var1);

        @Override
        public void handleControllerPause(ControllerMessage var1);

        @Override
        public void handleStorageError(ControllerMessage var1);

        @Override
        public void handleStorageMounted(ControllerMessage var1);

        @Override
        public void handleStorageShouldChange(ControllerMessage var1);

        @Override
        public boolean isMenuAvailable();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderPhoto
    extends AbstractViewFinder {
        private boolean mOpenAutoReviewWindow;
        final /* synthetic */ StateTransitionController this$0;

        private ViewFinderPhoto(StateTransitionController var1);

        /* synthetic */ ViewFinderPhoto(StateTransitionController var1,  var2);

        @Override
        public boolean canHandleCaptureRequest();

        @Override
        public void entry();

        @Override
        public void exit();

        @Override
        public void handleAfCancel(ControllerMessage var1);

        @Override
        public void handleAfStart(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleCompressedData(ControllerMessage var1);

        @Override
        public void handleFaceDetect(ControllerMessage var1);

        @Override
        public void handleFaceIdentify(ControllerMessage var1);

        @Override
        public void handleFocusPositionCancel(ControllerMessage var1);

        @Override
        public void handleFocusPositionChange(ControllerMessage var1);

        @Override
        public void handleFocusPositionContinue(ControllerMessage var1);

        @Override
        public void handleFocusPositionFinish(ControllerMessage var1);

        @Override
        public void handleFocusPositionStart(ControllerMessage var1);

        @Override
        public void handleObjectTrackingStart(ControllerMessage var1);

        @Override
        public void handleSelfTimerCapture(ControllerMessage var1);

        @Override
        public void handleSelfTimerStart(ControllerMessage var1);

        @Override
        public void handleStoreDone(ControllerMessage var1);

        @Override
        public void handleZoomFinish(ControllerMessage var1);

        @Override
        public void handleZoomPrepare(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderSuperiorAuto
    extends ViewFinderPhoto {
        final /* synthetic */ StateTransitionController this$0;

        private ViewFinderSuperiorAuto(StateTransitionController var1);

        /* synthetic */ ViewFinderSuperiorAuto(StateTransitionController var1,  var2);

        @Override
        public void handleFaceDetectChange(ControllerMessage var1);

        @Override
        public void handleFocusPositionCancel(ControllerMessage var1);

        @Override
        public void handleFocusPositionStart(ControllerMessage var1);

        @Override
        public void handleSelfTimerStart(ControllerMessage var1);

        @Override
        public void handleShutterDone(ControllerMessage var1);

        @Override
        public void handleStorageError(ControllerMessage var1);

        @Override
        public void handleZoomPrepare(ControllerMessage var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderVideo
    extends AbstractViewFinder {
        final /* synthetic */ StateTransitionController this$0;

        private ViewFinderVideo(StateTransitionController var1);

        /* synthetic */ ViewFinderVideo(StateTransitionController var1,  var2);

        @Override
        public void entry();

        @Override
        public void handleAfCancel(ControllerMessage var1);

        @Override
        public void handleAfStart(ControllerMessage var1);

        @Override
        public void handleCapture(ControllerMessage var1);

        @Override
        public void handleSelfTimerCapture(ControllerMessage var1);

        @Override
        public void handleSelfTimerStart(ControllerMessage var1);

        @Override
        public void handleZoomFinish(ControllerMessage var1);
    }

}

