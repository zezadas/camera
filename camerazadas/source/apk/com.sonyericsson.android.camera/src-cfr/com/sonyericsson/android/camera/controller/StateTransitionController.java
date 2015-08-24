/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionCallback
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionResult
 */
package com.sonyericsson.android.camera.controller;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.view.animation.Animation;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.LaunchConditions;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.ParameterSelectability;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.controller.AutoZoom;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.ControllerMessage;
import com.sonyericsson.android.camera.controller.EventAction;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.controller.FaceDetect;
import com.sonyericsson.android.camera.controller.Inactive;
import com.sonyericsson.android.camera.controller.ObjectTracking;
import com.sonyericsson.android.camera.controller.SceneRecognition;
import com.sonyericsson.android.camera.controller.Selftimer;
import com.sonyericsson.android.camera.controller.Shooting;
import com.sonyericsson.android.camera.controller.State;
import com.sonyericsson.android.camera.controller.TouchFocus;
import com.sonyericsson.android.camera.controller.VideoDevice;
import com.sonyericsson.android.camera.controller.ZoomDirection;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.device.CameraSurfaceHolder;
import com.sonyericsson.android.camera.mediasaving.BurstSavingTaskManager;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.LocalGoogleAnalyticsUtil;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.RectangleColor;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.DcfPathBuilder;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.review.AutoReviewWindow;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.RecordingUtil;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;
import com.sonymobile.cameracommon.media.utility.AudioResourceChecker;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClient;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class StateTransitionController
extends CameraFunctions {
    private static final String TAG = StateTransitionController.class.getSimpleName();
    private SavingRequest mLastSavingRequest = null;

    public StateTransitionController(CameraActivity cameraActivity, EventDispatcher eventDispatcher) {
        super(cameraActivity, eventDispatcher);
        this.registerStates();
    }

    private void launchEditor(StoreDataResult storeDataResult) {
        if (!AutoReviewWindow.isEditorAvailable(this.mCameraActivity, storeDataResult.uri, storeDataResult.savingRequest.common.mimeType)) {
            Executor.setState(this.getViewFinderState());
            return;
        }
        this.mCameraWindow.openReviewWindow(storeDataResult.uri, storeDataResult.savingRequest);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean notifyStoreDone(StoreDataResult storeDataResult) {
        if (storeDataResult == null || storeDataResult.savingRequest == null || this.mLastSavingRequest == null || storeDataResult.savingRequest.getRequestId() != this.mLastSavingRequest.getRequestId()) {
            return false;
        }
        this.mCameraWindow.requestShowIconsOnReviewWindow(storeDataResult);
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void openPhotoReviewWindow(ControllerMessage object) {
        if (this.mCameraActivity.isOneShotPhoto()) {
            do {
                return;
                break;
            } while (true);
        }
        object = (StoreDataResult)object.mArg2;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview[this.getParams().getAutoReview().ordinal()]) {
            case 1: {
                return;
            }
            default: {
                this.mCameraWindow.openReviewWindow(object.uri, object.savingRequest);
                return;
            }
            case 2: 
        }
        this.launchEditor((StoreDataResult)object);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void openVideoReviewWindow(ControllerMessage object) {
        if (this.mCameraActivity.isOneShotVideo()) {
            do {
                return;
                break;
            } while (true);
        }
        object = (StoreDataResult)object.mArg2;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoAutoReview[this.getParams().getVideoAutoReview().ordinal()]) {
            case 1: {
                return;
            }
            default: {
                this.mCameraWindow.openReviewWindow(object.uri, object.savingRequest);
                return;
            }
            case 2: 
        }
        this.launchEditor((StoreDataResult)object);
    }

    private boolean shouldRestartPreview(ControllerMessage controllerMessage) {
        if (controllerMessage != null && controllerMessage.isAbortEvent()) {
            return false;
        }
        return this.shouldRestartPreview(this.mCameraDevice.getPhotoPreviewSize(this.getParams().getResolution()));
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean storeImage(byte[] object) {
        if ((object = this.mShooting.storePicture((byte[])object)) != null && object.common.savedFileType != SavingTaskManager.SavedFileType.PHOTO_DURING_REC) {
            this.mLastSavingRequest = object;
        }
        if (this.mCameraActivity.isOneShot()) {
            return false;
        }
        if (this.mCameraActivity.getWearableBridge() != null) {
            this.mCameraActivity.getWearableBridge().getPhotoStateNotifier().onCaptureSucceeded();
        }
        return true;
    }

    protected void cancelAf(Class<? extends State> class_) {
        this.mShooting.stopAutoFocus();
        this.mCameraWindow.hideOnScreenButton();
        Executor.setState(class_);
    }

    @Override
    public void captureAutoTransition() {
        Executor.postEvent(ControllerEvent.EV_CAPTURE, ControllerEventSource.AUTO_STATE_TRANSITION, 0, null, AfDone.class);
    }

    protected void captureInPhotoPreview(ControllerEventSource controllerEventSource) {
        if (controllerEventSource == null) {
            return;
        }
        switch (controllerEventSource) {
            default: {
                this.startAf(controllerEventSource, true);
                return;
            }
            case VIDEO_BUTTON: 
        }
        this.startRec(RecordingModeless.class);
    }

    protected void finalizeRec(ControllerMessage controllerMessage) {
        this.mCameraWindow.hideRecordingView();
        this.updateSelftimers();
        VideoSavingRequest videoSavingRequest = this.mVideoDevice.getSavingRequest();
        long l = this.mVideoDevice.getRecordingTime();
        videoSavingRequest.setDuration(l);
        videoSavingRequest.setDateTaken(videoSavingRequest.getDateTaken() + l);
        this.releaseVideoDevice();
        this.mCameraActivity.disableAutoOffTimer();
        if (this.mCameraActivity.getStorageManager().isReadable()) {
            if (!VideoStabilizer.isIntelligentActive(this.getParams().getVideoStabilizer())) {
                videoSavingRequest.setRequestId(this.mCameraWindow.getRequestId(true));
            }
            this.mSavingTaskManager.storeVideo(videoSavingRequest);
        }
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RECORDING_STOP, false);
        MeasurePerformance.outResult();
        if (!this.mCameraActivity.isOneShot()) {
            if (this.mControllerManager.getType() == 1 && this.shouldRestartPreview(controllerMessage)) {
                Executor.setState(RecordingModelessFinishing.class);
                this.changeSurfaceSize(1);
            }
        } else {
            return;
        }
        this.finishRecording(controllerMessage);
    }

    protected EventAction getEventAction(ControllerMessage controllerMessage) {
        return (EventAction)controllerMessage.mArg2;
    }

    protected Class<? extends State> getViewFinderState() {
        if (this.mCameraActivity.isOneShotVideo()) {
            return ViewFinderVideo.class;
        }
        CapturingMode capturingMode = this.mControllerManager.getCapturingMode();
        if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
            return ViewFinderSuperiorAuto.class;
        }
        if (capturingMode.getType() == 2) {
            return ViewFinderVideo.class;
        }
        return ViewFinderPhoto.class;
    }

    protected Rect getViewRect(ControllerMessage controllerMessage) {
        return (Rect)controllerMessage.mArg2;
    }

    protected void launch() {
        Executor.setState(this.getViewFinderState());
        Executor.sendEmptyEvent(ControllerEvent.EV_LAUNCH);
    }

    protected void onVideoInfo(ControllerMessage controllerMessage) {
        int n = controllerMessage.mArg1;
        if (n == 800 || n == 801) {
            // empty if block
        }
        this.stopRec(controllerMessage);
    }

    protected void pauseRec(ControllerMessage controllerMessage) {
        if (this.mVideoDevice.isRecording()) {
            this.mVideoDevice.pause();
        }
    }

    protected void registerStates() {
        Executor.registerState(new Error());
        Executor.registerState(new Inactive());
        Executor.registerState(new Idle());
        Executor.registerState(new IdleForResume());
        Executor.registerState(new IdleForFinish());
        Executor.registerState(new AfSearching());
        Executor.registerState(new AfDone());
        Executor.registerState(new AfSearchingModelessRecording());
        Executor.registerState(new AfDoneModelessRecording());
        Executor.registerState(new ObjectSearching());
        Executor.registerState(new Capturing());
        Executor.registerState(new CapturingInManualRecording());
        Executor.registerState(new CapturingInModelessRecording());
        Executor.registerState(new RecordingManual());
        Executor.registerState(new RecordingModeless());
        Executor.registerState(new RecordingModelessFinishing());
        Executor.registerState(new RecordingModelessPreparing());
        Executor.registerState(new BurstShooting());
        Executor.registerState(new StorageWarning());
        Executor.registerState(new Pause());
        Executor.registerState(new ViewFinderSuperiorAuto());
        Executor.registerState(new ViewFinderPhoto());
        Executor.registerState(new ViewFinderVideo());
        Executor.registerState(new PauseInManualRecording());
        Executor.registerState(new PauseInModelessRecording());
        Executor.registerState(new CapturingInManualRecordingPausing());
        Executor.registerState(new CapturingInModelessRecordingPausing());
    }

    protected void resumeRec(ControllerMessage controllerMessage) {
        if (this.mVideoDevice.isPaused()) {
            this.mVideoDevice.resume();
            this.mCameraWindow.showRecordingView();
            this.mCameraWindow.requestToAddVideoChapter(this.mVideoDevice.getSavingRequest().common.orientation);
        }
    }

    @Override
    public void setInitState(boolean bl) {
        if (bl) {
            Executor.setState(IdleForResume.class);
            return;
        }
        Executor.setState(Idle.class);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void startAf(ControllerEventSource controllerEventSource, boolean bl) {
        if (!this.mCameraActivity.updateRemain()) {
            return;
        }
        if (!this.mSavingTaskManager.canPushStoreTask()) return;
        switch (controllerEventSource) {
            case VIDEO_BUTTON: {
                return;
            }
        }
        Executor.setState(AfSearching.class);
        this.mCameraWindow.showAutoFocusView();
        this.mShooting.startAutoFocus(controllerEventSource);
        if (!bl) return;
        this.captureAutoTransition();
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void startRec(Class<? extends State> class_) {
        if (!AudioResourceChecker.isAudioResourceAvailable(this.mCameraActivity)) {
            this.mCameraActivity.getMessagePopup().showOk(2131296645, 2131296402, false, 2131296429, null, null);
            Executor.setState(this.getViewFinderState());
            return;
        }
        if (this.mVideoDevice.isRecording() || this.mCameraActivity.isAlertDialogOpened()) return;
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RECORDING_START, true);
        this.mCameraActivity.pauseAudioPlayback();
        if (this.mControllerManager.getType() == 1) {
            if (this.shouldRestartPreview(this.mCameraDevice.getVideoPreviewSize(this.getParams().getVideoSize()))) {
                Executor.setState(RecordingModelessPreparing.class);
                this.prepareRecording();
                this.changeSurfaceSize(2);
            } else {
                Executor.setState(class_);
                this.prepareRecording();
                this.startModelessRecording();
            }
        } else {
            Executor.setState(class_);
            this.prepareRecording();
            this.startRecording();
        }
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RECORDING_START, false);
        MeasurePerformance.outResult();
    }

    protected boolean stopBurst(ControllerEventSource controllerEventSource) {
        if (this.mBurstShooting.getStartedBy() != controllerEventSource) {
            return false;
        }
        this.mBurstShooting.stop();
        return true;
    }

    protected void stopBurstAndGoToViewFinder(ControllerEventSource controllerEventSource) {
        if (this.stopBurst(controllerEventSource) && this.mBurstShooting.isStopRequested() && !this.mBurstShooting.isCapturing() && this.mBurstShooting.isBurstGroupStoreCompleted()) {
            Executor.setState(this.getViewFinderState());
        }
    }

    protected void stopBurstAutoTransition(ControllerEventSource controllerEventSource) {
        if (controllerEventSource == ControllerEventSource.KEY) {
            Executor.clearAutoDispatchEvent();
            this.stopBurst(controllerEventSource);
            Executor.postEvent(ControllerEvent.EV_CAPTURE, ControllerEventSource.AUTO_STATE_TRANSITION, 0, null, AfDone.class);
            return;
        }
        Executor.postEvent(ControllerEvent.EV_BURST_STOP, controllerEventSource, 0, null, BurstShooting.class);
    }

    protected void stopRec(ControllerMessage object) {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RECORDING_STOP, true);
        if (this.mVideoDevice.isRecording()) {
            this.mVideoDevice.stop();
            object = this.mVideoDevice.getSavingRequest();
            if (this.mCameraActivity.getStorageManager().isReadable() && VideoStabilizer.isIntelligentActive(this.getParams().getVideoStabilizer())) {
                object.setRequestId(this.mCameraWindow.getRequestId(true));
            }
            this.mLastSavingRequest = object;
        }
    }

    public void stopRecordingUrgently(ControllerMessage controllerMessage) {
        if (this.mVideoDevice.isRecording()) {
            this.stopRec(controllerMessage);
        }
        if (this.mVideoDevice.isRecording() || this.mVideoDevice.isRecordStopping()) {
            if (!(controllerMessage == null || controllerMessage.isAbortEvent())) {
                this.mVideoDevice.awaitFinishingRecording();
            }
            this.finalizeRec(controllerMessage);
            if (RecordingUtil.deleteFile(this.mVideoDevice.getOutputFile(), true)) {
                DcfPathBuilder.getInstance().returnUnusedFile();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void switchStorage() {
        if (this.mCameraActivity.getParameterManager().get(ParameterKey.DESTINATION_TO_SAVE) == DestinationToSave.SDCARD) {
            this.mCameraActivity.getParameterManager().set(DestinationToSave.EMMC);
        } else {
            this.mCameraActivity.getParameterManager().set(DestinationToSave.SDCARD);
        }
        this.mCameraActivity.updateSettingDialog();
        ParameterKey.DESTINATION_TO_SAVE.setSelectability(ParameterSelectability.UNAVAILABLE);
    }

    private class AbstractIdle
    extends ActiveState {
        private AbstractIdle() {
            super();
        }

        @Override
        public void handleStorageError(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleSurfaceDestroyed(ControllerMessage controllerMessage) {
        }
    }

    private abstract class AbstractPreviewing
    extends ActiveState {
        private AbstractPreviewing() {
            super();
        }

        @Override
        public void emergencyExit(ControllerMessage controllerMessage) {
            super.emergencyExit(controllerMessage);
            StateTransitionController.this.mAutoZoom.stop();
            StateTransitionController.this.mAutoZoom.finish(ControllerEventSource.OTHER);
        }

        @Override
        public void entry() {
            StateTransitionController.this.mEventDispatcher.resetStatus();
            super.entry();
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void handleClickContentProgress(ControllerMessage object) {
            if (StateTransitionController.this.mLastSavingRequest == null) return;
            if (StateTransitionController.access$2900((StateTransitionController)StateTransitionController.this).common == null) {
                return;
            }
            object = (Uri)object.mArg2;
            if (StateTransitionController.access$2900((StateTransitionController)StateTransitionController.this).common.mimeType != "image/jpeg") {
                if (object == null) return;
                AutoReviewWindow.launchAlbum(StateTransitionController.this.mCameraActivity, (Uri)object, StateTransitionController.access$2900((StateTransitionController)StateTransitionController.this).common.mimeType);
                return;
            }
            if (object == null) {
                StateTransitionController.this.mCameraWindow.openInstantViewer(((PhotoSavingRequest)StateTransitionController.this.mLastSavingRequest).getImageData(), null, StateTransitionController.this.mLastSavingRequest);
                return;
            }
            AutoReviewWindow.launchAlbum(StateTransitionController.this.mCameraActivity, (Uri)object, StateTransitionController.access$2900((StateTransitionController)StateTransitionController.this).common.mimeType);
        }

        @Override
        public void handleFaceDetect(ControllerMessage controllerMessage) {
            StateTransitionController.this.mFaceDetect.updateFaceRectangle((CameraExtension.FaceDetectionResult)controllerMessage.mArg2);
            StateTransitionController.this.mCameraDevice.setFaceDetectionCallback(StateTransitionController.this.mFaceDetect.getFaceDetectionCallback());
        }

        @Override
        public void handleFaceDetectChange(ControllerMessage controllerMessage) {
            StateTransitionController.this.mFaceDetect.changeFocusedFace(((NamedFace)controllerMessage.mArg2).mUuid, ((NamedFace)controllerMessage.mArg2).mFacePosition);
        }

        @Override
        public void handleObjectTracking(ControllerMessage controllerMessage) {
            StateTransitionController.this.mObjectTracking.onObjectTracked((Rect)controllerMessage.mArg2);
        }

        @Override
        public void handleObjectTrackingInvisible(ControllerMessage controllerMessage) {
            StateTransitionController.this.mObjectTracking.invisible();
        }

        @Override
        public void handleObjectTrackingLost(ControllerMessage controllerMessage) {
            StateTransitionController.this.mObjectTracking.stop(true);
        }

        @Override
        public void handleObjectTrackingStart(ControllerMessage controllerMessage) {
            StateTransitionController.this.mObjectTracking.start((Rect)controllerMessage.mArg2);
        }

        protected void handleOpenReviewWindow(ControllerMessage object) {
            object = (StoreDataResult)object.mArg2;
            if (!(StateTransitionController.this.getParams().getVideoAutoReview() == VideoAutoReview.OFF || StateTransitionController.this.mCameraActivity.isOneShot())) {
                try {
                    if (StateTransitionController.this.getParams().getVideoAutoReview() == VideoAutoReview.EDIT) {
                        StateTransitionController.this.launchEditor((StoreDataResult)object);
                        return;
                    }
                    StateTransitionController.this.mCameraWindow.openReviewWindow(object.uri, object.savingRequest);
                    return;
                }
                catch (ActivityNotFoundException var1_2) {
                    CameraLogger.e(TAG, "openReviewWindow: failed.", var1_2);
                    Executor.setState(StateTransitionController.this.getViewFinderState());
                }
            }
        }

        protected void handleOpenReviewWindowOrNot(ControllerMessage controllerMessage) {
            String string = ((StoreDataResult)controllerMessage.mArg2).savingRequest.common.mimeType;
            if (string.equals("video/mp4") || string.equals("video/3gpp")) {
                this.handleOpenReviewWindow(controllerMessage);
                return;
            }
            StateTransitionController.this.mCameraWindow.startHideThumbnail(new Animation.AnimationListener(){

                @Override
                public void onAnimationEnd(Animation animation) {
                    if (StateTransitionController.this.mVideoDevice.isRecording()) {
                        StateTransitionController.this.mCameraWindow.hideThumbnail();
                    }
                    StateTransitionController.this.mIsVideoSmileCapturing = false;
                }

                @Override
                public void onAnimationRepeat(Animation animation) {
                }

                @Override
                public void onAnimationStart(Animation animation) {
                }
            });
        }

        @Override
        public void handleSceneChanged(ControllerMessage controllerMessage) {
            StateTransitionController.this.mSceneRecognition.onRecognizedSceneChanged((CameraExtension.SceneRecognitionResult)controllerMessage.mArg2);
        }

        @Override
        public void handleZoomFinish(ControllerMessage controllerMessage) {
            StateTransitionController.this.mAutoZoom.finish(controllerMessage.mSource);
        }

        @Override
        public void handleZoomPrepare(ControllerMessage controllerMessage) {
            StateTransitionController.this.mAutoZoom.prepare(controllerMessage.mSource);
        }

        @Override
        public void handleZoomProgress(ControllerMessage controllerMessage) {
            StateTransitionController.this.mAutoZoom.onZoomProgress(controllerMessage.mArg1, (Boolean)controllerMessage.mArg2);
        }

        @Override
        public void handleZoomStart(ControllerMessage controllerMessage) {
            StateTransitionController.this.mAutoZoom.start((ZoomDirection)controllerMessage.mArg2);
        }

        @Override
        public void handleZoomStop(ControllerMessage controllerMessage) {
            StateTransitionController.this.mAutoZoom.stop();
        }

    }

    private abstract class AbstractSearching
    extends ActiveState {
        public boolean mBurstCapture;
        public boolean mCapture;

        private AbstractSearching() {
            super();
        }

        @Override
        public void entry() {
            super.entry();
            this.mCapture = false;
            this.mBurstCapture = false;
        }
    }

    private abstract class AbstractViewFinder
    extends AbstractPreviewing {
        private AbstractViewFinder() {
        }

        @Override
        public void emergencyExit(ControllerMessage controllerMessage) {
            super.emergencyExit(controllerMessage);
            StateTransitionController.this.mCurrentSelfTimer.stop(false);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void entry() {
            super.entry();
            Executor.clearAutoDispatchEvent();
            if (StateTransitionController.this.mEventDispatcher.isDragging() && StateTransitionController.this.getParams().getTouchCapture().getBooleanValue().booleanValue()) {
                StateTransitionController.this.mCameraWindow.setRectangleColor(RectangleColor.NORMAL, null);
                if (StateTransitionController.this.getParams().getFocusMode() == FocusMode.TOUCH_FOCUS) {
                    StateTransitionController.this.mEventDispatcher.updateTouchFocusStatus(true);
                } else {
                    StateTransitionController.this.mEventDispatcher.updateTouchCaptureStatus(true);
                }
            } else {
                StateTransitionController.this.startViewFinder();
                if (StateTransitionController.this.mCameraWindow.prepared() && !StateTransitionController.this.mCameraActivity.updateRemain()) {
                    Executor.sendEmptyEvent(ControllerEvent.EV_STORAGE_ERROR);
                }
            }
            StateTransitionController.this.mCameraWindow.setOrientationFollowingSensor();
        }

        @Override
        public void handleChangeCapturingMode(ControllerMessage controllerMessage) {
            StateTransitionController.this.changeCapturingMode((CapturingMode)controllerMessage.mArg2);
        }

        @Override
        public void handleControllerPause(ControllerMessage controllerMessage) {
            StateTransitionController.this.suspendViewFinder();
            Executor.setState(Pause.class);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleLaunch(ControllerMessage controllerMessage) {
            StateTransitionController.this.mAutoZoom.update(StateTransitionController.this.getParams().capturingMode.getCameraId());
            if (!StateTransitionController.this.mCameraWindow.prepared()) {
                StateTransitionController.this.prepareView();
                StateTransitionController.this.mCameraActivity.getStorageManager().updateRemain(0, true);
            } else {
                MeasurePerformance.outResultDelay(1000);
            }
            StateTransitionController.this.doExtraOperation(StateTransitionController.this.mCameraActivity.getExtraOperation());
        }

        @Override
        public void handleSelfTimerCancel(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mCameraActivity.getWearableBridge() != null) {
                StateTransitionController.this.mCameraActivity.getWearableBridge().getPhotoStateNotifier().onCaptureFailed();
            }
            StateTransitionController.this.cancelSelfTimer(false);
            StateTransitionController.this.mEventDispatcher.updateTouchCaptureStatus(false);
        }

        @Override
        public void handleSelfTimerCountdown(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCurrentSelfTimer.countdown(controllerMessage.mArg1);
        }

        @Override
        public void handleSelfTimerFinish(ControllerMessage controllerMessage) {
            StateTransitionController.this.finishSelfTimer();
        }

        @Override
        public void handleSelfTimerStart(ControllerMessage controllerMessage) {
            StateTransitionController.this.startSelfTimer(controllerMessage.mArg1, controllerMessage.mSource);
        }

        @Override
        public void handleSmileCapture(ControllerMessage controllerMessage) {
            Executor.sendEvent(ControllerEvent.EV_AF_START, 1, (Object)ControllerEventSource.OTHER);
            StateTransitionController.this.captureAutoTransition();
        }

        @Override
        public void handleStorageShouldChange(ControllerMessage controllerMessage) {
            StateTransitionController.this.switchStorage();
        }

        @Override
        public void handleStoreDone(ControllerMessage object) {
            if (object == null) {
                return;
            }
            this.handleOpenReviewWindow((ControllerMessage)object);
            object = (StoreDataResult)object.mArg2;
            int n = object.getTextId();
            if (n > 0) {
                StateTransitionController.this.mCameraActivity.getMessagePopup().showRotatableToastMessage(n, 0, RotatableToast.ToastPosition.BOTTOM);
            }
            StateTransitionController.this.notifyStoreDone((StoreDataResult)object);
        }

        @Override
        public void handleSurfaceChanged(ControllerMessage controllerMessage) {
            StateTransitionController.this.startPreview((CameraSurfaceHolder)controllerMessage.mArg2);
            StateTransitionController.this.mSceneRecognition.start();
            StateTransitionController.this.mFaceDetect.enableFaceIdentification(StateTransitionController.this.getParams().getFaceIdentify().getBooleanValue());
            StateTransitionController.this.mFaceDetect.start();
        }

        @Override
        public void handleZoomFinish(ControllerMessage controllerMessage) {
            super.handleZoomFinish(controllerMessage);
            StateTransitionController.this.mCameraWindow.showDefaultView();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean isMenuAvailable() {
            if (StateTransitionController.this.mEventDispatcher.isSelfTimerRunning() || !StateTransitionController.this.mEventDispatcher.isCaptureValid()) {
                return false;
            }
            return true;
        }
    }

    private class ActiveState
    extends State {
        private ActiveState() {
        }

        public void emergencyExit(ControllerMessage controllerMessage) {
        }

        @Override
        public void entry() {
            super.entry();
            StateTransitionController.this.mCameraWindow.setCanSwitchStorage(this.isMenuAvailable());
        }

        @Override
        public void handleAbort(ControllerMessage controllerMessage) {
            this.emergencyExit(controllerMessage);
            Executor.setState(IdleForFinish.class);
            Executor.setState(Inactive.class);
            StateTransitionController.this.mCameraWindow.showDefaultView();
        }

        @Override
        public void handleDeviceError(ControllerMessage controllerMessage) {
            this.emergencyExit(controllerMessage);
            Executor.setState(Error.class);
            if (!StateTransitionController.this.mCameraActivity.isHighTemperature()) {
                StateTransitionController.this.showErrorMessage(controllerMessage.mArg1);
            }
        }

        @Override
        public void handleReachHighTemperature(ControllerMessage controllerMessage) {
            this.emergencyExit(controllerMessage);
            Executor.setState(IdleForFinish.class);
            StateTransitionController.this.mCameraDevice.close();
        }

        @Override
        public void handleStorageError(ControllerMessage controllerMessage) {
            this.emergencyExit(controllerMessage);
            Executor.setState(StorageWarning.class);
        }

        @Override
        public void handleSurfaceCreated(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraWindow.hideBlankScreen();
        }

        @Override
        public void handleSurfaceDestroyed(ControllerMessage controllerMessage) {
            this.emergencyExit(controllerMessage);
            StateTransitionController.this.mCameraDevice.finishPreviewing();
        }
    }

    private class AfDone
    extends ActiveState {
        private AfDone() {
        }

        @Override
        public void emergencyExit(ControllerMessage controllerMessage) {
            super.emergencyExit(controllerMessage);
            StateTransitionController.this.mShooting.stopAutoFocus();
        }

        @Override
        public void handleAfCancel(ControllerMessage controllerMessage) {
            if (controllerMessage.mSource == ControllerEventSource.TOUCH && StateTransitionController.this.mCameraDevice.isObjectTrackingRunning()) {
                return;
            }
            StateTransitionController.this.cancelAf(StateTransitionController.this.getViewFinderState());
        }

        @Override
        public void handleBurstStart(ControllerMessage controllerMessage) {
            Executor.setState(BurstShooting.class);
            if (!StateTransitionController.this.mBurstShooting.start(controllerMessage.mSource)) {
                StateTransitionController.this.cancelAf(StateTransitionController.this.getViewFinderState());
            }
        }

        @Override
        public void handleBurstStop(ControllerMessage controllerMessage) {
            StateTransitionController.this.stopBurstAutoTransition(controllerMessage.mSource);
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            Executor.setState(Capturing.class);
            StateTransitionController.this.mLastSavingRequest = StateTransitionController.this.createImageSavingRequest(SavingTaskManager.SavedFileType.PHOTO);
            StateTransitionController.this.mShooting.takePicture((PhotoSavingRequest)StateTransitionController.this.mLastSavingRequest);
        }

        @Override
        public void handleObjectTrackingLost(ControllerMessage controllerMessage) {
            StateTransitionController.this.cancelAf(StateTransitionController.this.getViewFinderState());
            StateTransitionController.this.mObjectTracking.stop(true);
        }

        @Override
        public boolean isBackKeyValid() {
            return false;
        }
    }

    private class AfDoneModelessRecording
    extends AfDone {
        private AfDoneModelessRecording() {
        }

        @Override
        public void entry() {
            super.entry();
            StateTransitionController.this.mShooting.stopAutoFocus();
        }

        @Override
        public void handleAfCancel(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleBurstStart(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleBurstStop(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (controllerMessage.mSource == ControllerEventSource.AUTO_STATE_TRANSITION) {
                StateTransitionController.this.startRec(RecordingModeless.class);
            }
        }
    }

    private class AfSearching
    extends AbstractSearching {
        private AfSearching() {
        }

        @Override
        public void emergencyExit(ControllerMessage controllerMessage) {
            super.emergencyExit(controllerMessage);
            StateTransitionController.this.mShooting.stopAutoFocus();
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void handleAfCancel(ControllerMessage controllerMessage) {
            if (controllerMessage.mSource == ControllerEventSource.TOUCH && StateTransitionController.this.mCameraDevice.isObjectTrackingRunning()) {
                return;
            }
            StateTransitionController.this.cancelAf(StateTransitionController.this.getViewFinderState());
            if (!this.mBurstCapture) return;
            Executor.cancelEvent(ControllerEvent.EV_BURST_START);
        }

        @Override
        public void handleAfDone(ControllerMessage controllerMessage) {
            StateTransitionController.this.mShooting.onAutoFocus(controllerMessage.mArg1, (AutoFocusListener.Result)controllerMessage.mArg2);
            Executor.setState(AfDone.class);
        }

        @Override
        public void handleBurstStart(ControllerMessage controllerMessage) {
            this.mBurstCapture = true;
            Executor.postEvent(ControllerEvent.EV_BURST_START, controllerMessage.mSource, 0, null, AfDone.class);
        }

        @Override
        public void handleBurstStop(ControllerMessage controllerMessage) {
            StateTransitionController.this.stopBurstAutoTransition(controllerMessage.mSource);
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (this.mBurstCapture) {
                Executor.cancelEvent(ControllerEvent.EV_BURST_START);
            }
            this.mCapture = true;
            StateTransitionController.this.captureAutoTransition();
        }

        @Override
        public void handleFaceDetectChange(ControllerMessage controllerMessage) {
            StateTransitionController.this.restoreFocusMode(true);
            StateTransitionController.this.mFaceDetect.enableFaceIdentification(StateTransitionController.this.getParams().getFaceIdentify().getBooleanValue());
            super.handleFaceDetectChange(controllerMessage);
        }

        @Override
        public void handleObjectTrackingLost(ControllerMessage controllerMessage) {
            if (!this.mCapture) {
                StateTransitionController.this.cancelAf(StateTransitionController.this.getViewFinderState());
                StateTransitionController.this.mObjectTracking.stop(true);
            }
        }

        @Override
        public void handleZoomPrepare(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mShooting.getAfTrigger() == ControllerEventSource.TOUCH && controllerMessage.mSource == ControllerEventSource.TOUCH) {
                StateTransitionController.this.cancelAf(StateTransitionController.this.getViewFinderState());
                Executor.sendEvent(controllerMessage);
            }
        }

        @Override
        public boolean isBackKeyValid() {
            return false;
        }
    }

    private class AfSearchingModelessRecording
    extends AfSearching {
        private AfSearchingModelessRecording() {
        }

        @Override
        public void handleAfCancel(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleAfDone(ControllerMessage controllerMessage) {
            Executor.setState(AfDoneModelessRecording.class);
        }

        @Override
        public void handleBurstStart(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleBurstStop(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
        }
    }

    private class BurstShooting
    extends ActiveState {
        private static final int TIMEOUT_UPDATE_REMAIN = 3000;
        private ExecutorService mExecutor;
        private boolean mShouldOpenReviewWindow;

        private BurstShooting() {
        }

        private BurstStorageStatus updateRemain() {
            Future future = this.mExecutor.submit(new UpdateRemainTask(StateTransitionController.this.mCameraActivity));
            try {
                boolean bl = (Boolean)future.get(3000, TimeUnit.MILLISECONDS);
                if (bl) {
                    return BurstStorageStatus.STORAGE_READY;
                }
            }
            catch (TimeoutException var3_3) {
                CameraLogger.i(TAG, "TimeoutException occurs in checking memory status.");
                BurstStorageStatus burstStorageStatus = BurstStorageStatus.UNKNOWN;
                return burstStorageStatus;
            }
            catch (InterruptedException var3_5) {
                CameraLogger.i(TAG, "InterruptedException occurs in checking memory status.");
                BurstStorageStatus burstStorageStatus = BurstStorageStatus.UNKNOWN;
                return burstStorageStatus;
            }
            catch (ExecutionException var3_7) {
                CameraLogger.i(TAG, "ExecutionException occurs in checking memory status.");
                BurstStorageStatus burstStorageStatus = BurstStorageStatus.UNKNOWN;
                return burstStorageStatus;
            }
            finally {
                future.cancel(false);
            }
            return BurstStorageStatus.STORAGE_FULL;
        }

        @Override
        public void emergencyExit(ControllerMessage controllerMessage) {
            super.emergencyExit(controllerMessage);
            StateTransitionController.this.mBurstShooting.finish();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void entry() {
            super.entry();
            this.mExecutor = Executors.newSingleThreadExecutor();
            this.mShouldOpenReviewWindow = !StateTransitionController.this.mCameraActivity.isOneShot() && StateTransitionController.this.getParams().getAutoReview() != AutoReview.OFF;
            StateTransitionController.this.mCameraWindow.showBurstShootingView();
            StateTransitionController.this.mCameraWindow.disableClickOnThumbnail();
        }

        @Override
        public void exit() {
            super.exit();
            this.mExecutor.shutdown();
            StateTransitionController.this.mShooting.clearCaptureRequest();
            StateTransitionController.this.exitFromShooting();
            if (this.mShouldOpenReviewWindow && StateTransitionController.this.mBurstShooting.getPictureCount() == 1) {
                return;
            }
            StateTransitionController.this.startPreview();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleAfCancel(ControllerMessage controllerMessage) {
            switch (.$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource[controllerMessage.mSource.ordinal()]) {
                case 2: {
                    StateTransitionController.this.stopBurstAndGoToViewFinder(controllerMessage.mSource);
                    return;
                }
                case 4: {
                    if (StateTransitionController.this.getEventAction(controllerMessage) != EventAction.CANCEL) return;
                    {
                        StateTransitionController.this.stopBurstAndGoToViewFinder(controllerMessage.mSource);
                        return;
                    }
                }
                default: {
                    return;
                }
                case 5: 
            }
            if (StateTransitionController.this.getEventAction(controllerMessage) != EventAction.CANCEL) return;
            {
                StateTransitionController.this.stopBurstAndGoToViewFinder(controllerMessage.mSource);
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleBurstCompressedData(ControllerMessage controllerMessage) {
            switch (.$SwitchMap$com$sonyericsson$android$camera$controller$StateTransitionController$BurstStorageStatus[this.updateRemain().ordinal()]) {
                case 1: {
                    if (!StateTransitionController.this.mBurstShooting.isStopRequested()) {
                        StateTransitionController.this.mBurstShooting.requestContinue();
                        return;
                    }
                }
                default: {
                    return;
                }
                case 2: {
                    Executor.sendEmptyEvent(ControllerEvent.EV_STORAGE_ERROR);
                    return;
                }
                case 3: 
            }
            Executor.sendEmptyEvent(ControllerEvent.EV_STORAGE_ERROR);
            this.emergencyExit(controllerMessage);
            Executor.setState(Error.class);
            StateTransitionController.this.mCameraActivity.getMessagePopup().showMemoryErrorAndAbort(2131296411, 2131296402);
        }

        @Override
        public void handleBurstStop(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mBurstShooting.getStartedBy() == controllerMessage.mSource) {
                StateTransitionController.this.mBurstShooting.stop(2);
            }
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            StateTransitionController.this.stopBurst(controllerMessage.mSource);
        }

        @Override
        public void handleControllerPause(ControllerMessage controllerMessage) {
            if (controllerMessage.mArg2 != null && ((Boolean)controllerMessage.mArg2).booleanValue()) {
                Executor.setState(Pause.class);
            }
        }

        @Override
        public void handleShutterDone(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraWindow.countUp(controllerMessage.mArg1);
        }

        @Override
        public void handleStoreDone(ControllerMessage object) {
            StateTransitionController.this.mCameraWindow.onCaptureDone();
            if (this.mShouldOpenReviewWindow && StateTransitionController.this.mBurstShooting.getPictureCount() == 1) {
                object = (StoreDataResult)object.mArg2;
                if (StateTransitionController.this.getParams().getAutoReview() == AutoReview.EDIT) {
                    StateTransitionController.this.launchEditor((StoreDataResult)object);
                    return;
                }
                StateTransitionController.this.mCameraWindow.openReviewWindow(object.uri, object.savingRequest);
                return;
            }
            Executor.setState(StateTransitionController.this.getViewFinderState());
        }

        @Override
        public boolean isBackKeyValid() {
            return false;
        }

        private class UpdateRemainTask
        implements Callable<Boolean> {
            private final CameraActivity mActivity;

            public UpdateRemainTask(CameraActivity cameraActivity) {
                this.mActivity = cameraActivity;
            }

            @Override
            public Boolean call() {
                return this.mActivity.updateRemain();
            }
        }

    }

    private static enum BurstStorageStatus {
        STORAGE_READY,
        STORAGE_FULL,
        UNKNOWN;
        

        private BurstStorageStatus() {
        }
    }

    private class Capturing
    extends ActiveState {
        private boolean mOpenAutoReviewWindow;

        private Capturing() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void entry() {
            super.entry();
            this.mOpenAutoReviewWindow = !StateTransitionController.this.mCameraActivity.isOneShot() && StateTransitionController.this.getParams().getAutoReview() != AutoReview.OFF;
            StateTransitionController.this.mCameraWindow.disableClickOnThumbnail();
        }

        @Override
        public void exit() {
            super.exit();
            StateTransitionController.this.exitFromShooting();
            if (StateTransitionController.this.getParams().getAutoReview() != AutoReview.OFF) {
                return;
            }
            StateTransitionController.this.startPreview();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (controllerMessage.mSource == ControllerEventSource.VIDEO_BUTTON || this.mOpenAutoReviewWindow) {
                return;
            }
            StateTransitionController.this.addCaptureRequest(SavingTaskManager.SavedFileType.PHOTO);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleCompressedData(ControllerMessage controllerMessage) {
            if (!StateTransitionController.this.storeImage((byte[])controllerMessage.mArg2) || this.mOpenAutoReviewWindow || StateTransitionController.this.mShooting.takeNextPicture(StateTransitionController.this.mCameraActivity.updateRemain())) {
                return;
            }
            Executor.setState(StateTransitionController.this.getViewFinderState());
        }

        @Override
        public void handleControllerPause(ControllerMessage controllerMessage) {
            if (controllerMessage.mArg2 != null && ((Boolean)controllerMessage.mArg2).booleanValue()) {
                Executor.setState(Pause.class);
            }
        }

        @Override
        public void handleShutterDone(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraWindow.startCaptureFeedbackAnimation();
        }

        @Override
        public void handleStoreDone(ControllerMessage object) {
            if (StateTransitionController.this.mCameraActivity.isOneShotPhoto()) {
                return;
            }
            object = (StoreDataResult)object.mArg2;
            if (StateTransitionController.this.getParams().getAutoReview() == AutoReview.EDIT) {
                StateTransitionController.this.launchEditor((StoreDataResult)object);
                return;
            }
            StateTransitionController.this.mCameraWindow.openReviewWindow(object.uri, object.savingRequest);
        }

        @Override
        public boolean isBackKeyValid() {
            return false;
        }
    }

    private class CapturingInManualRecording
    extends Capturing {
        private boolean mStopRecRequested;

        private CapturingInManualRecording() {
        }

        @Override
        public void emergencyExit(ControllerMessage controllerMessage) {
            super.emergencyExit(controllerMessage);
            StateTransitionController.this.stopRecordingUrgently(controllerMessage);
        }

        @Override
        public void entry() {
            super.entry();
            this.mStopRecRequested = false;
        }

        @Override
        public void exit() {
            StateTransitionController.this.mShooting.clearCaptureRequest();
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (this.mStopRecRequested) {
                return;
            }
            switch (.$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource[controllerMessage.mSource.ordinal()]) {
                default: {
                    return;
                }
                case 2: 
            }
            StateTransitionController.this.addCaptureRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleCompressedData(ControllerMessage controllerMessage) {
            if (!StateTransitionController.this.storeImage((byte[])controllerMessage.mArg2)) return;
            {
                if (this.mStopRecRequested) {
                    Executor.setState(RecordingManual.class);
                    StateTransitionController.this.onVideoInfo(controllerMessage);
                    return;
                } else {
                    if (StateTransitionController.this.mShooting.takeNextPicture(StateTransitionController.this.mCameraActivity.updateRemain())) return;
                    {
                        Executor.setState(RecordingManual.class);
                        return;
                    }
                }
            }
        }

        @Override
        public void handleControllerPause(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleShutterDone(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleStoreDone(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleVideoFinished(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleVideoInfo(ControllerMessage controllerMessage) {
            this.mStopRecRequested = true;
        }

        @Override
        public void handleVideoProgress(ControllerMessage controllerMessage) {
            StateTransitionController.this.mVideoDevice.update(controllerMessage.mArg1);
        }

        @Override
        public boolean isRecording() {
            return true;
        }
    }

    private class CapturingInManualRecordingPausing
    extends CapturingInManualRecording {
        private boolean mStopRecRequested;

        private CapturingInManualRecordingPausing() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleCompressedData(ControllerMessage controllerMessage) {
            if (!StateTransitionController.this.storeImage((byte[])controllerMessage.mArg2)) return;
            {
                if (this.mStopRecRequested) {
                    StateTransitionController.this.onVideoInfo(controllerMessage);
                    return;
                } else {
                    if (StateTransitionController.this.mShooting.takeNextPicture(StateTransitionController.this.mCameraActivity.updateRemain())) return;
                    {
                        Executor.setState(PauseInManualRecording.class);
                        return;
                    }
                }
            }
        }
    }

    private class CapturingInModelessRecording
    extends CapturingInManualRecording {
        private boolean mStopRecRequested;

        private CapturingInModelessRecording() {
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (this.mStopRecRequested) {
                return;
            }
            switch (.$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource[controllerMessage.mSource.ordinal()]) {
                default: {
                    return;
                }
                case 2: {
                    StateTransitionController.this.addCaptureRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC);
                    return;
                }
                case 3: 
                case 4: 
            }
            StateTransitionController.this.addCaptureRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleCompressedData(ControllerMessage controllerMessage) {
            if (!StateTransitionController.this.storeImage((byte[])controllerMessage.mArg2)) return;
            {
                if (this.mStopRecRequested) {
                    Executor.setState(RecordingModeless.class);
                    StateTransitionController.this.onVideoInfo(controllerMessage);
                    return;
                } else {
                    if (StateTransitionController.this.mShooting.takeNextPicture(StateTransitionController.this.mCameraActivity.updateRemain())) return;
                    {
                        Executor.setState(RecordingModeless.class);
                        return;
                    }
                }
            }
        }
    }

    private class CapturingInModelessRecordingPausing
    extends CapturingInManualRecording {
        private boolean mStopRecRequested;

        private CapturingInModelessRecordingPausing() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleCompressedData(ControllerMessage controllerMessage) {
            if (!StateTransitionController.this.storeImage((byte[])controllerMessage.mArg2)) return;
            {
                if (this.mStopRecRequested) {
                    StateTransitionController.this.onVideoInfo(controllerMessage);
                    return;
                } else {
                    if (StateTransitionController.this.mShooting.takeNextPicture(StateTransitionController.this.mCameraActivity.updateRemain())) return;
                    {
                        Executor.setState(PauseInModelessRecording.class);
                        return;
                    }
                }
            }
        }
    }

    private class Error
    extends ActiveState {
        private Error() {
        }

        @Override
        public void entry() {
            super.entry();
            StateTransitionController.this.prepareForFinish();
            if (StateTransitionController.this.mCameraActivity.isOneShotPhoto()) {
                StateTransitionController.this.finishDelayed();
            }
        }

        @Override
        public void handleDeviceError(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleReachHighTemperature(ControllerMessage controllerMessage) {
            Executor.setState(IdleForFinish.class);
        }

        @Override
        public void handleStorageError(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleSurfaceDestroyed(ControllerMessage controllerMessage) {
        }
    }

    private class Idle
    extends AbstractIdle {
        private Idle() {
        }

        @Override
        public void handleSurfaceChanged(ControllerMessage controllerMessage) {
            StateTransitionController.this.startPreview((CameraSurfaceHolder)controllerMessage.mArg2);
            StateTransitionController.this.launch();
        }
    }

    private class IdleForFinish
    extends AbstractIdle {
        private IdleForFinish() {
        }

        @Override
        public void entry() {
            super.entry();
            StateTransitionController.this.finish();
        }

        @Override
        public void handleAbort(ControllerMessage controllerMessage) {
            Executor.setState(Inactive.class);
        }
    }

    private class IdleForResume
    extends AbstractIdle {
        private boolean mSetupFinished;
        private CameraSurfaceHolder mSurfaceHolder;
        private boolean mSurfacePrepared;

        private IdleForResume() {
        }

        private void checkCondition() {
            if (this.mSurfacePrepared && this.mSetupFinished) {
                if (this.mSurfaceHolder != null) {
                    StateTransitionController.this.setPreviewDisplay(this.mSurfaceHolder);
                    this.mSurfaceHolder = null;
                }
                new Handler().post(new Runnable(){

                    @Override
                    public void run() {
                        Executor.sendEmptyEvent(ControllerEvent.EV_LAUNCH);
                    }
                });
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        private void sendGoogleAnalyticsViewEvent() {
            LaunchConditions launchConditions = StateTransitionController.this.mCameraActivity.getLaunchConditions();
            LaunchConditions.ExtraOperation extraOperation = launchConditions.getExtraOperation();
            boolean bl = LaunchConditions.ExtraOperation.OPEN_SETTINGS_MENU.equals((Object)extraOperation);
            LocalGoogleAnalyticsUtil.getInstance().clear();
            if (bl) {
                LocalGoogleAnalyticsUtil.getInstance().sendView(CustomDimension.GALaunchedBy.FAST_CAPTURING_SETTINGS, launchConditions.getLaunchCapturingMode(), false);
                return;
            }
            LocalGoogleAnalyticsUtil.getInstance().sendView(StateTransitionController.this.mCameraActivity, launchConditions.getLaunchedBy(), launchConditions.getLaunchCapturingMode(), false);
        }

        @Override
        public void entry() {
            super.entry();
            this.mSurfacePrepared = false;
            this.mSurfaceHolder = null;
            this.mSetupFinished = false;
        }

        @Override
        public void handleCameraSetupFinished(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraDevice.clearResumeDeviceTask();
            this.mSetupFinished = true;
            this.checkCondition();
        }

        @Override
        public void handleLaunch(ControllerMessage controllerMessage) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SURFACE_CHANGED_TO_LAUNCH, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RESUME_TO_LAUNCH, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.LAUNCH, true);
            this.sendGoogleAnalyticsViewEvent();
            StateTransitionController.this.launch();
            StateTransitionController.this.mCameraActivity.onCameraReadyToUse();
            StateTransitionController.this.mCameraWindow.startSetupCapturingModeSelectorTask(StateTransitionController.this.getParams());
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.LAUNCH, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.LAUNCH_TO_DISPATCH_DRAW, true);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, false);
        }

        @Override
        public void handleSurfaceChanged(ControllerMessage controllerMessage) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.ON_RESUME_TO_SURFACE_CHANGED, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SURFACE_CHANGED, true);
            this.mSurfacePrepared = true;
            this.mSurfaceHolder = (CameraSurfaceHolder)controllerMessage.mArg2;
            if (!(StateTransitionController.this.mCameraDevice.isOpenCameraDeviceTaskRunning() || StateTransitionController.this.mCameraDevice.isSetupCameraDeviceTaskRunning())) {
                StateTransitionController.this.setPreviewDisplay(this.mSurfaceHolder);
                this.mSurfaceHolder = null;
            }
            this.checkCondition();
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SURFACE_CHANGED, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SURFACE_CHANGED_TO_LAUNCH, true);
        }

    }

    private class ObjectSearching
    extends AbstractSearching {
        private ObjectSearching() {
        }

        @Override
        public void emergencyExit(ControllerMessage controllerMessage) {
            super.emergencyExit(controllerMessage);
            StateTransitionController.this.mObjectTracking.stop(true);
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            this.mCapture = true;
        }

        @Override
        public void handleObjectTracking(ControllerMessage controllerMessage) {
            StateTransitionController.this.mObjectTracking.onObjectTracked((Rect)controllerMessage.mArg2);
            StateTransitionController.this.mCurrentSelfTimer.stop(true);
            StateTransitionController.this.startAf(controllerMessage.mSource, this.mCapture);
        }

        @Override
        public void handleObjectTrackingLost(ControllerMessage controllerMessage) {
            if (!this.mCapture) {
                StateTransitionController.this.mCurrentSelfTimer.stop(false);
                StateTransitionController.this.mObjectTracking.stop(true);
                Executor.setState(StateTransitionController.this.getViewFinderState());
            }
        }
    }

    private class Pause
    extends ActiveState {
        private Pause() {
        }

        @Override
        public void handleChangeCapturingMode(ControllerMessage controllerMessage) {
            StateTransitionController.this.changeCapturingMode((CapturingMode)controllerMessage.mArg2);
        }

        @Override
        public void handleCloseSettingsDialog(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraWindow.closeDialogTemporary();
        }

        @Override
        public void handleControllerResume(ControllerMessage controllerMessage) {
            StateTransitionController.this.startPreview();
            StateTransitionController.this.mCameraActivity.restartAutoOffTimer();
            Executor.setState(StateTransitionController.this.getViewFinderState());
        }

        @Override
        public void handleKeyBack(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraWindow.closeCurrentDialog();
            StateTransitionController.this.mCameraWindow.closeCapturingModeSelector();
        }

        @Override
        public void handleStorageError(ControllerMessage controllerMessage) {
            Executor.sendEmptyEvent(ControllerEvent.EV_CONTROLLER_RESUME);
        }

        @Override
        public void handleStorageMounted(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraWindow.updateSettingDialog();
        }

        @Override
        public void handleStorageShouldChange(ControllerMessage controllerMessage) {
            StateTransitionController.this.switchStorage();
        }

        @Override
        public void handleStoreDone(ControllerMessage controllerMessage) {
            if (controllerMessage != null) {
                StateTransitionController.this.notifyStoreDone((StoreDataResult)controllerMessage.mArg2);
            }
        }

        @Override
        public void handleSurfaceChanged(ControllerMessage controllerMessage) {
            StateTransitionController.this.startPreview((CameraSurfaceHolder)controllerMessage.mArg2);
        }

        @Override
        public boolean isMenuAvailable() {
            return true;
        }
    }

    private class PauseInManualRecording
    extends RecordingManual {
        private PauseInManualRecording() {
            super();
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled || !StateTransitionController.this.mVideoDevice.isRecording()) {
                do {
                    return;
                    break;
                } while (true);
            }
            switch (.$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource[controllerMessage.mSource.ordinal()]) {
                case 5: {
                    return;
                }
                default: {
                    this.mStopRecCalled = true;
                    StateTransitionController.this.stopRec(controllerMessage);
                    return;
                }
                case 2: 
            }
            Executor.setState(CapturingInManualRecordingPausing.class);
            StateTransitionController.this.mShooting.takeScreenShot(StateTransitionController.this.createImageSavingRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC));
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleSmileCapture(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mAutoZoom.isZooming() || StateTransitionController.this.mIsVideoSmileCapturing || this.mStopRecCalled) {
                return;
            }
            StateTransitionController.this.mIsVideoSmileCapturing = true;
            Executor.setState(CapturingInManualRecordingPausing.class);
            StateTransitionController.this.mShooting.takeScreenShot(StateTransitionController.this.createImageSavingRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC));
        }

        @Override
        public void handleVideoPauseResume(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled) {
                return;
            }
            Executor.setState(RecordingManual.class);
            StateTransitionController.this.resumeRec(controllerMessage);
        }

        @Override
        public void handleVideoPaused(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraWindow.showRecordingPausingView();
        }

        @Override
        public void handleZoomFinish(ControllerMessage controllerMessage) {
            super.handleZoomFinish(controllerMessage);
            StateTransitionController.this.mCameraWindow.showRecordingPausingView();
            if (controllerMessage.mSource == ControllerEventSource.TOUCH) {
                StateTransitionController.this.mEventDispatcher.resetStatus();
            }
        }
    }

    private class PauseInModelessRecording
    extends PauseInManualRecording {
        private PauseInModelessRecording() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled || !StateTransitionController.this.mVideoDevice.isRecording()) {
                do {
                    return;
                    break;
                } while (true);
            }
            switch (.$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource[controllerMessage.mSource.ordinal()]) {
                case 5: {
                    return;
                }
                default: {
                    this.mStopRecCalled = true;
                    StateTransitionController.this.stopRec(controllerMessage);
                    return;
                }
                case 2: 
                case 3: 
                case 4: 
            }
            Executor.setState(CapturingInModelessRecordingPausing.class);
            StateTransitionController.this.mShooting.takeScreenShot(StateTransitionController.this.createImageSavingRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC));
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleSmileCapture(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mAutoZoom.isZooming() || StateTransitionController.this.mIsVideoSmileCapturing || this.mStopRecCalled) {
                return;
            }
            StateTransitionController.this.mIsVideoSmileCapturing = true;
            Executor.setState(CapturingInModelessRecordingPausing.class);
            StateTransitionController.this.mShooting.takeScreenShot(StateTransitionController.this.createImageSavingRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC));
        }

        @Override
        public void handleVideoPauseResume(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled) {
                return;
            }
            Executor.setState(RecordingModeless.class);
            StateTransitionController.this.resumeRec(controllerMessage);
        }
    }

    private class RecordingManual
    extends AbstractPreviewing {
        protected Class<? extends State> mStateCapturing;
        protected boolean mStopRecCalled;

        private RecordingManual() {
            this.mStateCapturing = CapturingInManualRecording.class;
        }

        @Override
        public void emergencyExit(ControllerMessage controllerMessage) {
            super.emergencyExit(controllerMessage);
            StateTransitionController.this.stopRecordingUrgently(controllerMessage);
        }

        @Override
        public void entry() {
            super.entry();
            StateTransitionController.this.mCameraWindow.hideThumbnailWhileRecording();
            this.mStopRecCalled = false;
        }

        @Override
        public void handleAudioResourceError(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraActivity.getMessagePopup().showOk(2131296645, 2131296402, false, 2131296429, null, null);
            Executor.setState(StateTransitionController.this.getViewFinderState());
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled || !StateTransitionController.this.mVideoDevice.isRecording()) {
                do {
                    return;
                    break;
                } while (true);
            }
            switch (.$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource[controllerMessage.mSource.ordinal()]) {
                case 5: {
                    return;
                }
                default: {
                    this.mStopRecCalled = true;
                    StateTransitionController.this.stopRec(controllerMessage);
                    return;
                }
                case 2: 
            }
            Executor.setState(CapturingInManualRecording.class);
            StateTransitionController.this.mShooting.takeScreenShot(StateTransitionController.this.createImageSavingRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC));
        }

        @Override
        public void handleControllerPause(ControllerMessage controllerMessage) {
            if (controllerMessage.mArg2 != null && ((Boolean)controllerMessage.mArg2).booleanValue()) {
                Executor.setState(Pause.class);
            }
        }

        @Override
        public void handleKeyBack(ControllerMessage controllerMessage) {
            this.mStopRecCalled = true;
            StateTransitionController.this.stopRec(controllerMessage);
        }

        @Override
        protected void handleOpenReviewWindow(ControllerMessage controllerMessage) {
            super.handleOpenReviewWindow(controllerMessage);
            if (StateTransitionController.this.getParams().getVideoAutoReview() == VideoAutoReview.OFF) {
                Executor.setState(StateTransitionController.this.getViewFinderState());
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleSmileCapture(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mAutoZoom.isZooming() || StateTransitionController.this.mIsVideoSmileCapturing || this.mStopRecCalled) {
                return;
            }
            StateTransitionController.this.mIsVideoSmileCapturing = true;
            Executor.setState(this.mStateCapturing);
            StateTransitionController.this.mShooting.takeScreenShot(StateTransitionController.this.createImageSavingRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC));
        }

        @Override
        public void handleStorageError(ControllerMessage controllerMessage) {
            this.emergencyExit(controllerMessage);
            StateTransitionController.this.mCameraDevice.restoreSettingAfterRecording();
            Executor.setState(StorageWarning.class);
        }

        @Override
        public void handleStoreDone(ControllerMessage controllerMessage) {
            if (controllerMessage != null) {
                this.handleOpenReviewWindowOrNot(controllerMessage);
                StateTransitionController.this.notifyStoreDone((StoreDataResult)controllerMessage.mArg2);
            }
        }

        @Override
        public void handleVideoFinished(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraDevice.restoreSettingAfterRecording();
            StateTransitionController.this.finalizeRec(controllerMessage);
        }

        @Override
        public void handleVideoInfo(ControllerMessage controllerMessage) {
            this.mStopRecCalled = true;
            StateTransitionController.this.onVideoInfo(controllerMessage);
        }

        @Override
        public void handleVideoPauseResume(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled) {
                return;
            }
            Executor.setState(PauseInManualRecording.class);
            StateTransitionController.this.pauseRec(controllerMessage);
        }

        @Override
        public void handleVideoProgress(ControllerMessage controllerMessage) {
            StateTransitionController.this.mVideoDevice.update(controllerMessage.mArg1);
        }

        @Override
        public void handleZoomFinish(ControllerMessage controllerMessage) {
            super.handleZoomFinish(controllerMessage);
            StateTransitionController.this.mCameraWindow.showRecordingView();
            if (controllerMessage.mSource == ControllerEventSource.TOUCH) {
                StateTransitionController.this.mEventDispatcher.resetStatus();
            }
        }

        @Override
        public void handleZoomPrepare(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled) {
                return;
            }
            super.handleZoomPrepare(controllerMessage);
        }

        @Override
        public void handleZoomProgress(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled) {
                return;
            }
            super.handleZoomProgress(controllerMessage);
        }

        @Override
        public void handleZoomStart(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled) {
                return;
            }
            super.handleZoomStart(controllerMessage);
        }

        @Override
        public void handleZoomStop(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled) {
                return;
            }
            super.handleZoomStop(controllerMessage);
        }

        @Override
        public boolean isBackKeyValid() {
            if (StateTransitionController.this.mAutoZoom.isZooming()) {
                return false;
            }
            return super.isBackKeyValid();
        }

        @Override
        public boolean isRecording() {
            return true;
        }
    }

    private class RecordingModeless
    extends RecordingManual {
        public RecordingModeless() {
            this.mStateCapturing = CapturingInModelessRecording.class;
        }

        @Override
        public void handleAudioResourceError(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraActivity.getMessagePopup().showOk(2131296645, 2131296402, false, 2131296429, null, null);
            Executor.setState(StateTransitionController.this.getViewFinderState());
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled) return;
            if (!StateTransitionController.this.mVideoDevice.isRecording()) {
                return;
            }
            switch (controllerMessage.mSource) {
                default: {
                    if (StateTransitionController.this.mCameraActivity.getParameterManager().getParameters().getVideoSize() == VideoSize.MMS) return;
                    Executor.setState(CapturingInModelessRecording.class);
                    StateTransitionController.this.mShooting.takeScreenShot(StateTransitionController.this.createImageSavingRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC));
                    return;
                }
                case VIDEO_BUTTON: 
            }
            this.mStopRecCalled = true;
            StateTransitionController.this.stopRec(controllerMessage);
        }

        @Override
        public void handleVideoPauseResume(ControllerMessage controllerMessage) {
            if (this.mStopRecCalled) {
                return;
            }
            Executor.setState(PauseInModelessRecording.class);
            StateTransitionController.this.pauseRec(controllerMessage);
        }
    }

    private class RecordingModelessFinishing
    extends AbstractSearching {
        protected boolean mIsRecordingFinished;

        private RecordingModelessFinishing() {
        }

        @Override
        public void entry() {
            super.entry();
            this.mIsRecordingFinished = false;
        }

        @Override
        public void exit() {
            super.exit();
            if (!this.mIsRecordingFinished) {
                StateTransitionController.this.finishRecording(null);
            }
        }

        @Override
        public void handleSurfaceChanged(ControllerMessage controllerMessage) {
            if (((CameraSurfaceHolder)controllerMessage.mArg2).getWidth() == StateTransitionController.this.mCameraWindow.getSurfaceRect().width()) {
                StateTransitionController.this.finishRecording(null);
                this.mIsRecordingFinished = true;
                Executor.setState(StateTransitionController.this.getViewFinderState());
            }
        }

        @Override
        public void handleSurfaceDestroyed(ControllerMessage controllerMessage) {
        }
    }

    private class RecordingModelessPreparing
    extends AbstractSearching {
        private RecordingModelessPreparing() {
        }

        @Override
        public void handleSurfaceChanged(ControllerMessage object) {
            object = (CameraSurfaceHolder)object.mArg2;
            if (object.getWidth() == StateTransitionController.this.mCameraWindow.getSurfaceRect().width()) {
                StateTransitionController.this.startPreview((CameraSurfaceHolder)object);
                Executor.setState(RecordingModeless.class);
                StateTransitionController.this.startModelessRecording();
            }
        }

        @Override
        public void handleSurfaceDestroyed(ControllerMessage controllerMessage) {
        }
    }

    private class StorageWarning
    extends ActiveState {
        private StorageWarning() {
        }

        @Override
        public void entry() {
            super.entry();
            StateTransitionController.this.mEventDispatcher.resetStatus();
            StateTransitionController.this.mObjectTracking.stop(true);
            StateTransitionController.this.mTouchFocus.clear();
            StateTransitionController.this.mSceneRecognition.stop();
            StateTransitionController.this.mCameraWindow.showStorageWarningView();
            StateTransitionController.this.mFaceDetect.enableFaceIdentification(false);
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraWindow.onCaptureDone();
        }

        @Override
        public void handleChangeCapturingMode(ControllerMessage controllerMessage) {
            StateTransitionController.this.changeCapturingMode((CapturingMode)controllerMessage.mArg2);
        }

        @Override
        public void handleControllerPause(ControllerMessage controllerMessage) {
            Executor.setState(Pause.class);
            StateTransitionController.this.suspendViewFinder();
        }

        @Override
        public void handleStorageError(ControllerMessage controllerMessage) {
        }

        @Override
        public void handleStorageMounted(ControllerMessage controllerMessage) {
            Executor.setState(StateTransitionController.this.getViewFinderState());
        }

        @Override
        public void handleStorageShouldChange(ControllerMessage controllerMessage) {
            StateTransitionController.this.switchStorage();
        }

        @Override
        public boolean isMenuAvailable() {
            return true;
        }
    }

    private class ViewFinderPhoto
    extends AbstractViewFinder {
        private boolean mOpenAutoReviewWindow;

        private ViewFinderPhoto() {
        }

        @Override
        public boolean canHandleCaptureRequest() {
            if (!StateTransitionController.this.mAutoZoom.isZooming()) {
                return true;
            }
            return false;
        }

        @Override
        public void entry() {
            StateTransitionController.this.mCameraActivity.notifyStateIdleToWearable();
            super.entry();
            if (!(StateTransitionController.this.mCameraActivity.isOneShot() || StateTransitionController.this.getParams().getAutoReview() == AutoReview.OFF)) {
                this.mOpenAutoReviewWindow = true;
                return;
            }
            this.mOpenAutoReviewWindow = false;
        }

        @Override
        public void exit() {
            super.exit();
            StateTransitionController.this.mCameraActivity.notifyStateBlockedToWearable();
        }

        @Override
        public void handleAfCancel(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mEventDispatcher.isSelfTimerRunning()) {
                StateTransitionController.this.cancelSelfTimer(false);
            }
            if (controllerMessage.mSource == ControllerEventSource.VIDEO_BUTTON) {
                StateTransitionController.this.mCameraWindow.showDefaultView();
            }
        }

        @Override
        public void handleAfStart(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mEventDispatcher.isSelfTimerRunning()) {
                StateTransitionController.this.mCurrentSelfTimer.stop(true);
                StateTransitionController.this.consumeSelfTimer(controllerMessage.mSource, true);
            }
            StateTransitionController.this.startAf(controllerMessage.mSource, false);
            if (controllerMessage.mSource == ControllerEventSource.VIDEO_BUTTON) {
                StateTransitionController.this.mCameraWindow.showReadyForRecordView();
            }
        }

        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (!StateTransitionController.this.mCameraActivity.updateRemain()) {
                return;
            }
            if (StateTransitionController.this.mEventDispatcher.isSelfTimerRunning()) {
                if (controllerMessage.mSource == ControllerEventSource.VIDEO_BUTTON && StateTransitionController.this.mParameterManager.isVideoSelfTimerOn()) {
                    StateTransitionController.this.selfTimerCapture(controllerMessage.mSource);
                    return;
                }
                StateTransitionController.this.mCurrentSelfTimer.stop(true);
            }
            StateTransitionController.this.captureInPhotoPreview(controllerMessage.mSource);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleCompressedData(ControllerMessage controllerMessage) {
            if (!(StateTransitionController.this.storeImage((byte[])controllerMessage.mArg2) && !this.mOpenAutoReviewWindow && StateTransitionController.this.mShooting.takeNextPicture(StateTransitionController.this.mCameraActivity.updateRemain()))) {
                return;
            }
        }

        @Override
        public void handleFaceDetect(ControllerMessage controllerMessage) {
            super.handleFaceDetect(controllerMessage);
            StateTransitionController.this.mFaceDetect.requestFaceId((CameraExtension.FaceDetectionResult)controllerMessage.mArg2);
        }

        @Override
        public void handleFaceIdentify(ControllerMessage controllerMessage) {
            StateTransitionController.this.mFaceDetect.updateFaceIdentify((List)controllerMessage.mArg2);
        }

        @Override
        public void handleFocusPositionCancel(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraActivity.notifyStateIdleToWearable();
            StateTransitionController.this.mTouchFocus.clear();
            StateTransitionController.this.mCameraWindow.showDefaultView();
            StateTransitionController.this.updateStatus();
        }

        @Override
        public void handleFocusPositionChange(ControllerMessage controllerMessage) {
            StateTransitionController.this.mTouchFocus.setFocusPosition(StateTransitionController.this.getViewRect(controllerMessage));
        }

        @Override
        public void handleFocusPositionContinue(ControllerMessage controllerMessage) {
            StateTransitionController.this.mTouchFocus.updateTouchFocusRectangle(StateTransitionController.this.getViewRect(controllerMessage));
        }

        @Override
        public void handleFocusPositionFinish(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraActivity.notifyStateIdleToWearable();
            StateTransitionController.this.mCameraWindow.showDefaultView();
            StateTransitionController.this.mTouchFocus.finish(StateTransitionController.this.getViewRect(controllerMessage));
        }

        @Override
        public void handleFocusPositionStart(ControllerMessage controllerMessage) {
            StateTransitionController.this.mTouchFocus.start(StateTransitionController.this.getViewRect(controllerMessage));
            StateTransitionController.this.mCameraActivity.notifyStateBlockedToWearable();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleObjectTrackingStart(ControllerMessage controllerMessage) {
            super.handleObjectTrackingStart(controllerMessage);
            if (StateTransitionController.this.mParameterManager.isSelfTimerOn() || StateTransitionController.this.mParameterManager.isVideoSelfTimerOn() || !StateTransitionController.this.getParams().getTouchCapture().getBooleanValue().booleanValue()) {
                return;
            }
            Executor.setState(ObjectSearching.class);
        }

        @Override
        public void handleSelfTimerCapture(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mCameraActivity.updateRemain()) {
                StateTransitionController.this.consumeSelfTimer(controllerMessage.mSource, false);
                StateTransitionController.this.captureInPhotoPreview(controllerMessage.mSource);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleSelfTimerStart(ControllerMessage controllerMessage) {
            StateTransitionController.this.mEventDispatcher.updateTouchCaptureStatus(false);
            if (controllerMessage.mArg2 != null) {
                Rect rect = StateTransitionController.this.getViewRect(controllerMessage);
                switch (StateTransitionController.this.getParams().getFocusMode()) {
                    default: {
                        break;
                    }
                    case TOUCH_FOCUS: {
                        StateTransitionController.this.mTouchFocus.finish(rect);
                    }
                }
            }
            StateTransitionController.this.startSelfTimer(controllerMessage.mArg1, controllerMessage.mSource);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleStoreDone(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mCameraActivity.isOneShotPhoto()) {
                return;
            }
            StoreDataResult storeDataResult = (StoreDataResult)controllerMessage.mArg2;
            String string = storeDataResult.savingRequest.common.mimeType;
            if (string.equals("video/mp4") || string.equals("video/3gpp")) {
                StateTransitionController.this.openVideoReviewWindow(controllerMessage);
            } else if (string.equals("image/jpeg")) {
                StateTransitionController.this.openPhotoReviewWindow(controllerMessage);
            }
            StateTransitionController.this.notifyStoreDone(storeDataResult);
        }

        @Override
        public void handleZoomFinish(ControllerMessage controllerMessage) {
            StateTransitionController.this.mCameraActivity.notifyStateIdleToWearable();
            super.handleZoomFinish(controllerMessage);
        }

        @Override
        public void handleZoomPrepare(ControllerMessage controllerMessage) {
            StateTransitionController.this.mEventDispatcher.updateTouchCaptureStatus(false);
            StateTransitionController.this.mTouchFocus.clear();
            StateTransitionController.this.mAutoZoom.prepare(controllerMessage.mSource);
        }
    }

    private class ViewFinderSuperiorAuto
    extends ViewFinderPhoto {
        private ViewFinderSuperiorAuto() {
        }

        @Override
        public void handleFaceDetectChange(ControllerMessage controllerMessage) {
            StateTransitionController.this.restoreFocusMode(true);
            StateTransitionController.this.mFaceDetect.enableFaceIdentification(StateTransitionController.this.getParams().getFaceIdentify().getBooleanValue());
            super.handleFaceDetectChange(controllerMessage);
        }

        @Override
        public void handleFocusPositionCancel(ControllerMessage controllerMessage) {
            super.handleFocusPositionCancel(controllerMessage);
            StateTransitionController.this.finishDragging();
        }

        @Override
        public void handleFocusPositionStart(ControllerMessage controllerMessage) {
            StateTransitionController.this.prepareDragging();
            super.handleFocusPositionStart(controllerMessage);
        }

        @Override
        public void handleSelfTimerStart(ControllerMessage controllerMessage) {
            StateTransitionController.this.mEventDispatcher.updateTouchCaptureStatus(false);
            if (controllerMessage.mArg2 != null && controllerMessage.mSource != ControllerEventSource.TOUCH_FACE) {
                StateTransitionController.this.mTouchFocus.finish(StateTransitionController.this.getViewRect(controllerMessage));
            }
            StateTransitionController.this.startSelfTimer(controllerMessage.mArg1, controllerMessage.mSource);
        }

        @Override
        public void handleShutterDone(ControllerMessage controllerMessage) {
            if (controllerMessage.mArg2 == null) {
                StateTransitionController.this.mCameraWindow.countUp(controllerMessage.mArg1);
            }
        }

        @Override
        public void handleStorageError(ControllerMessage controllerMessage) {
            super.handleStorageError(controllerMessage);
            StateTransitionController.this.restoreFocusMode(true);
        }

        @Override
        public void handleZoomPrepare(ControllerMessage controllerMessage) {
            StateTransitionController.this.mEventDispatcher.updateTouchCaptureStatus(false);
            StateTransitionController.this.mTouchFocus.clear();
            StateTransitionController.this.finishDragging();
            StateTransitionController.this.mAutoZoom.prepare(controllerMessage.mSource);
        }
    }

    private class ViewFinderVideo
    extends AbstractViewFinder {
        private ViewFinderVideo() {
        }

        @Override
        public void entry() {
            super.entry();
            if (!StateTransitionController.this.isEnoughStorageSizeAvailable()) {
                Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, -1, null);
            }
        }

        @Override
        public void handleAfCancel(ControllerMessage controllerMessage) {
            super.handleAfCancel(controllerMessage);
            StateTransitionController.this.mCameraWindow.showDefaultView();
        }

        @Override
        public void handleAfStart(ControllerMessage controllerMessage) {
            super.handleAfStart(controllerMessage);
            StateTransitionController.this.mCameraWindow.showReadyForRecordView();
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void handleCapture(ControllerMessage controllerMessage) {
            if (!StateTransitionController.this.mCameraActivity.updateRemain()) {
                return;
            }
            if (StateTransitionController.this.mParameterManager.isVideoSelfTimerOn()) {
                if (!StateTransitionController.this.mEventDispatcher.isSelfTimerRunning()) return;
                StateTransitionController.this.selfTimerCapture(controllerMessage.mSource);
                return;
            }
            StateTransitionController.this.startRec(RecordingManual.class);
        }

        @Override
        public void handleSelfTimerCapture(ControllerMessage controllerMessage) {
            if (StateTransitionController.this.mCameraActivity.updateRemain()) {
                StateTransitionController.this.consumeSelfTimer(controllerMessage.mSource, true);
                StateTransitionController.this.startRec(RecordingManual.class);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleSelfTimerStart(ControllerMessage object) {
            if (AudioResourceChecker.isAudioResourceAvailable(StateTransitionController.this.mCameraActivity)) {
                StateTransitionController.this.mEventDispatcher.updateTouchCaptureStatus(false);
                super.handleSelfTimerStart((ControllerMessage)object);
                return;
            }
            object = StateTransitionController.this.mEventDispatcher;
            boolean bl = StateTransitionController.this.mParameterManager.isSelfTimerOn() || StateTransitionController.this.mParameterManager.isVideoSelfTimerOn();
            object.setShouldSelfTimerStart(bl);
            StateTransitionController.this.mCameraActivity.getMessagePopup().showOk(2131296645, 2131296402, false, 2131296429, null, null);
        }

        @Override
        public void handleZoomFinish(ControllerMessage controllerMessage) {
            super.handleZoomFinish(controllerMessage);
            if (controllerMessage.mSource == ControllerEventSource.TOUCH) {
                StateTransitionController.this.mEventDispatcher.resetStatus();
            }
        }
    }

}

