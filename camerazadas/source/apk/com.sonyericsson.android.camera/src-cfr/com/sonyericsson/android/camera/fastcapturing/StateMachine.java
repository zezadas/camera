/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$BurstShotResult
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 *  com.sonyericsson.cameraextension.CameraExtension$FilePathGenerator
 *  com.sonyericsson.cameraextension.CameraExtension$MediaProviderUpdator
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingResult
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionResult
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.Camera;
import android.location.Location;
import android.net.Uri;
import android.os.Handler;
import android.os.PowerManager;
import android.os.storage.StorageManager;
import android.util.Log;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera.CameraButtonIntentReceiver;
import com.sonyericsson.android.camera.burst.BurstInfoUpdator;
import com.sonyericsson.android.camera.burst.BurstShotPathBuilder;
import com.sonyericsson.android.camera.configuration.ConversationReader;
import com.sonyericsson.android.camera.configuration.MmsOptions;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler;
import com.sonyericsson.android.camera.fastcapturing.ChapterThumbnail;
import com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity;
import com.sonyericsson.android.camera.fastcapturing.PlatformDependencyResolver;
import com.sonyericsson.android.camera.fastcapturing.view.BaseFastViewFinder;
import com.sonyericsson.android.camera.mediasaving.BurstSavingTaskManager;
import com.sonyericsson.android.camera.mediasaving.MediaSavingUtil;
import com.sonyericsson.android.camera.util.LocalGoogleAnalyticsUtil;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.contentsview.ThumbnailUtil;
import com.sonyericsson.cameracommon.controller.ZoomController;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusVideo;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.updator.MediaProviderUpdator;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.review.AutoReviewWindow;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.selftimerfeedback.LedLight;
import com.sonyericsson.cameracommon.selftimerfeedback.SelfTimerFeedback;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ClassDefinitionChecker;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.RecordingUtil;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;
import com.sonymobile.cameracommon.media.recorder.RecorderInterface;
import com.sonymobile.cameracommon.media.utility.AudioResourceChecker;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClient;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class StateMachine
implements SavingRequest.StoreDataCallback,
StorageController.StorageListener {
    private static final int OBJECT_TRACKING_ENGINE_RESET_TIMEOUT_COUNT = 3000;
    private static final int PREPARE_PINCH_ZOOM_TIMEOUT_COUNT = 100;
    private static final int RESUME_TIMEOUT = 5000;
    private static final String TAG = StateMachine.class.getSimpleName();
    FastCapturingActivity mActivity;
    private StoreDataResult mBurstCoverResult;
    private int mBurstPictureCount;
    CameraDeviceHandler mCameraDeviceHandler;
    private ChangeCameraModeTask mChangeCameraModeTask;
    private ChapterThumbnail mChapterThumbnail;
    private ContentsViewController mContentsViewController = null;
    ConversationReader mConversationReader = null;
    private CapturingMode mCurrentCapturingMode;
    private State mCurrentState;
    private float mCurrentZoomLength;
    private ExecutorService mExecService = Executors.newSingleThreadExecutor();
    private Handler mHandler = new Handler();
    private boolean mIsInModeLessRecording = false;
    private boolean mIsStopBurstRequested;
    private PhotoSavingRequest mLastPhotoSavingRequest = null;
    private VideoSavingRequest mLastVideoSavingRequest = null;
    private final Runnable mNotifyResumeTimeoutTask;
    private Set<OnStateChangedListener> mOnStateChangedListenerSet;
    private List<PhotoSavingRequest> mPhotoSavingRequestList = new ArrayList<PhotoSavingRequest>();
    private final RecorderInterface.RecorderListener mRecorderListener;
    private StartRecordingTask mStartRecordingTask;
    private CapturingMode mTargetCapturingMode;
    private TrackedObjectLostTimeoutTask mTrackedObjectLostTimeoutTask;
    private int mUpdateProgressCount;
    BaseFastViewFinder mViewFinder;

    public StateMachine(FastCapturingActivity fastCapturingActivity) {
        this.mCurrentState = new StateNone(this);
        this.mUpdateProgressCount = 0;
        this.mChangeCameraModeTask = null;
        this.mStartRecordingTask = null;
        this.mOnStateChangedListenerSet = new CopyOnWriteArraySet<OnStateChangedListener>();
        this.mNotifyResumeTimeoutTask = new Runnable(){

            @Override
            public void run() {
                StateMachine.this.sendEvent(TransitterEvent.EVENT_RESUME_TIMEOUT, new Object[0]);
            }
        };
        this.mChapterThumbnail = null;
        this.mRecorderListener = new RecorderInterface.RecorderListener(){

            @Override
            public void onRecordError(int n, int n2) {
                StateMachine.this.sendEvent(TransitterEvent.EVENT_ON_RECORDING_ERROR, new Object[0]);
                StateMachine.this.mCameraDeviceHandler.releaseVideo();
            }

            @Override
            public void onRecordFinished(RecorderInterface.Result result) {
                switch (.$SwitchMap$com$sonymobile$cameracommon$media$recorder$RecorderInterface$Result[result.ordinal()]) {
                    default: {
                        return;
                    }
                    case 1: {
                        if (StateMachine.this.mContentsViewController != null) {
                            StateMachine.this.mContentsViewController.enableClick();
                        }
                        StateMachine.this.mCameraDeviceHandler.finalizeRecording();
                        StateMachine.this.mCameraDeviceHandler.restoreSettingAfterRecording();
                        return;
                    }
                    case 2: 
                    case 3: {
                        StateMachine.this.doStopRecording();
                        return;
                    }
                    case 4: 
                }
                Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, 1, 0);
            }

            @Override
            public void onRecordPaused(RecorderInterface.Result result) {
            }

            @Override
            public void onRecordProgress(long l) {
                StateMachine.this.updateRecordingProgress((int)l);
            }
        };
        this.mTrackedObjectLostTimeoutTask = new TrackedObjectLostTimeoutTask();
        this.mCurrentCapturingMode = CapturingMode.SCENE_RECOGNITION;
        this.mTargetCapturingMode = CapturingMode.SCENE_RECOGNITION;
        this.mActivity = fastCapturingActivity;
    }

    static /* synthetic */ void access$300(StateMachine stateMachine, StoreDataResult storeDataResult) {
        stateMachine.launchEditor(storeDataResult);
    }

    static /* synthetic */ void access$400(StateMachine stateMachine, StoreDataResult storeDataResult) {
        stateMachine.doStoreComplete(storeDataResult);
    }

    static /* synthetic */ boolean access$500(StateMachine stateMachine, StoreDataResult storeDataResult) {
        return stateMachine.notifyStoreDone(storeDataResult);
    }

    private static final void assertNotNull(CameraDeviceHandler cameraDeviceHandler) {
        if (CameraLogger.isUserdebugOrEngBuild) {
            if (cameraDeviceHandler == null) {
                throw new IllegalArgumentException("CameraDeviceHandler is null");
            }
            if (cameraDeviceHandler.getPictureRect() == null) {
                throw new IllegalArgumentException("PictureRect is null, camera id = " + cameraDeviceHandler.getCameraId());
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void calculateRemainStorage(boolean bl, boolean bl2) {
        if (this.mCameraDeviceHandler == null) return;
        if (this.mViewFinder == null) return;
        if (this.mCameraDeviceHandler.getPictureRect() == null) return;
        if (this.mCameraDeviceHandler.getCamcordRect() == null) return;
        if (this.mActivity == null) {
            return;
        }
        long l = this.mActivity.getStorageManager().updateRemain(0, bl2);
        if (bl) {
            if (l > 153600) {
                this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_HIDE_REMAIN_INDICATOR, new Object[0]);
            } else {
                this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SHOW_REMAIN_INDICATOR, new Object[0]);
            }
        }
        if (l > 61440) return;
        this.sendEvent(TransitterEvent.EVENT_STORAGE_ERROR, new Object[0]);
        this.mActivity.disableAutoOffTimer();
    }

    private boolean canInvokePhotoSelfTimer() {
        if (!this.isLazyInitializationRunning() && this.isPhotoSelfTimerEnabled()) {
            return true;
        }
        return false;
    }

    private void cancelAutoFocus(boolean bl) {
        if (bl) {
            this.mCameraDeviceHandler.resetFocusMode();
        }
        this.mCameraDeviceHandler.cancelAutoFocus();
    }

    private void changeCameraModeTo(int n, boolean bl, boolean bl2) {
        StateMachine.assertNotNull(this.mCameraDeviceHandler);
        if (this.mCameraDeviceHandler.willPreviewBeRestarted()) {
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_HIDE_SURFACE, new Object[0]);
        }
        this.mChangeCameraModeTask = new ChangeCameraModeTask(n, bl, bl2);
        this.mHandler.post(this.mChangeCameraModeTask);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private /* varargs */ void changeTo(State object, Object ... arrobject) {
        synchronized (this) {
            this.mCurrentState.exit();
            this.mCurrentState = object;
            object = this.mOnStateChangedListenerSet.iterator();
            do {
                if (!object.hasNext()) {
                    this.mCurrentState.entry();
                    return;
                }
                ((OnStateChangedListener)object.next()).onStateChanged(this.mCurrentState.getCaptureState(), arrobject);
            } while (true);
        }
    }

    private void changeToBackCameraMode() {
        this.mTargetCapturingMode = CapturingMode.SCENE_RECOGNITION;
        this.changeTo(new StateCameraSwitching(this), new Object[0]);
        this.mActivity.prepareCameraDeviceHandler(this.mActivity, FastCapture.LAUNCH_ONLY, 0);
        this.mViewFinder.checkSurfaceIsPreparedOrNot();
        this.mCurrentCapturingMode = this.mTargetCapturingMode;
    }

    private void changeToFrontCameraMode() {
        this.mTargetCapturingMode = CapturingMode.FRONT_PHOTO;
        this.changeTo(new StateCameraSwitching(this), new Object[0]);
        this.mActivity.prepareCameraDeviceHandler(this.mActivity, FastCapture.LAUNCH_ONLY, 1);
        this.mViewFinder.checkSurfaceIsPreparedOrNot();
        this.mCurrentCapturingMode = this.mTargetCapturingMode;
    }

    private void checkCallback(SavingRequest savingRequest) {
        savingRequest.addCallback(this);
    }

    private void clearBurst() {
        this.mIsStopBurstRequested = false;
        this.mBurstPictureCount = 0;
        this.mLastPhotoSavingRequest = null;
    }

    private PhotoSavingRequest createBurstSavingRequest(int n) {
        PhotoSavingRequest photoSavingRequest = this.createPhotoSavingRequest(SavingTaskManager.SavedFileType.BURST);
        if (photoSavingRequest != null) {
            photoSavingRequest.setSomcType(2);
            this.mCameraDeviceHandler.applySavingRequest(photoSavingRequest, this.mCameraDeviceHandler.getLatestCachedParameters());
            photoSavingRequest.setRequestId(n);
        }
        return photoSavingRequest;
    }

    private PhotoSavingRequest createPhotoSavingRequest(SavingTaskManager.SavedFileType object) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType[object.ordinal()]) {
            default: {
                throw new IllegalArgumentException("Unexpected type : " + object);
            }
            case 2: 
            case 3: 
            case 4: 
        }
        object = new PhotoSavingRequest(this.createTakenStatusCommon((SavingTaskManager.SavedFileType)object, this.mCameraDeviceHandler.getPictureRect(), "image/jpeg", ".JPG", null), new TakenStatusPhoto());
        object.addCallback(this);
        object.setExtraOutput(this.mActivity.getExtraOutput());
        return object;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private TakenStatusCommon createTakenStatusCommon(SavingTaskManager.SavedFileType var1_1, Rect var2_2, String var3_3, String var4_4, String var5_5) {
        var7_6 = System.currentTimeMillis();
        var6_7 = this.getOrientation();
        var13_8 = this.mActivity.getGeoTagManager().getCurrentLocation();
        var11_9 = false;
        var12_10 = this.isSuperResolutionZoom();
        var9_11 = var11_9;
        var10_12 = var12_10;
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType[var1_1.ordinal()]) {
            default: {
                var10_12 = var12_10;
                var9_11 = var11_9;
                ** GOTO lbl16
            }
            case 4: {
                var9_11 = true;
                var10_12 = var12_10;
            }
lbl16: // 3 sources:
            case 2: 
            case 3: {
                return new TakenStatusCommon(var7_6, var6_7, var13_8, var2_2.width(), var2_2.height(), var3_3, var4_4, var1_1, var5_5, "", var9_11, var10_12);
            }
            case 1: 
        }
        var10_12 = false;
        var9_11 = var11_9;
        return new TakenStatusCommon(var7_6, var6_7, var13_8, var2_2.width(), var2_2.height(), var3_3, var4_4, var1_1, var5_5, "", var9_11, var10_12);
    }

    /*
     * Exception decompiling
     */
    private VideoSavingRequest createVideoSavingRequest(SavingTaskManager.SavedFileType var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:436)
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

    private void doCapture() {
        this.mLastPhotoSavingRequest = this.createPhotoSavingRequest(SavingTaskManager.SavedFileType.PHOTO);
        if (this.mLastPhotoSavingRequest != null) {
            this.mCameraDeviceHandler.applySavingRequest(this.mLastPhotoSavingRequest, this.mCameraDeviceHandler.getLatestCachedParameters());
            this.mCameraDeviceHandler.takePicture(this.mLastPhotoSavingRequest);
            this.sendGoogleAnalyticsCaptureEvents();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doCaptureBestEffortBurst(boolean bl) {
        int n = -1;
        if (bl) {
            n = this.mViewFinder.getRequestId(false);
        } else if (this.mLastPhotoSavingRequest != null) {
            n = this.mLastPhotoSavingRequest.getRequestId();
        }
        this.mLastPhotoSavingRequest = this.createBurstSavingRequest(n);
        if (this.mLastPhotoSavingRequest != null) {
            if (bl) {
                this.mLastPhotoSavingRequest.setSomcType(2);
                this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVEVT_REQUEST_ADD_COUNT_UP_VIEW, this.mLastPhotoSavingRequest.getRequestId());
            } else {
                this.mLastPhotoSavingRequest.setSomcType(129);
            }
            this.mCameraDeviceHandler.takePicture(this.mLastPhotoSavingRequest);
            ++this.mBurstPictureCount;
        }
    }

    private void doCaptureWhileRecording() {
        PhotoSavingRequest photoSavingRequest = this.createPhotoSavingRequest(SavingTaskManager.SavedFileType.PHOTO_DURING_REC);
        if (photoSavingRequest != null) {
            photoSavingRequest.setRequestId(this.mViewFinder.getRequestId(true));
            if (this.mContentsViewController != null) {
                this.mContentsViewController.hideThumbnail();
            }
            this.mViewFinder.onShutterDone(true);
            this.mCameraDeviceHandler.captureWhileRecording(photoSavingRequest);
        }
    }

    private void doChangeSelectedFace(Point point) {
        this.mCameraDeviceHandler.deselectObject();
        this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
        this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FACE_DETECTION_STARTED, new Object[0]);
        this.mCameraDeviceHandler.setSelectedFacePosition(point.x, point.y);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doDeselectObject() {
        if (!(this.mCameraDeviceHandler != null && this.mCameraDeviceHandler.deselectObject())) {
            return;
        }
        this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
    }

    private void doFastestCamcord() {
        if (!this.mActivity.getStorageManager().isReady()) {
            return;
        }
        this.mActivity.pauseAudioPlayback();
        this.mViewFinder.setRecordingOrientation(this.mActivity.getOrientation());
        this.changeTo(new StateVideoRecordingStartingFromFastestCamcord(true), new Object[0]);
        this.calculateRemainStorage(false, false);
        this.mLastVideoSavingRequest = this.createVideoSavingRequest(SavingTaskManager.SavedFileType.VIDEO);
        if (this.mContentsViewController != null) {
            this.mContentsViewController.disableClick();
        }
        this.mExecService.execute(new DoFastestCamcordTask());
    }

    private void doFastestCapture() {
        if (!this.mActivity.getStorageManager().isReady()) {
            this.changeTo(new StateWarning(), new Object[0]);
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$fastcapturing$CameraDeviceHandler$PreProcessState[this.mCameraDeviceHandler.getPreProcessState().ordinal()]) {
            default: {
                throw new IllegalStateException("Un-Expected state : " + (Object)this.mCameraDeviceHandler.getPreProcessState());
            }
            case 2: {
                this.changeTo(new StatePhotoCaptureWaitForAfDone(true, false), new Object[0]);
                return;
            }
            case 1: {
                this.doCapture();
                this.changeTo(new StatePhotoCapture(), new Object[0]);
                return;
            }
            case 3: {
                this.changeTo(new StatePhotoCapture(), new Object[0]);
                return;
            }
            case 4: 
        }
        this.changeTo(new StatePhotoCapture(), new Object[0]);
    }

    private void doHandleRecordingError() {
        this.mActivity.getMessagePopup().showUnknownErrorMessage();
        this.changeTo(new StateWarning(), new Object[0]);
    }

    private void doPauseRecording() {
        this.mCameraDeviceHandler.pauseRecording();
        this.changeTo(new StateVideoRecordingPausing(), new Object[0]);
    }

    private void doResumeRecording() {
        this.mCameraDeviceHandler.resumeRecording();
        this.changeTo(new StateVideoRecording(this), new Object[0]);
    }

    private void doSelectObject(PointF pointF) {
        if (!this.mCameraDeviceHandler.selectObject(pointF)) {
            return;
        }
        this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_OBJECT_TRACKING_STARTED, new Object[0]);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void doStartHighSpeedBurst(State state, boolean bl) {
        boolean bl2;
        BurstShotPathBuilder burstShotPathBuilder;
        PhotoSavingRequest photoSavingRequest;
        this.mLastPhotoSavingRequest = photoSavingRequest = this.createBurstSavingRequest(this.mViewFinder.getRequestId(false));
        BurstInfoUpdator burstInfoUpdator = new BurstInfoUpdator(this.mActivity, photoSavingRequest);
        ((BurstSavingTaskManager)this.mActivity.getSavingTaskManager()).setUpdator(burstInfoUpdator);
        burstInfoUpdator.prepareBulkInsert();
        try {
            burstShotPathBuilder = new BurstShotPathBuilder();
        }
        catch (IOException var5_6) {
            this.cancelAutoFocus(false);
            burstShotPathBuilder = null;
        }
        boolean bl3 = bl2 = false;
        if (burstShotPathBuilder != null) {
            bl3 = bl2;
            if (this.mCameraDeviceHandler.startBurstCapture((CameraExtension.FilePathGenerator)burstShotPathBuilder, (CameraExtension.MediaProviderUpdator)burstInfoUpdator) != -1) {
                bl3 = true;
            }
            if (bl3) {
                this.changeTo(state, bl);
                if (photoSavingRequest != null) {
                    this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVEVT_REQUEST_ADD_COUNT_UP_VIEW, photoSavingRequest.getRequestId());
                }
                return;
            }
        }
        this.changeTo(new StateWarning(), new Object[0]);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private /* varargs */ void doStartRecording(Object ... arrobject) {
        boolean bl;
        CameraButtonIntentReceiver.killStartUpNotifierImmediately();
        if (this.mContentsViewController != null) {
            this.mContentsViewController.disableClick();
        }
        this.mLastVideoSavingRequest = this.createVideoSavingRequest(SavingTaskManager.SavedFileType.VIDEO);
        this.mViewFinder.setRecordingOrientation(this.mActivity.getOrientation());
        boolean bl2 = bl = false;
        if (this.mLastVideoSavingRequest != null) {
            VideoSize videoSize = VideoSize.getValueFromFrameSize(this.mLastVideoSavingRequest.common.width, this.mLastVideoSavingRequest.common.height);
            boolean bl3 = false;
            if (videoSize == VideoSize.MMS) {
                bl3 = true;
            }
            boolean bl4 = false;
            if (this.mCameraDeviceHandler.getVideoHdr() == VideoHdr.ON) {
                bl4 = true;
            }
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_PREPARE_RECORDING_INDICATOR, (int)this.mLastVideoSavingRequest.video.maxDurationMills, bl3, bl4);
            try {
                this.mCameraDeviceHandler.startRecording(this.mLastVideoSavingRequest, this.mRecorderListener);
                this.updateDateTaken(this.mLastVideoSavingRequest);
                bl2 = true;
            }
            catch (RuntimeException var6_5) {
                CameraLogger.w(TAG, "Start recording failed.", var6_5);
                if (this.mContentsViewController != null) {
                    this.mContentsViewController.enableClick();
                }
                if (!AudioResourceChecker.isAudioResourceAvailable(this.mActivity)) {
                    this.mActivity.getMessagePopup().showOk(2131296645, 2131296402, false, 2131296429, null, null);
                    this.changeTo(new StateStandby(), new Object[0]);
                    return;
                }
                this.mActivity.getMessagePopup().showErrorUncancelable(2131296367, 2131296402, false);
                GoogleAnalyticsUtil.getInstance().sendCameraNotAvailableEvent();
                bl2 = bl;
            }
            if (bl2) {
                this.changeTo(new StateVideoRecordingStarting(false), arrobject);
                return;
            }
        }
        this.changeTo(new StateWarning(), new Object[0]);
    }

    private void doStartRecordingInPhotoMode() {
        this.mViewFinder.hideHudIcons();
        this.changeTo(new StateNone(this), new Object[0]);
        if (!PlatformDependencyResolver.isAutoSceneRecogntionDuringRecSupported(this.mCameraDeviceHandler.getLatestCachedParameters())) {
            this.mCameraDeviceHandler.stopSceneRecognition();
        }
        StateMachine.assertNotNull(this.mCameraDeviceHandler);
        this.changeCameraModeTo(2, false, this.mIsInModeLessRecording);
        this.mStartRecordingTask = new StartRecordingTask();
        this.mHandler.post(this.mStartRecordingTask);
    }

    private void doStopBestEffortBurst() {
        this.cancelAutoFocus(true);
        this.mViewFinder.fadeoutCounter();
        this.onBurstShootingDone();
        this.sendGoogleAnalyticsBurstEvent();
    }

    private boolean doStopHighSpeedBurst() {
        int n = this.mCameraDeviceHandler.stopBurstCapture();
        this.cancelAutoFocus(false);
        this.onBurstShootingDone();
        this.sendGoogleAnalyticsBurstEvent();
        if (n != -1) {
            return true;
        }
        CameraLogger.e(TAG, "doStopHighSpeedBurst Failed.");
        return false;
    }

    private void doStopRecording() {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RECORDING_STOP, true);
        if (this.mContentsViewController != null) {
            this.mContentsViewController.enableClick();
        }
        this.mCameraDeviceHandler.stopRecording(this.mActivity);
        this.mViewFinder.onCaptureDone();
        if (VideoStabilizer.isIntelligentActive(this.mCameraDeviceHandler.getVideoStabilizer())) {
            this.mLastVideoSavingRequest.setRequestId(this.mViewFinder.getRequestId(true));
        }
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RECORDING_STOP, false);
        MeasurePerformance.outResult();
    }

    private void doStopZoom() {
        this.mCameraDeviceHandler.stopSmoothZoom();
    }

    private void doStoreComplete(StoreDataResult object) {
        final int n = object.savingRequest.getRequestId();
        final boolean bl = object.isSuccess();
        object = object.uri;
        this.mActivity.runOnUiThread(new Runnable((Uri)object){
            final /* synthetic */ Uri val$originalUri;

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void run() {
                StateMachine stateMachine = StateMachine.this;
                synchronized (stateMachine) {
                    if (StateMachine.this.mContentsViewController != null) {
                        if (n != -1) {
                            if (bl) {
                                StateMachine.this.mContentsViewController.addContent(n, this.val$originalUri);
                            } else {
                                StateMachine.this.mContentsViewController.pause();
                                StateMachine.this.mContentsViewController.reload();
                            }
                        } else {
                            StateMachine.this.mContentsViewController.pause();
                            StateMachine.this.mContentsViewController.reload();
                        }
                    }
                    return;
                }
            }
        });
    }

    private void doSuperResolutionZoomIn() {
        this.mCameraDeviceHandler.startSmoothZoom(this.mCameraDeviceHandler.getMaxSuperResolutionZoom());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doZoom(int n, float f) {
        int n2 = this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
        int n3 = this.mCameraDeviceHandler.getMaxSuperResolutionZoom();
        int n4 = this.mCameraDeviceHandler.getMaxZoom();
        if (!(f <= 0.0f || this.isRecording() || n2 != n3 || n >= n3)) {
            return;
        }
        this.mCurrentZoomLength = ZoomController.getZoomValue(n2, f);
        if (this.mCurrentZoomLength < 0.0f) {
            this.mCurrentZoomLength = 0.0f;
        } else if (this.isRecording()) {
            if (this.mCurrentZoomLength > (float)n4) {
                this.mCurrentZoomLength = n4;
            }
        } else if (n < n3) {
            if (this.mCurrentZoomLength > (float)n3) {
                this.mCurrentZoomLength = n3;
            }
        } else if (this.mCurrentZoomLength > (float)n4) {
            this.mCurrentZoomLength = n4;
        }
        this.mCameraDeviceHandler.startSmoothZoom(Math.round(this.mCurrentZoomLength));
    }

    private void doZoomIn() {
        this.mCameraDeviceHandler.startSmoothZoom(this.mCameraDeviceHandler.getMaxZoom());
    }

    private void doZoomOut() {
        this.mCameraDeviceHandler.startSmoothZoom(0);
    }

    private int getCameraId(CapturingMode capturingMode) {
        if (capturingMode == CapturingMode.SCENE_RECOGNITION) {
            return 0;
        }
        return 1;
    }

    private long getMaxDurationMillisecondForCamcord(VideoSize videoSize, long l) {
        long l2;
        long l3;
        long l4 = l3 = (l2 = RecordingUtil.getDurationMillsFromAverage(this.mActivity.getStorageController().getAvailableStorageSize(), videoSize.getAverageFileSize()));
        if (videoSize.isConstraint()) {
            long l5 = (long)this.mConversationReader.getMmsOptions().mMaxDuration * 1000;
            l4 = l3;
            if (l5 < l2) {
                l4 = l5;
            }
        }
        if (l < (l3 = l4 / 1000) * (l2 = videoSize.getAverageFileSize() * 1024 / 60)) {
            l4 = 1000 * l / l2;
        }
        l = l4;
        if (Integer.MAX_VALUE < l4) {
            l = Integer.MAX_VALUE;
        }
        return l;
    }

    private long getMaxFileSizeBytesForCamcord(VideoSize videoSize) {
        long l;
        long l2;
        long l3 = l = (l2 = RecordingUtil.getRecordableSizeKBytes(this.mActivity.getStorageController()) * 1024);
        if (videoSize.isConstraint()) {
            if (this.mConversationReader == null) {
                this.mConversationReader = new ConversationReader();
                this.mConversationReader.readConversationProvider(this.mActivity);
            }
            long l4 = this.mConversationReader.getMmsOptions().mMaxFileSizeBytes;
            l3 = l;
            if (l4 < l2) {
                l3 = l4;
            }
        }
        return l3;
    }

    private int getOrientation() {
        int n = RotationUtil.getNormalizedRotation(this.mActivity.getSensorOrientationDegree());
        Camera.CameraInfo cameraInfo = CameraDevice.getCameraInfo(this.getCurrentCameraId());
        switch (cameraInfo.facing) {
            default: {
                return (cameraInfo.orientation + n) % 360;
            }
            case 0: {
                return (cameraInfo.orientation + n) % 360;
            }
            case 1: 
        }
        return (cameraInfo.orientation + 360 - n) % 360;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isBurstShotEnabled() {
        if (this.isPhotoSelfTimerEnabled() || this.mCameraDeviceHandler.getBurstShotSetting() == BurstShot.OFF) {
            return false;
        }
        return true;
    }

    private boolean isLazyInitializationRunning() {
        return this.mActivity.isLazyInitializationRunning();
    }

    private boolean isPhotoSelfTimerEnabled() {
        if (this.mViewFinder.getPhotoSelfTimerSetting() != SelfTimer.OFF) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isSmoothZoomEnabled() {
        Camera.Parameters parameters;
        if (this.mCameraDeviceHandler.isCameraFront() || (parameters = this.mCameraDeviceHandler.getLatestCachedParameters()) == null || !parameters.isSmoothZoomSupported()) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean isSuperResolutionZoom() {
        if (this.isInModeLessRecording()) {
            return false;
        }
        Camera.Parameters parameters = this.mCameraDeviceHandler.getLatestCachedParameters();
        if (parameters == null) return false;
        int n = parameters.getZoom();
        int n2 = this.mCameraDeviceHandler.getMaxSuperResolutionZoom();
        if (!PlatformDependencyResolver.isSuperResolutionZoomSupported(parameters)) return false;
        if (n <= 0) return false;
        if (n > n2) return false;
        return true;
    }

    private void launchEditor(StoreDataResult storeDataResult) {
        if (AutoReviewWindow.isEditorAvailable(this.mActivity, storeDataResult.uri, storeDataResult.savingRequest.common.mimeType)) {
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SHOW_AUTO_REVIEW, storeDataResult);
            return;
        }
        this.changeTo(new StateStandby(true), new Object[0]);
    }

    private static void logPerformance(String string) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + string + "]");
    }

    private void moveToCameraNotAvailable() {
        CameraLogger.e(TAG, ".startFastCapture():[Camera not available]");
        this.mActivity.getMessagePopup().showErrorUncancelable(2131296367, 2131296402, false);
        this.changeTo(new StateWarning(), new Object[0]);
        GoogleAnalyticsUtil.getInstance().sendCameraNotAvailableEvent();
    }

    private void notifyStateBlocked() {
        if (this.mActivity.getWearableBridge() != null) {
            this.mActivity.getWearableBridge().getPhotoStateNotifier().onStateChanged(AbstractCapturableState.AbstractPhotoState.BLOCKED);
            this.mActivity.getWearableBridge().getVideoStateNotifier().onStateChanged(AbstractCapturableState.AbstractVideoState.BLOCKED);
        }
    }

    private void notifyStateIdle() {
        if (this.mActivity.getWearableBridge() != null) {
            this.mActivity.getWearableBridge().getPhotoStateNotifier().onStateChanged(AbstractCapturableState.AbstractPhotoState.IDLE);
            this.mActivity.getWearableBridge().getVideoStateNotifier().onStateChanged(AbstractCapturableState.AbstractVideoState.IDLE);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean notifyStoreDone(StoreDataResult storeDataResult) {
        if (storeDataResult == null || storeDataResult.savingRequest == null || storeDataResult.savingRequest.common == null || this.mLastPhotoSavingRequest == null && this.mLastVideoSavingRequest == null) {
            return false;
        }
        int n = this.mLastPhotoSavingRequest == null ? this.mLastVideoSavingRequest.getRequestId() : (this.mLastVideoSavingRequest == null ? this.mLastPhotoSavingRequest.getRequestId() : (this.mLastPhotoSavingRequest.getRequestId() > this.mLastVideoSavingRequest.getRequestId() ? this.mLastPhotoSavingRequest.getRequestId() : this.mLastVideoSavingRequest.getRequestId()));
        if (storeDataResult.savingRequest.getRequestId() == n) {
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SHOW_ICONS_ON_REVIEW_WINDOW, storeDataResult.uri, storeDataResult.savingRequest.common.mimeType);
            return true;
        }
        return false;
    }

    private void requestPlayAutoFocusSuccessSound(boolean bl) {
        if (bl && !this.mCameraDeviceHandler.isShutterSoundOff()) {
            this.mActivity.playSound(0);
        }
    }

    private void requestStorePicture(PhotoSavingRequest object) {
        synchronized (this) {
            object = new RequestStoreTask((PhotoSavingRequest)object);
            this.mExecService.execute((Runnable)object);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void requestStoreVideo(VideoSavingRequest videoSavingRequest) {
        synchronized (this) {
            if (videoSavingRequest == null) {
                do {
                    return;
                    break;
                } while (true);
            }
            if (!VideoStabilizer.isIntelligentActive(this.mCameraDeviceHandler.getVideoStabilizer())) {
                this.mLastVideoSavingRequest.setRequestId(this.mViewFinder.getRequestId(true));
            }
            videoSavingRequest.setDateTaken(System.currentTimeMillis());
            this.mActivity.getSavingTaskManager().storeVideo(videoSavingRequest);
            this.sendEvent(TransitterEvent.EVENT_ON_STORE_REQUESTED, new Object[0]);
            return;
        }
    }

    private void sendGoogleAnalyticsBurstEvent() {
        if (this.mBurstPictureCount < 1) {
            return;
        }
        LocalGoogleAnalyticsUtil.getInstance().sendEventSettings();
        GoogleAnalyticsUtil.getInstance().setUserOperation(Event.CaptureOperation.BURST);
    }

    private void sendGoogleAnalyticsCaptureEvents() {
        LocalGoogleAnalyticsUtil.getInstance().sendEventSettings();
        GoogleAnalyticsUtil.getInstance().setUserOperation(Event.CaptureOperation.SHOOTING);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean startAutoFocus() {
        if (!(this.mActivity == null || this.mActivity.updateRemain() && this.mActivity.getSavingTaskManager().canPushStoreTask())) {
            return false;
        }
        this.mCameraDeviceHandler.autoFocus();
        return true;
    }

    private void startFastCapture(SurfaceHolder object, FastCapture fastCapture, boolean bl) {
        if (this.mCameraDeviceHandler.isImmediateReleaseRequested()) {
            CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] request to release camera device.");
            this.moveToCameraNotAvailable();
            return;
        }
        if (!this.mCameraDeviceHandler.waitForCameraInitialization()) {
            if (this.mActivity.getCameraDevice().getCameraDeviceStatus() == 0) {
                this.mActivity.prepareCameraDeviceHandler(this.mActivity, fastCapture, this.getTargetCameraId());
                if (!this.mCameraDeviceHandler.waitForCameraInitialization()) {
                    CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] Device open failed.");
                    this.moveToCameraNotAvailable();
                    return;
                }
            } else {
                CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] Device open has started but failed.");
                this.moveToCameraNotAvailable();
                return;
            }
        }
        this.mCameraDeviceHandler.startLiveViewFinder((SurfaceHolder)object);
        object = this.mCameraDeviceHandler.getPreviewRect();
        if (object == null) {
            this.mActivity.showCameraNotAvailableError();
            this.changeTo(new StateWarning(), new Object[0]);
            return;
        }
        Rect rect = LayoutDependencyResolver.getSurfaceRect(this.mActivity, (float)object.width() / (float)object.height());
        PositionConverter.getInstance().init(false, 0, rect, (Rect)object);
        PositionConverter.getInstance().setSurfaceSize(rect.width(), rect.height());
        PositionConverter.getInstance().setPreviewSize(object.width(), object.height());
        if (bl) {
            this.mActivity.onCameraReadyToUse();
        }
        this.mActivity.requestPostLazyInitializationTaskExecute();
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture[fastCapture.ordinal()]) {
            default: {
                return;
            }
            case 1: 
            case 2: {
                this.changeTo(new StateStandby(true), new Object[0]);
                return;
            }
            case 3: {
                this.changeTo(new StateStandby(), new Object[0]);
                this.doFastestCapture();
                return;
            }
            case 4: {
                this.changeTo(new StateStandby(true), new Object[0]);
                this.doFastestCamcord();
                return;
            }
            case 5: 
        }
        throw new IllegalArgumentException("StateMachine.Resume:[FastCapture OFF]");
    }

    private void stopPlaySound() {
        this.mActivity.stopPlayingSound();
    }

    private void storePicture(PhotoSavingRequest photoSavingRequest) {
        this.mActivity.disableAutoOffTimer();
        this.mActivity.getSavingTaskManager().storePicture(photoSavingRequest);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void switchCamera() {
        this.mCameraDeviceHandler.releaseCameraInstance();
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[this.mCurrentCapturingMode.ordinal()]) {
            case 1: {
                this.changeToFrontCameraMode();
            }
            default: {
                break;
            }
            case 2: 
            case 3: {
                this.changeToBackCameraMode();
            }
        }
        LocalGoogleAnalyticsUtil.getInstance().sendView(CustomDimension.GALaunchedBy.SAME_ACTIVITY, this.mCurrentCapturingMode, true);
    }

    private void updateDateTaken(SavingRequest savingRequest) {
        savingRequest.setDateTaken(System.currentTimeMillis());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateRecordingProgress(int n) {
        if (!(this.mViewFinder != null && this.mViewFinder.isSetupHeadupDisplayInvoked())) {
            return;
        }
        if (this.mActivity != null) {
            this.mActivity.disableAutoOffTimer();
            if (this.mUpdateProgressCount == 0) {
                this.calculateRemainStorage(true, false);
            }
        }
        this.mUpdateProgressCount = this.mUpdateProgressCount >= 10 ? 0 : ++this.mUpdateProgressCount;
        this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_RECORDING_PROGRESS, n);
    }

    public void addOnStateChangedListener(OnStateChangedListener onStateChangedListener) {
        this.mOnStateChangedListenerSet.add(onStateChangedListener);
    }

    public boolean canApplicationBeFinished() {
        synchronized (this) {
            boolean bl = this.mCurrentState.getCaptureState().canApplicationBeFinished();
            return bl;
        }
    }

    public boolean canCurrentStateHandleAsynchronizedTask() {
        synchronized (this) {
            boolean bl = this.mCurrentState.getCaptureState().canHandleAsynchronizedTask();
            return bl;
        }
    }

    public boolean canHandleWearableCaptureRequest() {
        synchronized (this) {
            boolean bl = this.mCurrentState.getCaptureState().canHandleWearableCaptureRequest();
            return bl;
        }
    }

    public boolean canSwitchPhotoVideoMode() {
        synchronized (this) {
            boolean bl = this.mCurrentState.getCaptureState().canSwitchPhotoVideoMode();
            return bl;
        }
    }

    public int getCurrentCameraId() {
        return this.getCameraId(this.mCurrentCapturingMode);
    }

    public Camera.Parameters getCurrentCameraParameters(boolean bl) {
        if (bl) {
            this.mCameraDeviceHandler.requestCacheParameters();
        }
        return this.mCameraDeviceHandler.getLatestCachedParameters();
    }

    public CaptureState getCurrentCaptureState() {
        synchronized (this) {
            CaptureState captureState = this.mCurrentState.getCaptureState();
            return captureState;
        }
    }

    public CapturingMode getCurrentCapturingMode() {
        return this.mCurrentCapturingMode;
    }

    public final int getSensorOrientation() {
        if (this.mActivity.getLastDetectedOrientation() == BaseActivity.LayoutOrientation.Portrait) {
            return 1;
        }
        return 2;
    }

    public int getTargetCameraId() {
        return this.getCameraId(this.mTargetCapturingMode);
    }

    public CapturingMode getTargetCapturingMode() {
        return this.mTargetCapturingMode;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean isDialogOpened() {
        synchronized (this) {
            CaptureState captureState = this.mCurrentState.getCaptureState();
            CaptureState captureState2 = CaptureState.STATE_STANDBY_DIALOG;
            if (captureState != captureState2) return false;
            return true;
        }
    }

    public boolean isInModeLessRecording() {
        return this.mIsInModeLessRecording;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean isInRecordingStartingState() {
        synchronized (this) {
            CaptureState captureState = this.mCurrentState.getCaptureState();
            CaptureState captureState2 = CaptureState.STATE_VIDEO_RECORDING_STARTING;
            if (captureState != captureState2) return false;
            return true;
        }
    }

    public boolean isMenuAvailable() {
        return this.mCurrentState.isMenuAvailable();
    }

    public boolean isRecording() {
        if (this.mCurrentState != null) {
            return this.mCurrentState.isRecording();
        }
        return false;
    }

    public boolean isStorageFull() {
        if (Math.max(0, this.mActivity.getStorageController().getAvailableStorageSize()) <= 61440) {
            return true;
        }
        return false;
    }

    public void onAutoFocusDone(boolean bl) {
        this.sendEvent(TransitterEvent.EVENT_ON_AUTO_FOCUS_DONE, bl);
    }

    @Override
    public void onAvailableSizeUpdated(long l) {
    }

    public void onBurstShootingDone() {
        this.mViewFinder.onCaptureDone();
        if (this.mBurstPictureCount > 1) {
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION, new Object[0]);
        }
        if (this.mBurstCoverResult != null) {
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION, this.mBurstCoverResult.savingRequest.getRequestId());
        }
    }

    public void onBurstStoreComplete(boolean bl) {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.addContent(this.mBurstCoverResult.savingRequest.getRequestId(), this.mBurstCoverResult.uri);
            if (bl && !this.mActivity.isOneShotPhoto()) {
                MediaProviderUpdator.sendBroadcastCameraShot(this.mActivity, this.mBurstCoverResult.uri, true);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onDestinationToSaveChanged() {
        synchronized (this) {
            if (this.mActivity.getStorageManager().isReady()) {
                this.sendEvent(TransitterEvent.EVENT_STORAGE_MOUNTED, new Object[0]);
            } else {
                this.sendEvent(TransitterEvent.EVENT_STORAGE_ERROR, new Object[0]);
            }
            return;
        }
    }

    public void onDeviceError(ErrorCode errorCode, Exception exception) {
        switch (errorCode) {
            default: {
                return;
            }
            case ERROR_ON_START_PREVIEW: 
        }
        if (((PowerManager)this.mActivity.getSystemService("power")).isScreenOn()) {
            CameraLogger.e(TAG, "onDeviceError(): [Screen backlight is ON.");
            this.mActivity.showCameraNotAvailableError();
            return;
        }
        this.mActivity.finish();
    }

    public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
        this.sendStaticEvent(StaticEvent.EVENT_ON_FACE_DETECTED, new Object[]{faceDetectionResult});
    }

    public void onInitialAutoFocusDone(boolean bl) {
        this.sendEvent(TransitterEvent.EVENT_ON_INITIAL_AUTO_FOCUS_DONE, bl);
    }

    public void onNotifyThermalStatus(boolean bl) {
        if (bl) {
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_WARNING, new Object[0]);
            return;
        }
        this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_NORMAL, new Object[0]);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onObjectTracked(CameraExtension.ObjectTrackingResult objectTrackingResult) {
        if (objectTrackingResult.mIsLost) {
            this.mHandler.removeCallbacks(this.mTrackedObjectLostTimeoutTask);
            this.mHandler.postDelayed(this.mTrackedObjectLostTimeoutTask, 3000);
        } else {
            this.mHandler.removeCallbacks(this.mTrackedObjectLostTimeoutTask);
        }
        this.sendStaticEvent(StaticEvent.EVENT_ON_OBJECT_TRACKED, new Object[]{objectTrackingResult});
    }

    public void onPreShutterDone(PhotoSavingRequest photoSavingRequest) {
        this.checkCallback(photoSavingRequest);
        this.sendEvent(TransitterEvent.EVENT_ON_PRE_SHUTTER_DONE, photoSavingRequest);
    }

    public void onPreTakePictureDone(byte[] arrby, PhotoSavingRequest photoSavingRequest) {
        this.checkCallback(photoSavingRequest);
        photoSavingRequest.setImageData(arrby);
        this.sendEvent(TransitterEvent.EVENT_ON_PRE_TAKE_PICTURE_DONE, photoSavingRequest);
    }

    public void onSceneModeChanged(CameraExtension.SceneRecognitionResult sceneRecognitionResult) {
        this.sendStaticEvent(StaticEvent.EVENT_ON_SCENE_MODE_CHANGED, new Object[]{sceneRecognitionResult});
    }

    public void onShutterDone(PhotoSavingRequest photoSavingRequest) {
        this.sendEvent(TransitterEvent.EVENT_ON_SHUTTER_DONE, photoSavingRequest);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onStorageStateChanged(String string) {
        synchronized (this) {
            if (this.mActivity != null) {
                if (!this.mActivity.getStorageManager().isReady()) {
                    this.sendEvent(TransitterEvent.EVENT_STORAGE_ERROR, new Object[0]);
                    this.mActivity.disableAutoOffTimer();
                } else {
                    this.sendEvent(TransitterEvent.EVENT_STORAGE_MOUNTED, new Object[0]);
                }
            }
            return;
        }
    }

    @Override
    public void onStoreComplete(final StoreDataResult storeDataResult) {
        if (MediaSavingUtil.isCoverPicture(storeDataResult.savingRequest.getSomcType())) {
            this.storeCoverResult(storeDataResult);
            this.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    StateMachine.this.sendEvent(TransitterEvent.EVENT_ON_STORE_COMPLETED, storeDataResult);
                }
            });
            return;
        }
        if (this.mActivity.isOneShotPhotoSecure()) {
            this.mActivity.finishSecureOneShot(storeDataResult);
            return;
        }
        this.sendEvent(TransitterEvent.EVENT_ON_STORE_COMPLETED, storeDataResult);
    }

    public void onTakePictureDone(byte[] arrby, PhotoSavingRequest photoSavingRequest) {
        photoSavingRequest.setImageData(arrby);
        this.sendEvent(TransitterEvent.EVENT_ON_TAKE_PICTURE_DONE, photoSavingRequest);
    }

    public void onVideoRecordingDone(VideoSavingRequest videoSavingRequest) {
        this.mIsInModeLessRecording = false;
        this.sendEvent(TransitterEvent.EVENT_ON_VIDEO_RECORDING_DONE, videoSavingRequest);
    }

    public void onZoomChange(int n, boolean bl, Camera camera) {
        this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_ZOOM_CHANGED, n);
    }

    public void releaseContentsViewController() {
        this.mContentsViewController = null;
    }

    public void removeChangeCameraModeTask() {
        this.mHandler.removeCallbacks(this.mChangeCameraModeTask);
    }

    public void removeOnStateChangedListener(OnStateChangedListener onStateChangedListener) {
        this.mOnStateChangedListenerSet.remove(onStateChangedListener);
    }

    public void removeStartRecordingTask() {
        this.mHandler.removeCallbacks(this.mStartRecordingTask);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public /* varargs */ void sendEvent(TransitterEvent var1_1, Object ... var2_2) {
        // MONITORENTER : this
        var3_3 = .$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$TransitterEvent[var1_1.ordinal()];
        switch (var3_3) {
            case 1: {
                this.mCurrentState.handleInitialize(var2_2);
                ** break;
            }
            case 2: {
                this.mCurrentState.handleResume(var2_2);
                ** break;
            }
            case 3: {
                this.mCurrentState.handleResumeTimeout(var2_2);
                ** break;
            }
            case 4: {
                this.mCurrentState.handlePause(var2_2);
                ** break;
            }
            case 5: {
                this.mCurrentState.handleFinalize(var2_2);
                ** break;
            }
            case 6: {
                this.mCurrentState.handleOnEvfPrepared(var2_2);
                ** break;
            }
            case 7: {
                this.mCurrentState.handleOnEvfPreparationFailed(var2_2);
                ** break;
            }
            case 8: {
                this.mCurrentState.handleOnInitialAutoFocusDone(var2_2);
                ** break;
            }
            case 9: {
                this.mCurrentState.handleOnAutoFocusDone(var2_2);
                ** break;
            }
            case 10: {
                this.mCurrentState.handleOnPreShutterDone(var2_2);
                ** break;
            }
            case 11: {
                this.mCurrentState.handleOnShutterDone(var2_2);
                ** break;
            }
            case 12: {
                this.mCurrentState.handleOnPreTakePictureDone(var2_2);
                ** break;
            }
            case 13: {
                this.mCurrentState.handleOnTakePictureDone(var2_2);
                ** break;
            }
            case 14: {
                this.mCurrentState.handleOnVideoRecordingDone(var2_2);
                ** break;
            }
            case 15: {
                this.mCurrentState.handleTouchContentProgress();
                ** break;
            }
            case 16: {
                this.mCurrentState.handleOnStoreRequested(var2_2);
                ** break;
            }
            case 17: {
                this.mCurrentState.handleOnStoreCompleted(var2_2);
                ** break;
            }
            case 18: {
                this.mCurrentState.handleKeyFocusDown(var2_2);
                ** break;
            }
            case 19: {
                this.mCurrentState.handleKeyFocusUp(var2_2);
                ** break;
            }
            case 20: {
                this.mCurrentState.handleKeyCaptureDown(var2_2);
                ** break;
            }
            case 21: {
                this.mCurrentState.handleKeyCaptureUp(var2_2);
                ** break;
            }
            case 22: {
                this.mCurrentState.handleKeyZoomInDown(var2_2);
                ** break;
            }
            case 23: {
                this.mCurrentState.handleKeyZoomOutDown(var2_2);
                ** break;
            }
            case 24: {
                this.mCurrentState.handleKeyZoomUp(var2_2);
                ** break;
            }
            case 25: {
                this.mCurrentState.handleKeyMenu(var2_2);
                ** break;
            }
            case 26: {
                this.mCurrentState.handleKeyBack(var2_2);
                ** break;
            }
            case 27: {
                this.mCurrentState.handlePrepareTouchZoom(var2_2);
                ** break;
            }
            case 28: {
                this.mCurrentState.handleOnPrepareTouchZoomTimedOut(var2_2);
                ** break;
            }
            case 29: {
                this.mCurrentState.handleStartTouchZoom(var2_2);
                ** break;
            }
            case 30: {
                this.mCurrentState.handleStopTouchZoom(var2_2);
                ** break;
            }
            case 31: {
                this.mCurrentState.handleCancelTouchZoom(var2_2);
                ** break;
            }
            case 32: {
                this.mCurrentState.handleCaptureButtonTouch(var2_2);
                ** break;
            }
            case 33: {
                this.mCurrentState.handleCaptureButtonRelease(var2_2);
                ** break;
            }
            case 34: {
                this.mCurrentState.handleCaptureButtonCancel(var2_2);
                ** break;
            }
            case 35: {
                this.mCurrentState.handleCaptureButtonLongPress(var2_2);
                ** break;
            }
            case 36: {
                this.mCurrentState.handleScreenClear(var2_2);
                ** break;
            }
            case 37: {
                this.mCurrentState.handleStartAfSearchInTouch(var2_2);
                ** break;
            }
            case 38: {
                this.mCurrentState.handleStartAfSearchInTouchStop(var2_2);
                ** break;
            }
            case 39: {
                this.mCurrentState.handleDialogOpened(var2_2);
                ** break;
            }
            case 40: {
                this.mCurrentState.handleDialogClosed(var2_2);
                ** break;
            }
            case 41: {
                this.mCurrentState.handleStorageError(var2_2);
                ** break;
            }
            case 42: {
                this.mCurrentState.handleStorageMounted(var2_2);
                ** break;
            }
            case 43: {
                this.mCurrentState.handleStorageShouldChange(var2_2);
                ** break;
            }
            case 44: {
                this.mCurrentState.handleSetFocusPosition(var2_2);
                ** break;
            }
            case 45: {
                this.mCurrentState.handleRequestSetupHeadUpDisplay(var2_2);
                ** break;
            }
            case 46: {
                this.mCurrentState.handleOnRecordingStartWaitDone(var2_2);
                ** break;
            }
            case 47: {
                this.mCurrentState.handleOnRecordingError(var2_2);
                ** break;
            }
            case 48: {
                this.mCurrentState.handleCamcordButtonRelease(var2_2);
                ** break;
            }
            case 49: {
                this.mCurrentState.handleSubCamcordButtonTouch(var2_2);
                ** break;
            }
            case 50: {
                this.mCurrentState.handleSubCamcordButtonRelease(var2_2);
                ** break;
            }
            case 51: {
                this.mCurrentState.handleSubCamcordButtonCancel(var2_2);
                ** break;
            }
            case 52: {
                this.mCurrentState.handleChangeSelectedFace(var2_2);
                ** break;
            }
            case 53: {
                this.mCurrentState.handleSetSelectedObjectPosition(var2_2);
                ** break;
            }
            case 54: {
                this.mCurrentState.handleDeselectObjectPosition(var2_2);
                ** break;
            }
            case 55: {
                this.mCurrentState.handleStartAfAfterObjectTracked(var2_2);
                ** break;
            }
            case 56: {
                this.mCurrentState.handleOnBurstShutterDone(var2_2);
                ** break;
            }
            case 57: {
                this.mCurrentState.handleOnBurstStoreCompleted(var2_2);
                ** break;
            }
            case 58: {
                this.mCurrentState.handleOnBurstGroupStoreCompleted(var2_2);
                ** break;
            }
            case 59: {
                this.mCurrentState.handleOnOnePreviewFrameUpdated(var2_2);
                ** break;
            }
            case 60: {
                this.mCurrentState.handleOnContinuousPreviewFrameUpdated(var2_2);
            }
lbl183: // 61 sources:
            default: {
                // MONITOREXIT : this
                return;
            }
            case 61: 
        }
        this.mCurrentState.handleSwitchCamera(var2_2);
    }

    /*
     * Exception decompiling
     */
    public /* varargs */ void sendStaticEvent(StaticEvent var1_1, Object ... var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:436)
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

    public void sendVideoChapterThumbnailToViewFinder() {
        if (this.mChapterThumbnail != null && this.mViewFinder.isHeadUpDesplayReady()) {
            if (this.mLastVideoSavingRequest != null) {
                this.mChapterThumbnail.setOrientation(this.mLastVideoSavingRequest.common.orientation);
            }
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_ADD_VIDEO_CHAPTER, this.mChapterThumbnail);
            this.mChapterThumbnail = null;
        }
    }

    public void setCameraDeviceHandler(CameraDeviceHandler cameraDeviceHandler) {
        this.mCameraDeviceHandler = cameraDeviceHandler;
    }

    public void setCurrentCapturingMode(CapturingMode capturingMode) {
        this.mCurrentCapturingMode = capturingMode;
    }

    public void setTargetCapturingMode(CapturingMode capturingMode) {
        this.mTargetCapturingMode = capturingMode;
    }

    public void setViewFinder(BaseFastViewFinder baseFastViewFinder) {
        this.mViewFinder = baseFastViewFinder;
    }

    public void showStorageErrorDialogForce() {
        if (this.mActivity != null) {
            if (this.mActivity.getStorageManager() != null) {
                return;
            }
            CameraLogger.w(TAG, "mActivity.getStorageManager() is null.");
            return;
        }
        CameraLogger.w(TAG, "mActivity is null.");
    }

    public boolean storeCoverResult(StoreDataResult storeDataResult) {
        if (MediaSavingUtil.isCoverPicture(storeDataResult.savingRequest.getSomcType())) {
            this.mBurstCoverResult = storeDataResult;
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SET_EARLY_THUMBNAIL, ThumbnailUtil.createThumbnailViewFromUri(this.mActivity, storeDataResult.uri, storeDataResult.savingRequest.common.orientation));
            return true;
        }
        return false;
    }

    protected void switchStorage() {
        if (this.mActivity != null) {
            if (this.mActivity.getCommonSettings().get(CommonSettingKey.SAVE_DESTINATION) == SaveDestination.SDCARD) {
                this.mActivity.getCommonSettings().set(SaveDestination.EMMC);
                this.mActivity.getStorageManager().setCurrentStorage(StorageManager.StorageType.INTERNAL);
            }
        } else {
            return;
        }
        this.mActivity.getCommonSettings().set(SaveDestination.SDCARD);
        this.mActivity.getStorageManager().setCurrentStorage(StorageManager.StorageType.EXTERNAL_CARD);
    }

    public boolean tryToSetCameraParameters(Camera.Parameters parameters) {
        return this.mCameraDeviceHandler.trySetParametersToDevice(parameters);
    }

    public static enum CaptureState {
        STATE_NONE(false, false, false, false),
        STATE_INITIALIZE(false, false, false, false),
        STATE_RESUME(false, false, false, false),
        STATE_CAMERA_SWITCHING(false, false, false, false),
        STATE_PHOTO_BASE(false, false, false, false),
        STATE_PHOTO_ZOOMING_BASE(false, false, false, false),
        STATE_STANDBY(true, true, true, true),
        STATE_PHOTO_READY_FOR_RECORDING(false, false, false, false),
        STATE_PHOTO_SELFTIMER_COUNTDOWN(true, false, false, true),
        STATE_PHOTO_ZOOMING(false, true, false, false),
        STATE_PHOTO_ZOOMING_IN_TOUCH(false, true, false, false),
        STATE_STANDBY_DIALOG(true, true, false, false),
        STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START(false, false, false, false),
        STATE_PHOTO_AF_SEARCH(false, false, false, false),
        STATE_PHOTO_AF_SEARCH_IN_TOUCH(false, false, false, false),
        STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION(false, false, false, false),
        STATE_PHOTO_AF_DONE(false, false, false, false),
        STATE_PHOTO_AF_DONE_IN_TOUCH(false, false, false, false),
        STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE(false, false, false, false),
        STATE_PHOTO_CAPTURE(false, false, false, false),
        STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE(false, false, false, false),
        STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST(false, false, false, false),
        STATE_PHOTO_CAPTURE_HI_SPEED_BURST(false, false, false, false),
        STATE_PHOTO_STORE(false, false, false, false),
        STATE_VIDEO_BASE(false, false, false, false),
        STATE_VIDEO_ZOOMING_BASE(false, false, false, false),
        STATE_VIDEO_RECORDING_STARTING(false, false, false, false),
        STATE_VIDEO_RECORDING(true, false, false, false),
        STATE_VIDEO_CAPTURE_WHILE_RECORDING(false, false, false, false),
        STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING(false, false, false, false),
        STATE_VIDEO_ZOOMING_WHILE_RECORDING(false, false, false, false),
        STATE_VIDEO_ZOOMING_IN_TOUCH_WHILE_RECORDING(false, false, false, false),
        STATE_VIDEO_STORE(false, false, false, false),
        STATE_PAUSE(false, true, false, false),
        STATE_WARNING(true, true, true, false),
        STATE_FINALIZE(false, false, false, false),
        STATE_VIDEO_RECORDING_PAUSING(true, false, false, false);
        
        final boolean mCanApplicationBeFinished;
        final boolean mCanHandleAsynchronizedTask;
        final boolean mCanHandleWearableCaptureRequest;
        final boolean mCanSwitchPhotoVideoMode;

        private CaptureState(boolean bl, boolean bl2, boolean bl3, boolean bl4) {
            this.mCanHandleAsynchronizedTask = bl;
            this.mCanApplicationBeFinished = bl2;
            this.mCanSwitchPhotoVideoMode = bl3;
            this.mCanHandleWearableCaptureRequest = bl4;
        }

        public boolean canApplicationBeFinished() {
            return this.mCanApplicationBeFinished;
        }

        public boolean canHandleAsynchronizedTask() {
            return this.mCanHandleAsynchronizedTask;
        }

        public boolean canHandleWearableCaptureRequest() {
            return this.mCanHandleWearableCaptureRequest;
        }

        public boolean canSwitchPhotoVideoMode() {
            return this.mCanSwitchPhotoVideoMode;
        }
    }

    private class ChangeCameraModeTask
    implements Runnable {
        private final boolean mIsChangeToStandbyRequired;
        private final boolean mIsModelessRecording;
        private final int mRequestCameraType;

        public ChangeCameraModeTask(int n, boolean bl, boolean bl2) {
            this.mRequestCameraType = n;
            this.mIsChangeToStandbyRequired = bl;
            this.mIsModelessRecording = bl2;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            if (StateMachine.this.mCameraDeviceHandler == null) return;
            if (StateMachine.this.mViewFinder == null) {
                return;
            }
            if (StateMachine.this.mCameraDeviceHandler.changeCameraModeTo(this.mRequestCameraType, this.mIsModelessRecording)) {
                StateMachine.this.doDeselectObject();
            }
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_RESIZE_EVF_SCOPE, new Object[0]);
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_CAMERA_MODE_CHANGED_TO, this.mRequestCameraType);
            if (this.mIsChangeToStandbyRequired) {
                switch (this.mRequestCameraType) {
                    case 1: {
                        StateMachine.this.changeTo(new StateStandby(true), new Object[0]);
                        StateMachine.this.mActivity.updateLaunchMode(FastCapture.LAUNCH_ONLY);
                        break;
                    }
                    case 2: {
                        StateMachine.this.changeTo(new StateStandby(), new Object[0]);
                        StateMachine.this.mActivity.updateLaunchMode(FastCapture.VIDEO_LAUNCH_ONLY);
                    }
                }
            }
            if (!StateMachine.this.mCameraDeviceHandler.willPreviewBeRestarted()) return;
            Runnable runnable = new Runnable(){

                @Override
                public void run() {
                    StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SHOW_SURFACE, new Object[0]);
                }
            };
            if (StateMachine.this.mCameraDeviceHandler.getVideoSize().isConstraint()) {
                StateMachine.this.mHandler.postDelayed(runnable, 1500);
                return;
            }
            StateMachine.this.mHandler.postDelayed(runnable, 30);
        }

    }

    private class DoFastestCamcordTask
    implements Runnable {
        private DoFastestCamcordTask() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            if (!StateMachine.this.mActivity.getStorageManager().isReady()) {
                StateMachine.this.mHandler.post(new Runnable(){

                    @Override
                    public void run() {
                        StateMachine.this.changeTo(new StateWarning(), new Object[0]);
                    }
                });
                return;
            }
            if (StateMachine.this.mLastVideoSavingRequest == null) return;
            try {
                if (!StateMachine.this.isInRecordingStartingState()) return;
                StateMachine.this.mCameraDeviceHandler.startRecording(StateMachine.this.mLastVideoSavingRequest, StateMachine.this.mRecorderListener);
                StateMachine.this.updateDateTaken(StateMachine.this.mLastVideoSavingRequest);
                return;
            }
            catch (RuntimeException var1_1) {
                StateMachine.this.mHandler.post(new Runnable(){

                    @Override
                    public void run() {
                        if (AudioResourceChecker.isAudioResourceAvailable(StateMachine.this.mActivity)) {
                            StateMachine.this.mActivity.getMessagePopup().showErrorUncancelable(2131296367, 2131296402, false);
                            StateMachine.this.changeTo(new StateWarning(), new Object[0]);
                            GoogleAnalyticsUtil.getInstance().sendCameraNotAvailableEvent();
                            return;
                        }
                        StateMachine.this.mActivity.getMessagePopup().showOk(2131296645, 2131296402, false, 2131296429, null, null);
                        StateMachine.this.changeTo(new StateStandby(), new Object[0]);
                    }
                });
                return;
            }
        }

    }

    public static enum ErrorCode {
        ERROR_ON_START_PREVIEW;
        

        private ErrorCode() {
        }
    }

    private class FaceIdCallback
    implements FaceIdentification.FaceIdentificationCallback {
        private FaceIdCallback() {
        }

        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> list) {
            StateMachine.this.sendStaticEvent(StaticEvent.EVENT_ON_FACE_IDENTEFIED, list);
        }
    }

    private class NotifyDelayedEventTask
    implements Runnable {
        private final Object[] mArgs;
        private final TransitterEvent mEvent;

        private NotifyDelayedEventTask(TransitterEvent transitterEvent, Object[] arrobject) {
            this.mEvent = transitterEvent;
            this.mArgs = arrobject;
        }

        @Override
        public void run() {
            StateMachine.this.sendEvent(this.mEvent, this.mArgs);
        }
    }

    public static interface OnStateChangedListener {
        public /* varargs */ void onStateChanged(CaptureState var1, Object ... var2);
    }

    private class RequestStoreTask
    implements Runnable {
        private final PhotoSavingRequest mRequest;

        public RequestStoreTask(PhotoSavingRequest photoSavingRequest) {
            this.mRequest = photoSavingRequest;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            StateMachine stateMachine = StateMachine.this;
            synchronized (stateMachine) {
                if (StateMachine.this.mContentsViewController != null) {
                    StateMachine.this.storePicture(this.mRequest);
                } else if (StateMachine.this.mActivity.isDeviceInSecurityLock()) {
                    StateMachine.this.mPhotoSavingRequestList.add(this.mRequest);
                } else {
                    this.mRequest.setRequestId(-1);
                    StateMachine.this.storePicture(this.mRequest);
                }
            }
            StateMachine.this.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    StateMachine.this.calculateRemainStorage(false, false);
                    StateMachine.this.sendEvent(TransitterEvent.EVENT_ON_STORE_REQUESTED, new Object[0]);
                }
            });
        }

    }

    private class StartRecordingTask
    implements Runnable {
        private StartRecordingTask() {
        }

        @Override
        public void run() {
            StateMachine.this.doStartRecording(new Object[0]);
        }
    }

    class State {
        protected CaptureState mCaptureState;

        public State() {
            this.mCaptureState = CaptureState.STATE_NONE;
        }

        public void entry() {
        }

        public void exit() {
        }

        public CaptureState getCaptureState() {
            return this.mCaptureState;
        }

        public /* varargs */ void handleCamcordButtonRelease(Object ... arrobject) {
        }

        public /* varargs */ void handleCancelTouchZoom(Object ... arrobject) {
        }

        public /* varargs */ void handleCaptureButtonCancel(Object ... arrobject) {
        }

        public /* varargs */ void handleCaptureButtonLongPress(Object ... arrobject) {
        }

        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
        }

        public /* varargs */ void handleCaptureButtonTouch(Object ... arrobject) {
        }

        public /* varargs */ void handleChangeSelectedFace(Object ... arrobject) {
        }

        public /* varargs */ void handleDeselectObjectPosition(Object ... arrobject) {
        }

        public /* varargs */ void handleDialogClosed(Object ... arrobject) {
        }

        public /* varargs */ void handleDialogOpened(Object ... arrobject) {
        }

        public /* varargs */ void handleFinalize(Object ... arrobject) {
        }

        public /* varargs */ void handleInitialize(Object ... arrobject) {
        }

        public /* varargs */ void handleKeyBack(Object ... arrobject) {
        }

        public /* varargs */ void handleKeyCaptureDown(Object ... arrobject) {
        }

        public /* varargs */ void handleKeyCaptureUp(Object ... arrobject) {
        }

        public /* varargs */ void handleKeyFocusDown(Object ... arrobject) {
        }

        public /* varargs */ void handleKeyFocusUp(Object ... arrobject) {
        }

        public /* varargs */ void handleKeyMenu(Object ... arrobject) {
        }

        public /* varargs */ void handleKeyZoomInDown(Object ... arrobject) {
        }

        public /* varargs */ void handleKeyZoomOutDown(Object ... arrobject) {
        }

        public /* varargs */ void handleKeyZoomUp(Object ... arrobject) {
        }

        public /* varargs */ void handleOnAutoFocusDone(Object ... arrobject) {
        }

        public /* varargs */ void handleOnBurstGroupStoreCompleted(Object ... arrobject) {
            StateMachine.this.onBurstStoreComplete(true);
        }

        public /* varargs */ void handleOnBurstShutterDone(Object ... arrobject) {
        }

        public /* varargs */ void handleOnBurstStoreCompleted(Object ... arrobject) {
        }

        public /* varargs */ void handleOnContinuousPreviewFrameUpdated(Object ... arrobject) {
        }

        public /* varargs */ void handleOnEvfPreparationFailed(Object ... arrobject) {
        }

        public /* varargs */ void handleOnEvfPrepared(Object ... arrobject) {
        }

        public /* varargs */ void handleOnFaceDetected(Object ... arrobject) {
        }

        public /* varargs */ void handleOnFaceIdentified(Object ... arrobject) {
        }

        public /* varargs */ void handleOnInitialAutoFocusDone(Object ... arrobject) {
            CameraLogger.e("FastCapture", "ERROR:PRE-SCAN Event is not handled correctly. Check sequence.");
            StateMachine.this.cancelAutoFocus(false);
        }

        public /* varargs */ void handleOnObjectTracked(Object ... arrobject) {
        }

        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... arrobject) {
        }

        public /* varargs */ void handleOnOrientationChanged(Object ... arrobject) {
        }

        public /* varargs */ void handleOnPhotoStackInitialized(Object ... arrobject) {
        }

        public /* varargs */ void handleOnPreShutterDone(Object ... arrobject) {
        }

        public /* varargs */ void handleOnPreTakePictureDone(Object ... arrobject) {
        }

        public /* varargs */ void handleOnPrepareTouchZoomTimedOut(Object ... arrobject) {
        }

        public /* varargs */ void handleOnRecordingError(Object ... arrobject) {
        }

        public /* varargs */ void handleOnRecordingStartWaitDone(Object ... arrobject) {
        }

        public /* varargs */ void handleOnSceneModeChanged(Object ... arrobject) {
        }

        public /* varargs */ void handleOnShutterDone(Object ... arrobject) {
        }

        /*
         * Exception decompiling
         */
        public /* varargs */ void handleOnStoreCompleted(Object ... var1_1) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
            // org.benf.cfr.reader.Main.doJar(Main.java:126)
            // org.benf.cfr.reader.Main.main(Main.java:178)
            throw new IllegalStateException("Decompilation failed");
        }

        public /* varargs */ void handleOnStoreRequested(Object ... arrobject) {
        }

        public /* varargs */ void handleOnTakePictureDone(Object ... arrobject) {
        }

        public /* varargs */ void handleOnVideoRecordingDone(Object ... arrobject) {
        }

        public /* varargs */ void handlePause(Object ... arrobject) {
        }

        public /* varargs */ void handlePrepareTouchZoom(Object ... arrobject) {
        }

        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... arrobject) {
            StateMachine.this.mHandler.postDelayed(new ReTrySetupHeadUpDisplayTask(), 100);
        }

        public /* varargs */ void handleResume(Object ... arrobject) {
        }

        public /* varargs */ void handleResumeTimeout(Object ... arrobject) {
        }

        public /* varargs */ void handleScreenClear(Object ... arrobject) {
        }

        public /* varargs */ void handleSetFocusPosition(Object ... arrobject) {
        }

        public /* varargs */ void handleSetSelectedObjectPosition(Object ... arrobject) {
        }

        public /* varargs */ void handleStartAfAfterObjectTracked(Object ... arrobject) {
        }

        public /* varargs */ void handleStartAfSearchInTouch(Object ... arrobject) {
        }

        public /* varargs */ void handleStartAfSearchInTouchStop(Object ... arrobject) {
        }

        public /* varargs */ void handleStartTouchZoom(Object ... arrobject) {
        }

        public /* varargs */ void handleStopTouchZoom(Object ... arrobject) {
        }

        public /* varargs */ void handleStorageError(Object ... arrobject) {
        }

        public /* varargs */ void handleStorageMounted(Object ... arrobject) {
        }

        public /* varargs */ void handleStorageShouldChange(Object ... arrobject) {
        }

        public /* varargs */ void handleSubCamcordButtonCancel(Object ... arrobject) {
        }

        public /* varargs */ void handleSubCamcordButtonRelease(Object ... arrobject) {
        }

        public /* varargs */ void handleSubCamcordButtonTouch(Object ... arrobject) {
        }

        public /* varargs */ void handleSwitchCamera(Object ... arrobject) {
        }

        public void handleTouchContentProgress() {
        }

        public boolean isMenuAvailable() {
            return false;
        }

        public boolean isRecording() {
            return false;
        }

        public String toString() {
            if (this.mCaptureState == null) {
                return CaptureState.STATE_NONE.toString();
            }
            return this.mCaptureState.toString();
        }

        class ReTrySetupHeadUpDisplayTask
        implements Runnable {
            ReTrySetupHeadUpDisplayTask() {
            }

            @Override
            public void run() {
                StateMachine.this.sendEvent(TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[0]);
            }
        }

    }

    class StateCameraSwitching
    extends State {
        private static final String TAG = "StateMachine.StateCameraSwitching";
        private final FastCapture mFastCapture;
        private boolean mIsLaunch;
        final /* synthetic */ StateMachine this$0;

        public StateCameraSwitching(StateMachine stateMachine) {
            this.this$0 = stateMachine;
            this.mIsLaunch = false;
            this.mCaptureState = CaptureState.STATE_CAMERA_SWITCHING;
            this.mFastCapture = FastCapture.LAUNCH_ONLY;
            this.mIsLaunch = false;
            stateMachine.mHandler.removeCallbacks(stateMachine.mNotifyResumeTimeoutTask);
            stateMachine.mHandler.postDelayed(stateMachine.mNotifyResumeTimeoutTask, 5000);
        }

        public StateCameraSwitching(StateMachine stateMachine, FastCapture fastCapture) {
            this.this$0 = stateMachine;
            this.mIsLaunch = false;
            this.mFastCapture = fastCapture;
            this.mIsLaunch = true;
        }

        @Override
        public /* varargs */ void handleOnEvfPreparationFailed(Object ... arrobject) {
            if (!this.this$0.mCameraDeviceHandler.isOpenDeviceThreadAlive()) {
                this.this$0.mActivity.prepareCameraDeviceHandler(this.this$0.mActivity, this.mFastCapture, this.this$0.getTargetCameraId());
            }
        }

        @Override
        public /* varargs */ void handleOnEvfPrepared(Object ... object) {
            object = (SurfaceHolder)object[0];
            this.this$0.startFastCapture((SurfaceHolder)object, this.mFastCapture, this.mIsLaunch);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            this.this$0.changeTo(this.this$0.new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleResumeTimeout(Object ... arrobject) {
            GoogleAnalyticsUtil.getInstance().setCameraNotAvailableFailedToOpen();
            CameraLogger.errorLogForNonUserVariant("StateMachine.StateCameraSwitching", "[CameraNotAvailable] resume timeout.");
            this.this$0.mActivity.showCameraNotAvailableError();
            this.this$0.changeTo(this.this$0.new StateWarning(), new Object[0]);
        }
    }

    class StateFinalize
    extends State {
        public StateFinalize() {
            this.mCaptureState = CaptureState.STATE_FINALIZE;
        }

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... arrobject) {
        }
    }

    class StateInitialize
    extends State {
        public StateInitialize() {
            this.mCaptureState = CaptureState.STATE_INITIALIZE;
            switch (StateMachine.this.mCameraDeviceHandler.getPreProcessState()) {
                default: {
                    return;
                }
                case PRE_SCAN_DONE: 
            }
            StateMachine.this.mCameraDeviceHandler.preCapture();
        }

        @Override
        public /* varargs */ void handleOnInitialAutoFocusDone(Object ... arrobject) {
            StateMachine.this.mCameraDeviceHandler.preCapture();
        }

        @Override
        public /* varargs */ void handleOnPreShutterDone(Object ... object) {
            object = new NotifyDelayedEventTask(TransitterEvent.EVENT_ON_PRE_SHUTTER_DONE, (Object[])object);
            StateMachine.this.mHandler.postDelayed((Runnable)object, 100);
        }

        @Override
        public /* varargs */ void handleOnPreTakePictureDone(Object ... object) {
            object = new NotifyDelayedEventTask(TransitterEvent.EVENT_ON_PRE_TAKE_PICTURE_DONE, (Object[])object);
            StateMachine.this.mHandler.postDelayed((Runnable)object, 100);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleResume(Object ... arrobject) {
            StateMachine.this.changeTo(new StateResume((FastCapture)arrobject[0]), arrobject);
        }
    }

    class StateNone
    extends State {
        final /* synthetic */ StateMachine this$0;

        public StateNone(StateMachine stateMachine) {
            this.this$0 = stateMachine;
            this.mCaptureState = CaptureState.STATE_NONE;
        }

        public StateNone(StateMachine stateMachine, FastCapture fastCapture) {
            this.this$0 = stateMachine;
            this.mCaptureState = CaptureState.STATE_NONE;
        }

        @Override
        public /* varargs */ void handleInitialize(Object ... arrobject) {
            this.this$0.changeTo(this.this$0.new StateInitialize(), arrobject);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            this.this$0.changeTo(this.this$0.new StatePause(), arrobject);
        }
    }

    class StatePause
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePause";

        public StatePause() {
            super();
            this.mCaptureState = CaptureState.STATE_PAUSE;
            StateMachine.this.mCameraDeviceHandler.stopFaceDetection();
            StateMachine.this.mCameraDeviceHandler.stopSceneRecognition();
            StateMachine.this.mCameraDeviceHandler.deselectObject();
            StateMachine.this.mCameraDeviceHandler.stopLiveViewFinder();
            StateMachine.this.mCurrentCapturingMode = CapturingMode.SCENE_RECOGNITION;
            StateMachine.this.mTargetCapturingMode = CapturingMode.SCENE_RECOGNITION;
            StateMachine.this.removeStartRecordingTask();
        }

        @Override
        public /* varargs */ void handleFinalize(Object ... arrobject) {
            StateMachine.this.changeTo(new StateFinalize(), arrobject);
        }

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... arrobject) {
            StateMachine.this.requestStoreVideo((VideoSavingRequest)arrobject[0]);
        }

        @Override
        public /* varargs */ void handleResume(Object ... object) {
            object = (FastCapture)object[0];
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_CAMERA_MODE_CHANGED_TO, 1);
            StateMachine.this.changeTo(new StateResume((FastCapture)object), new Object[0]);
        }
    }

    class StatePhotoAfDone
    extends StatePhotoBase {
        public StatePhotoAfDone() {
            super();
            this.mCaptureState = CaptureState.STATE_PHOTO_AF_DONE;
        }

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... arrobject) {
            if (StateMachine.this.mCameraDeviceHandler == null) {
                return;
            }
            if (StateMachine.this.isBurstShotEnabled()) {
                switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$BurstShot[StateMachine.this.mCameraDeviceHandler.getBurstShotSetting().ordinal()]) {
                    default: {
                        StateMachine.this.doCapture();
                        StateMachine.this.changeTo(new StatePhotoCapture(), arrobject);
                        return;
                    }
                    case 1: {
                        StateMachine.this.changeTo(new StatePhotoCaptureBestEffortBurst(false, true), new Object[]{true});
                        StateMachine.this.doCaptureBestEffortBurst(true);
                        return;
                    }
                    case 2: 
                }
                StateMachine.this.doStartHighSpeedBurst(new StatePhotoCaptureHighSpeedBurst(false, true), true);
                return;
            }
            StateMachine.this.doCapture();
            StateMachine.this.changeTo(new StatePhotoCapture(), arrobject);
        }

        @Override
        public /* varargs */ void handleKeyFocusUp(Object ... arrobject) {
            StateMachine.this.cancelAutoFocus(false);
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.cancelAutoFocus(true);
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }
    }

    class StatePhotoAfDoneInTouch
    extends StatePhotoBase {
        public StatePhotoAfDoneInTouch() {
            super();
            this.mCaptureState = CaptureState.STATE_PHOTO_AF_DONE_IN_TOUCH;
        }

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... arrobject) {
            StateMachine.this.cancelAutoFocus(false);
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handleCaptureButtonLongPress(Object ... arrobject) {
            if (!StateMachine.this.isBurstShotEnabled()) {
                return;
            }
            switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$BurstShot[StateMachine.this.mCameraDeviceHandler.getBurstShotSetting().ordinal()]) {
                default: {
                    return;
                }
                case 1: {
                    StateMachine.this.changeTo(new StatePhotoCaptureBestEffortBurst(false, false), new Object[]{true});
                    StateMachine.this.doCaptureBestEffortBurst(true);
                    return;
                }
                case 2: 
            }
            StateMachine.this.doStartHighSpeedBurst(new StatePhotoCaptureHighSpeedBurst(false, false), true);
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            StateMachine.this.doCapture();
            StateMachine.this.changeTo(new StatePhotoCapture(), arrobject);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.cancelAutoFocus(true);
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleScreenClear(Object ... arrobject) {
            this.handleCaptureButtonCancel(arrobject);
        }

        @Override
        public /* varargs */ void handleStartAfSearchInTouch(Object ... arrobject) {
            StateMachine.this.cancelAutoFocus(false);
            StateMachine.this.changeTo(new StatePhotoAfSearchInTouch(true, true), arrobject);
        }
    }

    class StatePhotoAfSearch
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoAfSearch";

        public StatePhotoAfSearch() {
            super();
            this.mCaptureState = CaptureState.STATE_PHOTO_AF_SEARCH;
        }

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePhotoCaptureWaitForAfDone(false, true), arrobject);
        }

        @Override
        public /* varargs */ void handleKeyFocusUp(Object ... arrobject) {
            StateMachine.this.cancelAutoFocus(false);
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... arrobject) {
            StateMachine.this.requestPlayAutoFocusSuccessSound((Boolean)arrobject[0]);
            StateMachine.this.changeTo(new StatePhotoAfDone(), arrobject);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.cancelAutoFocus(true);
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }
    }

    class StatePhotoAfSearchInTouch
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoAfSearchInTouch";
        private boolean mIsAutoFocusAlreadyCanceled;
        private boolean mIsPreparePinchZoomAlreadyTimedout;
        private boolean mIsUseBurst;

        public StatePhotoAfSearchInTouch(boolean bl, boolean bl2) {
            super();
            this.mIsPreparePinchZoomAlreadyTimedout = false;
            this.mIsUseBurst = false;
            this.mCaptureState = CaptureState.STATE_PHOTO_AF_SEARCH_IN_TOUCH;
            this.mIsAutoFocusAlreadyCanceled = bl;
            this.mIsUseBurst = bl2;
            StateMachine.this.mHandler.postDelayed(new Runnable(StateMachine.this){
                final /* synthetic */ StateMachine val$this$0;

                @Override
                public void run() {
                    StateMachine.this.sendEvent(TransitterEvent.EVENT_ON_PREPARE_TOUCH_ZOOM_TIMED_OUT, new Object[0]);
                }
            }, 100);
        }

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... arrobject) {
            if (!this.mIsAutoFocusAlreadyCanceled) {
                StateMachine.this.cancelAutoFocus(false);
                this.mIsAutoFocusAlreadyCanceled = true;
            }
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handleCaptureButtonLongPress(Object ... arrobject) {
            if (StateMachine.this.mCameraDeviceHandler.getBurstShotSetting().isBurstShotOn()) {
                this.mIsUseBurst = true;
            }
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePhotoCaptureWaitForAfDone(false, false), arrobject);
            if (this.mIsAutoFocusAlreadyCanceled) {
                StateMachine.this.startAutoFocus();
                this.mIsAutoFocusAlreadyCanceled = false;
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... arrobject) {
            StateMachine.this.requestPlayAutoFocusSuccessSound((Boolean)arrobject[0]);
            StateMachine.this.changeTo(new StatePhotoAfDoneInTouch(), arrobject);
            if (!this.mIsUseBurst || !StateMachine.this.isBurstShotEnabled()) return;
            switch (com.sonyericsson.android.camera.fastcapturing.StateMachine$5.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$BurstShot[StateMachine.this.mCameraDeviceHandler.getBurstShotSetting().ordinal()]) {
                default: {
                    return;
                }
                case 1: {
                    StateMachine.this.changeTo(new StatePhotoCaptureBestEffortBurst(false, false), new Object[]{true});
                    StateMachine.this.doCaptureBestEffortBurst(true);
                    return;
                }
                case 2: 
            }
            StateMachine.this.doStartHighSpeedBurst(new StatePhotoCaptureHighSpeedBurst(false, false), true);
        }

        @Override
        public /* varargs */ void handleOnPrepareTouchZoomTimedOut(Object ... arrobject) {
            this.mIsPreparePinchZoomAlreadyTimedout = true;
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            if (!this.mIsAutoFocusAlreadyCanceled) {
                StateMachine.this.cancelAutoFocus(true);
                this.mIsAutoFocusAlreadyCanceled = true;
            }
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handlePrepareTouchZoom(Object ... arrobject) {
            if (this.mIsPreparePinchZoomAlreadyTimedout || !StateMachine.this.isSmoothZoomEnabled()) {
                return;
            }
            if (!this.mIsAutoFocusAlreadyCanceled) {
                StateMachine.this.cancelAutoFocus(true);
                this.mIsAutoFocusAlreadyCanceled = true;
            }
            StateMachine.this.changeTo(new StatePhotoZoomingInTouch(), arrobject);
        }

        @Override
        public /* varargs */ void handleScreenClear(Object ... arrobject) {
            this.handleCaptureButtonCancel(arrobject);
        }

        @Override
        public /* varargs */ void handleSetFocusPosition(Object ... arrobject) {
            if (this.mIsAutoFocusAlreadyCanceled) {
                StateMachine.this.mCameraDeviceHandler.setFocusPosition((PointF)arrobject[1]);
            }
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_SELECTED, arrobject[0], arrobject[2]);
        }

        @Override
        public /* varargs */ void handleStartAfSearchInTouch(Object ... arrobject) {
            if (!this.mIsAutoFocusAlreadyCanceled) {
                StateMachine.this.cancelAutoFocus(false);
                this.mIsAutoFocusAlreadyCanceled = true;
            }
            StateMachine.this.changeTo(new StatePhotoAfSearchInTouchDraggingFocusPosition(), arrobject);
        }

        @Override
        public /* varargs */ void handleStartAfSearchInTouchStop(Object ... arrobject) {
            if (this.mIsAutoFocusAlreadyCanceled) {
                StateMachine.this.startAutoFocus();
                this.mIsAutoFocusAlreadyCanceled = false;
            }
        }

    }

    class StatePhotoAfSearchInTouchDraggingFocusPosition
    extends StatePhotoBase {
        public StatePhotoAfSearchInTouchDraggingFocusPosition() {
            super();
            this.mCaptureState = CaptureState.STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION;
        }

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... arrobject) {
            StateMachine.this.mCameraDeviceHandler.resetFocusMode();
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePhotoCaptureWaitForAfDone(false, false), arrobject);
            StateMachine.this.startAutoFocus();
        }

        @Override
        public /* varargs */ void handleCaptureButtonTouch(Object ... arrobject) {
            if (StateMachine.this.startAutoFocus()) {
                StateMachine.this.changeTo(new StatePhotoAfSearchInTouch(false, (Boolean)arrobject[0]), arrobject);
            }
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.mCameraDeviceHandler.resetFocusMode();
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleScreenClear(Object ... arrobject) {
            this.handleCaptureButtonCancel(arrobject);
        }

        @Override
        public /* varargs */ void handleSetFocusPosition(Object ... arrobject) {
            StateMachine.this.mCameraDeviceHandler.setFocusPosition((PointF)arrobject[1]);
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_SELECTED, arrobject[0], arrobject[2]);
        }

        @Override
        public /* varargs */ void handleStartAfSearchInTouchStop(Object ... arrobject) {
            StateMachine.this.startAutoFocus();
            StateMachine.this.changeTo(new StatePhotoAfSearchInTouch(false, true), arrobject);
        }
    }

    class StatePhotoBase
    extends State {
        public StatePhotoBase() {
            this.mCaptureState = CaptureState.STATE_PHOTO_BASE;
        }

        @Override
        public /* varargs */ void handleOnOrientationChanged(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, arrobject[0]);
        }
    }

    class StatePhotoCapture
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCapture";
        private boolean mIsNextCaptureRequired;

        public StatePhotoCapture() {
            this.mIsNextCaptureRequired = false;
            this.mCaptureState = CaptureState.STATE_PHOTO_CAPTURE;
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            if (!(StateMachine.this.mViewFinder.getAutoReviewSetting() != AutoReview.OFF || StateMachine.this.mActivity.isOneShotPhotoSecure())) {
                this.mIsNextCaptureRequired = true;
            }
        }

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... arrobject) {
            if (!(StateMachine.this.mViewFinder.getAutoReviewSetting() != AutoReview.OFF || StateMachine.this.mActivity.isOneShotPhotoSecure())) {
                this.mIsNextCaptureRequired = true;
            }
        }

        @Override
        public /* varargs */ void handleOnPreShutterDone(Object ... arrobject) {
        }

        @Override
        public /* varargs */ void handleOnPreTakePictureDone(Object ... object) {
            object = (PhotoSavingRequest)object[0];
            StateMachine.this.changeTo(new StatePhotoStore(), new Object[0]);
            StateMachine.this.requestStorePicture((PhotoSavingRequest)object);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public /* varargs */ void handleOnShutterDone(Object ... object) {
            StateMachine.this.mViewFinder.onCaptureDone();
            object = (PhotoSavingRequest)object[0];
            synchronized (this) {
                object.setRequestId(StateMachine.this.mViewFinder.getRequestId(false));
            }
            StateMachine.this.mViewFinder.startCaptureFeedbackAnimation();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleOnTakePictureDone(Object ... object) {
            object = (PhotoSavingRequest)object[0];
            if (this.mIsNextCaptureRequired) {
                StateMachine.this.requestStorePicture((PhotoSavingRequest)object);
                StateMachine.this.mViewFinder.startCaptureFeedbackAnimation();
                StateMachine.this.doCapture();
                StateMachine.this.changeTo(new StatePhotoCaptureWaitForNextCapture(), new Object[0]);
            } else {
                StateMachine.this.changeTo(new StatePhotoStore(), new Object[0]);
                StateMachine.this.requestStorePicture((PhotoSavingRequest)object);
            }
            if (StateMachine.this.mViewFinder.getAutoReviewSetting() == AutoReview.OFF) {
                StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SET_EARLY_THUMBNAIL, ThumbnailUtil.createThumbnailViewFromJpeg(StateMachine.this.mActivity, object.getImageData(), StateMachine.access$2900((StateMachine)StateMachine.this).common.orientation));
                StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION, object.getRequestId());
            }
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }
    }

    class StatePhotoCaptureBestEffortBurst
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCapture";
        private final boolean mIsCalledByKeyEvent;
        private boolean mIsCaptureDone;
        private boolean mIsMemoryErrorOccured;
        private boolean mIsRequestStoreDone;
        private final BurstShotPathBuilder mPathBuilder;
        private boolean mWaitingForAfDone;

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public StatePhotoCaptureBestEffortBurst(boolean bl, boolean bl2) {
            BurstShotPathBuilder burstShotPathBuilder;
            this.mIsMemoryErrorOccured = false;
            this.mIsCaptureDone = false;
            this.mIsRequestStoreDone = true;
            this.mCaptureState = CaptureState.STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST;
            this.mWaitingForAfDone = bl;
            this.mIsCalledByKeyEvent = bl2;
            StateMachine.this.clearBurst();
            try {
                burstShotPathBuilder = new BurstShotPathBuilder();
            }
            catch (IOException var4_5) {
                burstShotPathBuilder = null;
            }
            this.mPathBuilder = burstShotPathBuilder;
            StateMachine.this.mActivity.disableAutoOffTimer();
        }

        private void setStopBurstRequest(boolean bl) {
            if (this.mIsCalledByKeyEvent == bl) {
                StateMachine.this.mIsStopBurstRequested = true;
            }
        }

        private void takeNextPicture() {
            if (this.mIsCaptureDone && this.mIsRequestStoreDone) {
                if (this.mIsMemoryErrorOccured) {
                    StateMachine.this.doStopBestEffortBurst();
                    StateMachine.this.onBurstStoreComplete(false);
                    StateMachine.this.changeTo(new StateStandby(false), new Object[0]);
                    StateMachine.this.changeTo(new StateWarning(), new Object[0]);
                }
            } else {
                return;
            }
            if (StateMachine.this.mIsStopBurstRequested || !StateMachine.this.mActivity.getSavingTaskManager().canPushStoreTask()) {
                StateMachine.this.doStopBestEffortBurst();
                StateMachine.this.changeTo(new StatePhotoStore(), new Object[0]);
                return;
            }
            StateMachine.this.doCaptureBestEffortBurst(false);
            this.mIsCaptureDone = false;
            this.mIsRequestStoreDone = false;
        }

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... arrobject) {
            this.setStopBurstRequest(false);
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            this.setStopBurstRequest(false);
        }

        @Override
        public /* varargs */ void handleKeyCaptureUp(Object ... arrobject) {
            this.setStopBurstRequest(true);
        }

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... arrobject) {
            if (!this.mWaitingForAfDone) {
                return;
            }
            StateMachine.this.requestPlayAutoFocusSuccessSound((Boolean)arrobject[0]);
            StateMachine.this.changeTo(new StatePhotoAfDone(), arrobject);
            StateMachine.this.changeTo(this, new Object[]{false});
            StateMachine.this.doCaptureBestEffortBurst(true);
            this.mWaitingForAfDone = false;
        }

        @Override
        public /* varargs */ void handleOnShutterDone(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_UPDATE_COUNT_UP_VIEW, StateMachine.this.mBurstPictureCount);
        }

        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... arrobject) {
            this.mIsRequestStoreDone = true;
            this.takeNextPicture();
        }

        @Override
        public /* varargs */ void handleOnTakePictureDone(Object ... object) {
            if (this.mPathBuilder != null) {
                object = (PhotoSavingRequest)object[0];
                String string = this.mPathBuilder.getNextFilePathToStorePicture();
                object.setFilePath(string);
                object.setExtraOutput(Uri.fromFile(new File(string)));
                StateMachine.this.requestStorePicture((PhotoSavingRequest)object);
            }
            this.mIsCaptureDone = true;
            this.takeNextPicture();
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.doStopBestEffortBurst();
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleScreenClear(Object ... arrobject) {
            this.handleCaptureButtonCancel(arrobject);
        }

        @Override
        public /* varargs */ void handleStorageError(Object ... arrobject) {
            this.mIsMemoryErrorOccured = true;
        }
    }

    class StatePhotoCaptureHighSpeedBurst
    extends StatePhotoBase {
        private final boolean mIsCalledByKeyEvent;
        private boolean mWaitingForAfDone;

        public StatePhotoCaptureHighSpeedBurst(boolean bl, boolean bl2) {
            this.mCaptureState = CaptureState.STATE_PHOTO_CAPTURE_HI_SPEED_BURST;
            this.mWaitingForAfDone = bl;
            this.mIsCalledByKeyEvent = bl2;
            StateMachine.this.clearBurst();
            StateMachine.this.mActivity.disableAutoOffTimer();
        }

        private void finishBurst() {
            StateMachine.this.mViewFinder.fadeoutCounter();
            if (StateMachine.this.mIsStopBurstRequested && StateMachine.this.mBurstPictureCount >= 2) {
                if (StateMachine.this.doStopHighSpeedBurst()) {
                    StateMachine.this.mIsStopBurstRequested = false;
                }
            } else {
                return;
            }
            StateMachine.this.changeTo(new StateWarning(), new Object[0]);
        }

        private void setStopBurstRequest() {
            StateMachine.this.mIsStopBurstRequested = true;
        }

        private void setStopBurstRequest(boolean bl) {
            if (this.mIsCalledByKeyEvent == bl) {
                StateMachine.this.mIsStopBurstRequested = true;
                this.finishBurst();
            }
        }

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... arrobject) {
            this.setStopBurstRequest(false);
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            this.setStopBurstRequest(false);
        }

        @Override
        public /* varargs */ void handleDialogOpened(Object ... arrobject) {
            if (arrobject.length > 0 && arrobject[0] != null && (BaseFastViewFinder.UiComponentKind)arrobject[0] == BaseFastViewFinder.UiComponentKind.REVIEW_WINDOW) {
                StateMachine.this.changeTo(new StatePhotoStandbyDialog(), arrobject);
            }
            StateMachine.this.mActivity.notifyStateBlockedToWearable();
        }

        @Override
        public /* varargs */ void handleKeyCaptureUp(Object ... arrobject) {
            this.setStopBurstRequest(true);
        }

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... arrobject) {
            if (!this.mWaitingForAfDone) {
                return;
            }
            StateMachine.this.requestPlayAutoFocusSuccessSound((Boolean)arrobject[0]);
            StateMachine.this.changeTo(new StatePhotoAfDone(), arrobject);
            StateMachine.this.doStartHighSpeedBurst(this, false);
            this.mWaitingForAfDone = false;
        }

        @Override
        public /* varargs */ void handleOnBurstGroupStoreCompleted(Object ... arrobject) {
            ((BurstSavingTaskManager)StateMachine.this.mActivity.getSavingTaskManager()).getUpdator().commitBulkInsert();
            StateMachine.this.onBurstStoreComplete(true);
            StateMachine.this.changeTo(new StateStandby(true), new Object[0]);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public /* varargs */ void handleOnBurstShutterDone(Object ... burstShotResult) {
            StateMachine.this.updateDateTaken(StateMachine.this.mLastPhotoSavingRequest);
            burstShotResult = burstShotResult[0];
            if (burstShotResult == null) {
                return;
            }
            StateMachine.this.mBurstPictureCount = burstShotResult.mPictureCount;
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_UPDATE_COUNT_UP_VIEW, StateMachine.this.mBurstPictureCount);
            if (!StateMachine.this.mIsStopBurstRequested) return;
            StateMachine.this.mActivity.postDelayedEvent(new FinishHighSpeedBurstTask(), 100);
        }

        @Override
        public /* varargs */ void handleOnBurstStoreCompleted(Object ... arrobject) {
            if (StateMachine.this.mIsStopBurstRequested) {
                this.finishBurst();
                return;
            }
            StateMachine.this.calculateRemainStorage(true, true);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.doStopHighSpeedBurst();
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleScreenClear(Object ... arrobject) {
            this.handleCaptureButtonCancel(arrobject);
        }

        @Override
        public /* varargs */ void handleStorageError(Object ... arrobject) {
            this.setStopBurstRequest();
        }

        private class FinishHighSpeedBurstTask
        implements Runnable {
            private FinishHighSpeedBurstTask() {
            }

            @Override
            public void run() {
                StatePhotoCaptureHighSpeedBurst.this.finishBurst();
            }
        }

    }

    class StatePhotoCaptureWaitForAfDone
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCaptureWaitForAfDone";
        private final boolean mIsCalledByKeyEvent;
        private final boolean mIsDirectCaptureRequired;
        private boolean mIsReleaseShutterKey;

        public StatePhotoCaptureWaitForAfDone(boolean bl, boolean bl2) {
            this.mCaptureState = CaptureState.STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE;
            this.mIsCalledByKeyEvent = bl2;
            this.mIsDirectCaptureRequired = bl;
        }

        @Override
        public /* varargs */ void handleKeyCaptureUp(Object ... arrobject) {
            this.mIsReleaseShutterKey = true;
        }

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... arrobject) {
            if (StateMachine.this.mCameraDeviceHandler == null || StateMachine.this.mCameraDeviceHandler.getCameraDeviceStatus() == 0) {
                return;
            }
            StateMachine.this.requestPlayAutoFocusSuccessSound((Boolean)arrobject[0]);
            if (this.mIsReleaseShutterKey || !this.mIsCalledByKeyEvent) {
                StateMachine.this.changeTo(new StatePhotoAfDone(), arrobject);
                StateMachine.this.doCapture();
                StateMachine.this.changeTo(new StatePhotoCapture(), arrobject);
                return;
            }
            if (StateMachine.this.isBurstShotEnabled()) {
                switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$BurstShot[StateMachine.this.mCameraDeviceHandler.getBurstShotSetting().ordinal()]) {
                    default: {
                        StateMachine.this.changeTo(new StatePhotoAfDone(), arrobject);
                        StateMachine.this.doCapture();
                        StateMachine.this.changeTo(new StatePhotoCapture(), arrobject);
                        return;
                    }
                    case 1: {
                        StateMachine.this.changeTo(new StatePhotoAfDone(), arrobject);
                        StateMachine.this.changeTo(new StatePhotoCaptureBestEffortBurst(false, this.mIsCalledByKeyEvent), new Object[]{false});
                        StateMachine.this.doCaptureBestEffortBurst(true);
                        return;
                    }
                    case 2: 
                }
                StateMachine.this.changeTo(new StatePhotoAfDone(), arrobject);
                StateMachine.this.doStartHighSpeedBurst(new StatePhotoCaptureHighSpeedBurst(false, this.mIsCalledByKeyEvent), true);
                return;
            }
            StateMachine.this.changeTo(new StatePhotoAfDone(), arrobject);
            StateMachine.this.doCapture();
            StateMachine.this.changeTo(new StatePhotoCapture(), arrobject);
        }

        @Override
        public /* varargs */ void handleOnInitialAutoFocusDone(Object ... arrobject) {
            if (this.mIsDirectCaptureRequired) {
                StateMachine.this.changeTo(new StatePhotoAfDone(), arrobject);
                StateMachine.this.mCameraDeviceHandler.preCapture();
                StateMachine.this.changeTo(new StatePhotoCapture(), arrobject);
                return;
            }
            StateMachine.this.cancelAutoFocus(false);
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.cancelAutoFocus(true);
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }
    }

    class StatePhotoCaptureWaitForNextCapture
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCapture";
        private PhotoSavingRequest mCachedRequest;
        private boolean mIsAlreadyPreviousCaptureDone;
        private boolean mIsAlreadyRequestStoreDone;
        private boolean mIsMemoryErrorOccured;
        private boolean mIsNextCaptureRequired;

        public StatePhotoCaptureWaitForNextCapture() {
            this.mIsMemoryErrorOccured = false;
            this.mIsNextCaptureRequired = false;
            this.mIsAlreadyPreviousCaptureDone = false;
            this.mIsAlreadyRequestStoreDone = false;
            this.mCachedRequest = null;
            this.mCaptureState = CaptureState.STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE;
        }

        private /* varargs */ void checkAndGoToNextCapture(Object ... object) {
            if (this.mIsAlreadyPreviousCaptureDone && this.mIsAlreadyRequestStoreDone) {
                StateMachine.this.requestStorePicture(this.mCachedRequest);
                if (this.mIsMemoryErrorOccured) {
                    StateMachine.this.mViewFinder.onCaptureDone();
                    StateMachine.this.cancelAutoFocus(true);
                    StateMachine.this.changeTo(new StateStandby(false), new Object[0]);
                    StateMachine.this.changeTo(new StateWarning(), new Object[0]);
                }
            } else {
                return;
            }
            if (!this.mIsNextCaptureRequired) {
                StateMachine.this.mViewFinder.onCaptureDone();
                StateMachine.this.changeTo(new StatePhotoStore(), new Object[0]);
                return;
            }
            StateMachine.this.mViewFinder.startCaptureFeedbackAnimation();
            StateMachine.this.doCapture();
            this.mIsAlreadyPreviousCaptureDone = false;
            this.mIsAlreadyRequestStoreDone = false;
            this.mIsNextCaptureRequired = false;
            if (StateMachine.this.mViewFinder.getAutoReviewSetting() == AutoReview.OFF) {
                object = this.mCachedRequest;
                StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SET_EARLY_THUMBNAIL, ThumbnailUtil.createThumbnailViewFromJpeg(StateMachine.this.mActivity, object.getImageData(), StateMachine.access$2900((StateMachine)StateMachine.this).common.orientation));
                StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION, object.getRequestId());
            }
            this.mCachedRequest = null;
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            if (!StateMachine.this.mActivity.getSavingTaskManager().canPushStoreTask()) {
                return;
            }
            this.mIsNextCaptureRequired = true;
        }

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... arrobject) {
            if (!StateMachine.this.mActivity.getSavingTaskManager().canPushStoreTask()) {
                return;
            }
            this.mIsNextCaptureRequired = true;
        }

        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... arrobject) {
            this.mIsAlreadyRequestStoreDone = true;
            this.checkAndGoToNextCapture(arrobject);
        }

        @Override
        public /* varargs */ void handleOnTakePictureDone(Object ... arrobject) {
            this.mCachedRequest = (PhotoSavingRequest)arrobject[0];
            if (StateMachine.this.mContentsViewController != null) {
                this.mCachedRequest.setRequestId(StateMachine.this.mContentsViewController.createClearContentFrame());
            }
            this.mIsAlreadyPreviousCaptureDone = true;
            this.checkAndGoToNextCapture(this.mCachedRequest);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleStorageError(Object ... arrobject) {
            this.mIsMemoryErrorOccured = true;
        }
    }

    class StatePhotoReadyForRecording
    extends StatePhotoBase {
        public StatePhotoReadyForRecording() {
            this.mCaptureState = CaptureState.STATE_PHOTO_READY_FOR_RECORDING;
        }

        @Override
        public void entry() {
            super.entry();
            StateMachine.assertNotNull(StateMachine.this.mCameraDeviceHandler);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleStorageError(Object ... arrobject) {
            StateMachine.this.changeTo(new StateWarning(), arrobject);
        }

        @Override
        public /* varargs */ void handleSubCamcordButtonCancel(Object ... arrobject) {
            StateMachine.this.changeTo(new StateStandby(true), new Object[0]);
        }

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... arrobject) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RECORDING_START, true);
            if (!AudioResourceChecker.isAudioResourceAvailable(StateMachine.this.mActivity)) {
                StateMachine.this.mActivity.getMessagePopup().showOk(2131296645, 2131296402, false, 2131296429, null, null);
                StateMachine.this.changeTo(new StateStandby(true), new Object[0]);
                return;
            }
            if (!StateMachine.this.mActivity.updateRemain()) {
                StateMachine.this.changeTo(new StateStandby(true), new Object[0]);
                return;
            }
            StateMachine.this.mActivity.pauseAudioPlayback();
            StateMachine.this.cancelAutoFocus(true);
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
            StateMachine.assertNotNull(StateMachine.this.mCameraDeviceHandler);
            StateMachine.this.doStartRecordingInPhotoMode();
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RECORDING_START, false);
            MeasurePerformance.outResult();
        }

        @Override
        public boolean isMenuAvailable() {
            return false;
        }
    }

    class StatePhotoStandbyDialog
    extends StatePhotoBase {
        public StatePhotoStandbyDialog() {
            this.mCaptureState = CaptureState.STATE_STANDBY_DIALOG;
            StateMachine.this.mCameraDeviceHandler.suspendPhotoLight();
            if (StateMachine.this.mActivity != null) {
                StateMachine.this.mActivity.enableAutoOffTimer();
            }
        }

        @Override
        public /* varargs */ void handleDialogClosed(Object ... arrobject) {
            StateMachine.this.mActivity.restartAutoOffTimer();
            StateMachine.this.mActivity.notifyStateIdleToWearable();
            StateMachine.this.mCameraDeviceHandler.resumePhotoLight();
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_CLOSE_DIALOGS, new Object[0]);
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handleDialogOpened(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_UPDATE_DIALOGS, new Object[]{BaseFastViewFinder.UiComponentKind.SETTING_DIALOG});
            StateMachine.this.mActivity.notifyStateBlockedToWearable();
        }

        @Override
        public /* varargs */ void handleKeyBack(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_CLOSE_DIALOGS, new Object[0]);
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handleKeyMenu(Object ... arrobject) {
            StateMachine.this.mActivity.requestLaunchAdvancedCameraApplication();
        }

        @Override
        public /* varargs */ void handleOnContinuousPreviewFrameUpdated(Object ... arrobject) {
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleStorageShouldChange(Object ... arrobject) {
            StateMachine.this.switchStorage();
        }

        @Override
        public /* varargs */ void handleSwitchCamera(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_CLOSE_DIALOGS, new Object[0]);
            StateMachine.this.switchCamera();
        }

        @Override
        public boolean isMenuAvailable() {
            return true;
        }
    }

    class StatePhotoStore
    extends StatePhotoBase {
        public StatePhotoStore() {
            this.mCaptureState = CaptureState.STATE_PHOTO_STORE;
            StateMachine.this.cancelAutoFocus(true);
        }

        @Override
        public /* varargs */ void handleDialogOpened(Object ... arrobject) {
            if (arrobject.length > 0 && arrobject[0] != null && (BaseFastViewFinder.UiComponentKind)arrobject[0] == BaseFastViewFinder.UiComponentKind.REVIEW_WINDOW) {
                StateMachine.this.changeTo(new StatePhotoStandbyDialog(), arrobject);
            }
            StateMachine.this.mActivity.notifyStateBlockedToWearable();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... arrobject) {
            if (StateMachine.this.mViewFinder.getAutoReviewSetting() != AutoReview.OFF) {
                StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[]{BaseFastViewFinder.HeadUpDisplaySetupState.PHOTO_CAPTURE});
            }
            if (StateMachine.this.mLastPhotoSavingRequest != null && StateMachine.access$2900((StateMachine)StateMachine.this).common.savedFileType == SavingTaskManager.SavedFileType.BURST && StateMachine.this.mIsStopBurstRequested && StateMachine.this.mBurstPictureCount > 1) {
                StateMachine.this.changeTo(new StateStandby(true), arrobject);
                return;
            } else {
                if (StateMachine.this.mViewFinder.getAutoReviewSetting() != AutoReview.OFF) return;
                {
                    StateMachine.this.changeTo(new StateStandby(true), arrobject);
                    return;
                }
            }
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }
    }

    class StatePhotoWaitingTrackedObjectForAfStart
    extends State {
        boolean mIsAutoFocusStarted;
        boolean mIsFirstCallback;
        boolean mIsImmediateCaptureRequired;

        public StatePhotoWaitingTrackedObjectForAfStart() {
            this.mIsAutoFocusStarted = false;
            this.mIsImmediateCaptureRequired = false;
            this.mIsFirstCallback = true;
            this.mCaptureState = CaptureState.STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START;
        }

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... arrobject) {
            if (this.mIsAutoFocusStarted) {
                StateMachine.this.cancelAutoFocus(true);
            }
            StateMachine.this.changeTo(new StateStandby(true), new Object[0]);
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            this.mIsImmediateCaptureRequired = true;
        }

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, arrobject[0]);
            if (((CameraExtension.ObjectTrackingResult)arrobject[0]).mIsLost || this.mIsFirstCallback) {
                this.mIsFirstCallback = false;
                return;
            }
            StateMachine.this.startAutoFocus();
            this.mIsAutoFocusStarted = true;
            if (this.mIsImmediateCaptureRequired) {
                StateMachine.this.changeTo(new StatePhotoCaptureWaitForAfDone(false, false), new Object[0]);
                return;
            }
            StateMachine.this.changeTo(new StatePhotoAfSearchInTouch(false, false), new Object[0]);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            if (this.mIsAutoFocusStarted) {
                StateMachine.this.cancelAutoFocus(true);
            }
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleScreenClear(Object ... arrobject) {
            this.handleCaptureButtonCancel(arrobject);
        }

        @Override
        public /* varargs */ void handleStartAfAfterObjectTracked(Object ... object) {
            if (this.mIsAutoFocusStarted) {
                return;
            }
            object = (PointF)object[1];
            StateMachine.this.doDeselectObject();
            StateMachine.this.doSelectObject((PointF)object);
            this.mIsAutoFocusStarted = false;
            this.mIsImmediateCaptureRequired = false;
        }
    }

    class StatePhotoZooming
    extends StatePhotoZoomingBase {
        public StatePhotoZooming() {
            super();
            this.mCaptureState = CaptureState.STATE_PHOTO_ZOOMING;
        }

        @Override
        public /* varargs */ void handleKeyZoomUp(Object ... arrobject) {
            StateMachine.this.doStopZoom();
            StateMachine.this.changeTo(new StateStandby(true), new Object[]{BaseFastViewFinder.UiComponentKind.ZOOM_BAR});
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }
    }

    class StatePhotoZoomingBase
    extends StatePhotoBase {
        public StatePhotoZoomingBase() {
            this.mCaptureState = CaptureState.STATE_PHOTO_ZOOMING_BASE;
        }

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FACE_DETECTED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, arrobject[0]);
        }
    }

    class StatePhotoZoomingInTouch
    extends StatePhotoZoomingBase {
        private final int mStartZoomStep;

        public StatePhotoZoomingInTouch() {
            this.mCaptureState = CaptureState.STATE_PHOTO_ZOOMING_IN_TOUCH;
            this.mStartZoomStep = StateMachine.this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
            StateMachine.this.mCurrentZoomLength = StateMachine.this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
        }

        @Override
        public /* varargs */ void handleCancelTouchZoom(Object ... arrobject) {
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleScreenClear(Object ... arrobject) {
            this.handleCaptureButtonCancel(arrobject);
        }

        @Override
        public /* varargs */ void handleStartTouchZoom(Object ... arrobject) {
            float f = ((Float)arrobject[0]).floatValue();
            StateMachine.this.doZoom(this.mStartZoomStep, f);
        }

        @Override
        public /* varargs */ void handleStopTouchZoom(Object ... arrobject) {
            StateMachine.this.doStopZoom();
        }
    }

    class StateResume
    extends StateCameraSwitching {
        /*
         * Enabled aggressive block sorting
         */
        public StateResume(FastCapture fastCapture) {
            super(StateMachine.this, fastCapture);
            this.mCaptureState = CaptureState.STATE_RESUME;
            switch (StateMachine.this.mCameraDeviceHandler.getPreProcessState()) {
                default: {
                    break;
                }
                case PRE_SCAN_DONE: {
                    StateMachine.this.mCameraDeviceHandler.preCapture();
                }
            }
            StateMachine.this.mHandler.removeCallbacks(StateMachine.this.mNotifyResumeTimeoutTask);
            StateMachine.this.mHandler.postDelayed(StateMachine.this.mNotifyResumeTimeoutTask, 5000);
        }

        @Override
        public /* varargs */ void handleOnInitialAutoFocusDone(Object ... arrobject) {
            StateMachine.this.mCameraDeviceHandler.preCapture();
        }

        @Override
        public /* varargs */ void handleOnPreShutterDone(Object ... object) {
            object = new NotifyDelayedEventTask(TransitterEvent.EVENT_ON_PRE_SHUTTER_DONE, (Object[])object);
            StateMachine.this.mHandler.postDelayed((Runnable)object, 100);
        }

        @Override
        public /* varargs */ void handleOnPreTakePictureDone(Object ... object) {
            object = new NotifyDelayedEventTask(TransitterEvent.EVENT_ON_PRE_TAKE_PICTURE_DONE, (Object[])object);
            StateMachine.this.mHandler.postDelayed((Runnable)object, 100);
        }
    }

    class StateSelfTimerCountdown
    extends StateStandby {
        private final Runnable mCountdownFinishEvent;
        private SelfTimerFeedback mFeedback;
        private final LedLight mLedLight;

        public StateSelfTimerCountdown() {
            super();
            this.mCaptureState = CaptureState.STATE_PHOTO_SELFTIMER_COUNTDOWN;
            this.mLedLight = new LedLightImpl();
            this.mCountdownFinishEvent = new CountdownFinishEvent();
        }

        private void recoverFlash() {
            StateMachine.this.mCameraDeviceHandler.resumePhotoLight();
        }

        private void startSelfTimer(SelfTimer selfTimer) {
            StateMachine.this.mHandler.postDelayed(this.mCountdownFinishEvent, selfTimer.getDurationInMillisecond());
            this.mFeedback = new SelfTimerFeedback(selfTimer.getDurationInMillisecond(), this.mLedLight);
            this.mFeedback.start(0);
            if (!StateMachine.this.mCameraDeviceHandler.isShutterSoundOff()) {
                StateMachine.this.mActivity.playSound(selfTimer);
            }
        }

        @Override
        public void entry() {
            this.startSelfTimer(StateMachine.this.mViewFinder.getPhotoSelfTimerSetting());
        }

        @Override
        public void exit() {
            StateMachine.this.stopPlaySound();
            this.mFeedback.stop();
            StateMachine.this.mHandler.removeCallbacks(this.mCountdownFinishEvent);
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_SELFTIMER_FINISHED, new Object[0]);
        }

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... arrobject) {
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
        }

        @Override
        public /* varargs */ void handleCaptureButtonTouch(Object ... arrobject) {
            this.recoverFlash();
            if (StateMachine.this.startAutoFocus()) {
                StateMachine.this.changeTo(new StatePhotoAfSearchInTouch(false, (Boolean)arrobject[0]), arrobject);
            }
        }

        @Override
        public /* varargs */ void handleKeyBack(Object ... arrobject) {
            this.recoverFlash();
            StateMachine.this.changeTo(new StateStandby(true), arrobject);
        }

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... arrobject) {
            this.recoverFlash();
            if (StateMachine.this.startAutoFocus()) {
                StateMachine.this.changeTo(new StatePhotoCaptureWaitForAfDone(false, true), new Object[0]);
            }
        }

        @Override
        public /* varargs */ void handleKeyFocusDown(Object ... arrobject) {
            this.recoverFlash();
            if (StateMachine.this.startAutoFocus()) {
                StateMachine.this.changeTo(new StatePhotoAfSearch(), arrobject);
            }
        }

        @Override
        public /* varargs */ void handleKeyZoomInDown(Object ... arrobject) {
        }

        @Override
        public /* varargs */ void handleKeyZoomOutDown(Object ... arrobject) {
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            this.recoverFlash();
            super.handlePause(arrobject);
        }

        @Override
        public /* varargs */ void handleSetFocusPosition(Object ... arrobject) {
        }

        @Override
        public /* varargs */ void handleStorageError(Object ... arrobject) {
            this.recoverFlash();
            super.handleStorageError(arrobject);
        }

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... arrobject) {
        }

        private class CountdownFinishEvent
        implements Runnable {
            private CountdownFinishEvent() {
            }

            @Override
            public void run() {
                StateSelfTimerCountdown.this.recoverFlash();
                if (StateMachine.this.startAutoFocus()) {
                    StateMachine.this.changeTo(new StatePhotoCaptureWaitForAfDone(false, true), new Object[0]);
                }
            }
        }

        private class LedLightImpl
        implements LedLight {
            private LedLightImpl() {
            }

            @Override
            public void turnOff() {
                StateMachine.this.mCameraDeviceHandler.setTorch(false);
            }

            @Override
            public void turnOn() {
                StateMachine.this.mCameraDeviceHandler.setTorch(true);
            }
        }

    }

    class StateStandby
    extends StatePhotoBase {
        private static final String TAG = "StateMachine.StateStandby";
        private CameraExtension.FaceDetectionResult mLatestFaceDetectionResult;
        private final boolean mWithExtensionFeatures;

        public StateStandby() {
            this(false);
        }

        public StateStandby(boolean bl) {
            this.mLatestFaceDetectionResult = null;
            this.mCaptureState = CaptureState.STATE_STANDBY;
            this.mWithExtensionFeatures = bl;
            this.sendGoogleAnalyticsViewEvent();
        }

        private void sendGoogleAnalyticsViewEvent() {
            CustomDimension.GALaunchedBy gALaunchedBy = CameraButtonIntentReceiver.getLaunchedBy();
            LocalGoogleAnalyticsUtil.getInstance().sendView(gALaunchedBy, CapturingMode.SCENE_RECOGNITION, true);
            CameraButtonIntentReceiver.clearLaunchedBy();
        }

        @Override
        public void entry() {
            StateMachine.assertNotNull(StateMachine.this.mCameraDeviceHandler);
            if (StateMachine.this.mActivity != null) {
                StateMachine.this.mActivity.notifyStateIdleToWearable();
            }
            StateMachine.this.mCameraDeviceHandler.startPreview();
            if (this.mWithExtensionFeatures) {
                if (!StateMachine.this.mViewFinder.isTouchFocus()) {
                    StateMachine.this.mCameraDeviceHandler.startFaceDetection();
                    StateMachine.this.mCameraDeviceHandler.startFaceIdService(StateMachine.this.mActivity);
                }
                StateMachine.this.mCameraDeviceHandler.startSceneRecognition();
            }
            if (StateMachine.this.mActivity != null) {
                StateMachine.this.mActivity.enableAutoOffTimer();
            }
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, StateMachine.this.getSensorOrientation());
            if (StateMachine.this.mViewFinder.isHeadUpDesplayReady()) {
                StateMachine.this.mActivity.getStorageManager().updateRemain(0, false);
                if (!StateMachine.this.mActivity.getStorageManager().isReady()) {
                    StateMachine.this.sendEvent(TransitterEvent.EVENT_STORAGE_ERROR, new Object[0]);
                }
            }
        }

        @Override
        public void exit() {
            StateMachine.this.mActivity.notifyStateBlockedToWearable();
        }

        @Override
        public /* varargs */ void handleCaptureButtonCancel(Object ... arrobject) {
            if (StateMachine.this.isPhotoSelfTimerEnabled()) {
                return;
            }
            StateMachine.this.mCameraDeviceHandler.resetFocusMode();
            StateMachine.this.mCameraDeviceHandler.startFaceDetection();
            StateMachine.this.mCameraDeviceHandler.startFaceIdService(StateMachine.this.mActivity);
            StateMachine.this.mCameraDeviceHandler.startSceneRecognition();
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_AF_CANCELED, new Object[0]);
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            if (StateMachine.this.canInvokePhotoSelfTimer() && StateMachine.this.mActivity.updateRemain()) {
                StateMachine.this.changeTo(new StateSelfTimerCountdown(), new Object[0]);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleCaptureButtonTouch(Object ... arrobject) {
            if (StateMachine.this.isPhotoSelfTimerEnabled() || StateMachine.this.isLazyInitializationRunning() || !StateMachine.this.startAutoFocus()) {
                return;
            }
            StateMachine.this.changeTo(new StatePhotoAfSearchInTouch(false, (Boolean)arrobject[0]), arrobject);
        }

        @Override
        public /* varargs */ void handleChangeSelectedFace(Object ... object) {
            object = (Point)object[0];
            StateMachine.this.doChangeSelectedFace((Point)object);
        }

        @Override
        public /* varargs */ void handleDeselectObjectPosition(Object ... arrobject) {
            StateMachine.this.doDeselectObject();
        }

        @Override
        public /* varargs */ void handleDialogOpened(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePhotoStandbyDialog(), arrobject);
            StateMachine.this.mActivity.notifyStateBlockedToWearable();
        }

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... arrobject) {
            if (StateMachine.this.canInvokePhotoSelfTimer()) {
                StateMachine.this.changeTo(new StateSelfTimerCountdown(), new Object[0]);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleKeyFocusDown(Object ... arrobject) {
            if (StateMachine.this.isPhotoSelfTimerEnabled() || !StateMachine.this.startAutoFocus()) {
                return;
            }
            StateMachine.this.changeTo(new StatePhotoAfSearch(), arrobject);
        }

        @Override
        public /* varargs */ void handleKeyMenu(Object ... arrobject) {
            StateMachine.this.mActivity.requestLaunchAdvancedCameraApplication();
        }

        @Override
        public /* varargs */ void handleKeyZoomInDown(Object ... arrobject) {
            if (StateMachine.this.mCameraDeviceHandler.getLatestCachedParameters() == null) {
                return;
            }
            this.handleScreenClear(arrobject);
            if (StateMachine.this.isSmoothZoomEnabled()) {
                StateMachine.this.changeTo(new StatePhotoZooming(), arrobject);
                if (StateMachine.this.mCameraDeviceHandler.getLatestCachedParameters().getZoom() < StateMachine.this.mCameraDeviceHandler.getMaxSuperResolutionZoom()) {
                    StateMachine.this.doSuperResolutionZoomIn();
                    return;
                }
                StateMachine.this.doZoomIn();
                return;
            }
            StateMachine.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
        }

        @Override
        public /* varargs */ void handleKeyZoomOutDown(Object ... arrobject) {
            if (StateMachine.this.mCameraDeviceHandler.getLatestCachedParameters() == null) {
                return;
            }
            this.handleScreenClear(arrobject);
            if (StateMachine.this.isSmoothZoomEnabled()) {
                StateMachine.this.changeTo(new StatePhotoZooming(), arrobject);
                StateMachine.this.doZoomOut();
                return;
            }
            StateMachine.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
        }

        @Override
        public /* varargs */ void handleOnAutoFocusDone(Object ... arrobject) {
            StateMachine.this.cancelAutoFocus(false);
        }

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... object) {
            this.mLatestFaceDetectionResult = (CameraExtension.FaceDetectionResult)object[0];
            object = StateMachine.this.mCameraDeviceHandler.getFaceIdService();
            if (!(object == null || object.isBusy())) {
                StateMachine.this.mCameraDeviceHandler.requestOnePreviewFrame();
            }
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FACE_DETECTED, new Object[]{this.mLatestFaceDetectionResult});
        }

        @Override
        public /* varargs */ void handleOnFaceIdentified(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FACE_NAME_DETECTED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, arrobject[0]);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... arrobject) {
            FaceIdentification faceIdentification;
            if (StateMachine.this.mCameraDeviceHandler == null || this.mLatestFaceDetectionResult == null || (faceIdentification = StateMachine.this.mCameraDeviceHandler.getFaceIdService()) == null || this.mLatestFaceDetectionResult.extFaceList.size() <= 0) {
                return;
            }
            List<FaceIdentification.FaceIdentificationRequest> list = FaceDetectUtil.createFaceIdentificationRequest(this.mLatestFaceDetectionResult);
            faceIdentification.request((byte[])arrobject[0], (Integer)arrobject[1], ((Rect)arrobject[2]).width(), ((Rect)arrobject[2]).height(), StateMachine.this.getOrientation(), list, new FaceIdCallback());
        }

        @Override
        public /* varargs */ void handleOnSceneModeChanged(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_DETECTED_SCENE_CHANGED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handlePrepareTouchZoom(Object ... arrobject) {
            if (StateMachine.this.isSmoothZoomEnabled()) {
                StateMachine.this.mCurrentZoomLength = StateMachine.this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
                StateMachine.this.changeTo(new StatePhotoZoomingInTouch(), arrobject);
            }
        }

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[]{BaseFastViewFinder.HeadUpDisplaySetupState.PHOTO_STANDBY});
        }

        @Override
        public /* varargs */ void handleScreenClear(Object ... arrobject) {
            this.handleCaptureButtonCancel(arrobject);
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        }

        @Override
        public /* varargs */ void handleSetFocusPosition(Object ... arrobject) {
            StateMachine.this.mCameraDeviceHandler.setFocusPosition((PointF)arrobject[1]);
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_SELECTED, arrobject[0], arrobject[2]);
        }

        @Override
        public /* varargs */ void handleSetSelectedObjectPosition(Object ... object) {
            object = (PointF)object[1];
            StateMachine.this.doSelectObject((PointF)object);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleStartAfAfterObjectTracked(Object ... object) {
            if (!(PlatformDependencyResolver.isObjectTrackingSuppoted(StateMachine.this.mCameraDeviceHandler.getLatestCachedParameters()) && (StateMachine.this.mActivity == null || StateMachine.this.mActivity.updateRemain()))) {
                return;
            }
            object = (PointF)object[1];
            StateMachine.this.doDeselectObject();
            StateMachine.this.doSelectObject((PointF)object);
            StateMachine.this.changeTo(new StatePhotoWaitingTrackedObjectForAfStart(), new Object[0]);
        }

        @Override
        public /* varargs */ void handleStorageError(Object ... arrobject) {
            StateMachine.this.changeTo(new StateWarning(), arrobject);
        }

        @Override
        public /* varargs */ void handleStorageShouldChange(Object ... arrobject) {
            StateMachine.this.switchStorage();
        }

        @Override
        public /* varargs */ void handleSubCamcordButtonTouch(Object ... arrobject) {
            if (!StateMachine.this.isLazyInitializationRunning()) {
                StateMachine.assertNotNull(StateMachine.this.mCameraDeviceHandler);
                StateMachine.this.changeTo(new StatePhotoReadyForRecording(), new Object[0]);
            }
        }

        @Override
        public /* varargs */ void handleSwitchCamera(Object ... arrobject) {
            StateMachine.this.switchCamera();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleTouchContentProgress() {
            if (StateMachine.this.mViewFinder == null || StateMachine.this.mLastVideoSavingRequest != null && (StateMachine.this.mLastPhotoSavingRequest == null || StateMachine.this.mLastVideoSavingRequest.getDateTaken() > StateMachine.this.mLastPhotoSavingRequest.getDateTaken()) || StateMachine.this.mLastPhotoSavingRequest == null) {
                return;
            }
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SHOW_INSTANT_VIEWER, StateMachine.this.mLastPhotoSavingRequest.getImageData(), StateMachine.this.mLastPhotoSavingRequest);
        }

        @Override
        public boolean isMenuAvailable() {
            return true;
        }
    }

    class StateVideoBase
    extends State {
        StateVideoBase() {
        }

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... arrobject) {
            CameraLogger.e(TAG, "## ## ## ## StateVideoBase.handleOnOnePreviewFrameUpdated()");
            StateMachine.this.mChapterThumbnail = new ChapterThumbnail((byte[])arrobject[0], (Integer)arrobject[1], (Rect)arrobject[2]);
        }

        @Override
        public /* varargs */ void handleOnOrientationChanged(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, arrobject[0]);
        }

        @Override
        public boolean isRecording() {
            return true;
        }
    }

    class StateVideoCaptureWhileRecording
    extends State {
        private final boolean mIsPaused;
        private boolean mIsReturnToVideoRecordingRequired;

        public StateVideoCaptureWhileRecording(boolean bl) {
            this.mIsReturnToVideoRecordingRequired = false;
            this.mCaptureState = CaptureState.STATE_VIDEO_CAPTURE_WHILE_RECORDING;
            this.mIsPaused = bl;
        }

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... arrobject) {
            StateMachine.this.mChapterThumbnail = new ChapterThumbnail((byte[])arrobject[0], (Integer)arrobject[1], (Rect)arrobject[2]);
        }

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... arrobject) {
            StateMachine.this.doHandleRecordingError();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public /* varargs */ void handleOnShutterDone(Object ... object) {
            object = (PhotoSavingRequest)object[0];
            synchronized (this) {
                if (StateMachine.this.mContentsViewController != null) {
                    StateMachine.this.mContentsViewController.setClickThumbnailProgressListener(null);
                    object.setRequestId(StateMachine.this.mContentsViewController.createClearContentFrame());
                } else {
                    object.setRequestId(-1);
                }
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... arrobject) {
            if (this.mIsPaused) {
                StateMachine.this.changeTo(new StateVideoRecordingPausing(), arrobject);
            } else {
                StateMachine.this.changeTo(new StateVideoRecording(StateMachine.this, this.mIsReturnToVideoRecordingRequired), arrobject);
            }
            if (this.mIsReturnToVideoRecordingRequired) {
                StateMachine.this.doStopRecording();
            }
        }

        @Override
        public /* varargs */ void handleOnTakePictureDone(Object ... object) {
            object = (PhotoSavingRequest)object[0];
            StateMachine.this.requestStorePicture((PhotoSavingRequest)object);
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SET_EARLY_THUMBNAIL, ThumbnailUtil.createThumbnailViewFromJpeg(StateMachine.this.mActivity, object.getImageData(), object.common.orientation));
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION, object.getRequestId());
        }

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... object) {
            StateMachine.this.changeTo(new StateVideoStore(), (Object[])object);
            object = (VideoSavingRequest)object[0];
            StateMachine.this.requestStoreVideo((VideoSavingRequest)object);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.doStopRecording();
            StateMachine.this.mCameraDeviceHandler.finalizeRecording();
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleStorageError(Object ... arrobject) {
            StateMachine.this.doStopRecording();
        }

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... arrobject) {
            this.mIsReturnToVideoRecordingRequired = true;
        }

        @Override
        public boolean isRecording() {
            return true;
        }
    }

    class StateVideoRecording
    extends StateVideoBase {
        private static final String TAG = "StateMachine.StateVideoRecording";
        private boolean mAlreadyRequestStop;
        final /* synthetic */ StateMachine this$0;

        public StateVideoRecording(StateMachine stateMachine) {
            this.this$0 = stateMachine;
            this.mAlreadyRequestStop = false;
            this.mCaptureState = CaptureState.STATE_VIDEO_RECORDING;
            stateMachine.sendVideoChapterThumbnailToViewFinder();
        }

        public StateVideoRecording(StateMachine stateMachine, boolean bl) {
            this.this$0 = stateMachine;
            this.mAlreadyRequestStop = false;
            this.mCaptureState = CaptureState.STATE_VIDEO_RECORDING;
            stateMachine.sendVideoChapterThumbnailToViewFinder();
            this.mAlreadyRequestStop = bl;
        }

        @Override
        public /* varargs */ void handleCamcordButtonRelease(Object ... arrobject) {
            this.mAlreadyRequestStop = true;
            this.this$0.doPauseRecording();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            if (this.mAlreadyRequestStop || arrobject[0] == ControllerEventSource.TOUCH_FACE || this.this$0.mCameraDeviceHandler.getVideoSize() == VideoSize.MMS) {
                return;
            }
            this.this$0.changeTo(this.this$0.new StateVideoCaptureWhileRecording(this.isPaused()), new Object[0]);
            this.mAlreadyRequestStop = true;
            this.this$0.doCaptureWhileRecording();
        }

        @Override
        public /* varargs */ void handleChangeSelectedFace(Object ... object) {
            object = (Point)object[0];
            this.this$0.doChangeSelectedFace((Point)object);
        }

        @Override
        public /* varargs */ void handleDeselectObjectPosition(Object ... arrobject) {
            this.this$0.doDeselectObject();
        }

        @Override
        public /* varargs */ void handleKeyBack(Object ... arrobject) {
            this.mAlreadyRequestStop = true;
            this.this$0.doStopRecording();
        }

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... arrobject) {
            if (this.mAlreadyRequestStop) {
                return;
            }
            if (this.this$0.isInModeLessRecording()) {
                this.this$0.changeTo(this.this$0.new StateVideoCaptureWhileRecording(this.isPaused()), new Object[0]);
                this.this$0.doCaptureWhileRecording();
                return;
            }
            this.this$0.doStopRecording();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleKeyZoomInDown(Object ... arrobject) {
            if (this.mAlreadyRequestStop || this.this$0.mCameraDeviceHandler.getLatestCachedParameters() == null || !this.this$0.isSmoothZoomEnabled()) {
                return;
            }
            this.this$0.changeTo(this.this$0.new StateVideoZoomingWhileRecording(this.isPaused()), arrobject);
            this.this$0.doZoomIn();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handleKeyZoomOutDown(Object ... arrobject) {
            if (this.mAlreadyRequestStop || this.this$0.mCameraDeviceHandler.getLatestCachedParameters() == null || !this.this$0.isSmoothZoomEnabled()) {
                return;
            }
            this.this$0.changeTo(this.this$0.new StateVideoZoomingWhileRecording(this.isPaused()), arrobject);
            this.this$0.doZoomOut();
        }

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... arrobject) {
            this.this$0.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FACE_DETECTED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... arrobject) {
            this.this$0.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... arrobject) {
            super.handleOnOnePreviewFrameUpdated(arrobject);
            this.this$0.sendVideoChapterThumbnailToViewFinder();
        }

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... arrobject) {
            this.this$0.doHandleRecordingError();
        }

        @Override
        public /* varargs */ void handleOnSceneModeChanged(Object ... arrobject) {
            this.this$0.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_DETECTED_SCENE_CHANGED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... object) {
            this.this$0.changeTo(this.this$0.new StateVideoStore(), (Object[])object);
            object = (VideoSavingRequest)object[0];
            this.this$0.requestStoreVideo((VideoSavingRequest)object);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            this.mAlreadyRequestStop = true;
            this.this$0.doStopRecording();
            this.this$0.mCameraDeviceHandler.finalizeRecording();
            this.this$0.changeTo(this.this$0.new StatePause(), arrobject);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public /* varargs */ void handlePrepareTouchZoom(Object ... arrobject) {
            if (this.mAlreadyRequestStop || !this.this$0.isSmoothZoomEnabled()) {
                return;
            }
            this.this$0.changeTo(this.this$0.new StateVideoZoomingInTouchWhileRecording(this.isPaused()), arrobject);
        }

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... arrobject) {
            this.this$0.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[]{BaseFastViewFinder.HeadUpDisplaySetupState.VIDEO_RECORDING});
            this.this$0.sendVideoChapterThumbnailToViewFinder();
        }

        @Override
        public /* varargs */ void handleSetSelectedObjectPosition(Object ... object) {
            object = (PointF)object[1];
            this.this$0.doSelectObject((PointF)object);
        }

        @Override
        public /* varargs */ void handleStorageError(Object ... arrobject) {
            this.mAlreadyRequestStop = true;
            this.this$0.doStopRecording();
        }

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... arrobject) {
            this.mAlreadyRequestStop = true;
            this.this$0.doStopRecording();
        }

        protected boolean isPaused() {
            return false;
        }

        @Override
        public boolean isRecording() {
            return true;
        }
    }

    class StateVideoRecordingPausing
    extends StateVideoRecording {
        public StateVideoRecordingPausing() {
            super(StateMachine.this);
            this.mCaptureState = CaptureState.STATE_VIDEO_RECORDING_PAUSING;
            StateMachine.this.mCameraDeviceHandler.startPreview();
        }

        @Override
        public /* varargs */ void handleCamcordButtonRelease(Object ... arrobject) {
            StateMachine.this.doResumeRecording();
            StateMachine.this.mCameraDeviceHandler.requestOnePreviewFrame();
        }

        @Override
        protected boolean isPaused() {
            return true;
        }
    }

    class StateVideoRecordingStarting
    extends StateVideoBase {
        private boolean mIsImmediatelyRecordingPauseRequired;
        private boolean mIsImmediatelyRecordingStopRequired;
        private boolean mShouldRequestChapterThumbnail;

        public StateVideoRecordingStarting(boolean bl) {
            this.mIsImmediatelyRecordingStopRequired = false;
            this.mIsImmediatelyRecordingPauseRequired = false;
            this.mCaptureState = CaptureState.STATE_VIDEO_RECORDING_STARTING;
            StateMachine.this.mIsInModeLessRecording = true;
            this.mShouldRequestChapterThumbnail = ClassDefinitionChecker.isMediaRecorderPauseAndResumeSupported();
            if (StateMachine.this.mActivity != null) {
                StateMachine.this.mActivity.disableAutoOffTimer();
            }
            StateMachine.this.mChapterThumbnail = null;
            if (!bl && this.mShouldRequestChapterThumbnail) {
                StateMachine.this.mCameraDeviceHandler.requestOnePreviewFrame();
            }
            StateMachine.this.mHandler.postDelayed(new Runnable(StateMachine.this){
                final /* synthetic */ StateMachine val$this$0;

                @Override
                public void run() {
                    StateMachine.this.sendEvent(TransitterEvent.EVENT_ON_RECORDING_START_WAIT_DONE, new Object[0]);
                }
            }, 1600);
        }

        private boolean isPaused() {
            return false;
        }

        @Override
        public /* varargs */ void handleCamcordButtonRelease(Object ... arrobject) {
            this.mIsImmediatelyRecordingPauseRequired = true;
            this.mIsImmediatelyRecordingStopRequired = false;
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            if (!(StateMachine.this.mCameraDeviceHandler.getVideoSize() == VideoSize.MMS || this.mIsImmediatelyRecordingStopRequired)) {
                StateMachine.this.changeTo(new StateVideoCaptureWhileRecording(this.isPaused()), new Object[0]);
                StateMachine.this.doCaptureWhileRecording();
            }
        }

        @Override
        public /* varargs */ void handleKeyBack(Object ... arrobject) {
            this.mIsImmediatelyRecordingStopRequired = true;
        }

        @Override
        public /* varargs */ void handleKeyCaptureDown(Object ... arrobject) {
            if (StateMachine.this.isInModeLessRecording()) {
                StateMachine.this.changeTo(new StateVideoCaptureWhileRecording(this.isPaused()), new Object[0]);
                StateMachine.this.doCaptureWhileRecording();
                return;
            }
            this.mIsImmediatelyRecordingStopRequired = true;
        }

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FACE_DETECTED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... arrobject) {
            super.handleOnOnePreviewFrameUpdated(arrobject);
            StateMachine.this.sendVideoChapterThumbnailToViewFinder();
        }

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... arrobject) {
            StateMachine.this.doHandleRecordingError();
        }

        @Override
        public /* varargs */ void handleOnRecordingStartWaitDone(Object ... arrobject) {
            if (this.mIsImmediatelyRecordingStopRequired) {
                StateMachine.this.changeTo(new StateVideoRecording(StateMachine.this, true), arrobject);
                StateMachine.this.doStopRecording();
                return;
            }
            if (this.mIsImmediatelyRecordingPauseRequired) {
                StateMachine.this.doPauseRecording();
                StateMachine.this.changeTo(new StateVideoRecordingPausing(), arrobject);
                return;
            }
            StateMachine.this.changeTo(new StateVideoRecording(StateMachine.this), arrobject);
        }

        @Override
        public /* varargs */ void handleOnSceneModeChanged(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_DETECTED_SCENE_CHANGED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... object) {
            StateMachine.this.changeTo(new StateVideoStore(), (Object[])object);
            object = (VideoSavingRequest)object[0];
            StateMachine.this.requestStoreVideo((VideoSavingRequest)object);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.doStopRecording();
            StateMachine.this.mCameraDeviceHandler.finalizeRecording();
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[]{BaseFastViewFinder.HeadUpDisplaySetupState.VIDEO_RECORDING});
            StateMachine.this.sendVideoChapterThumbnailToViewFinder();
        }

        @Override
        public /* varargs */ void handleSubCamcordButtonRelease(Object ... arrobject) {
            this.mIsImmediatelyRecordingStopRequired = true;
            this.mIsImmediatelyRecordingPauseRequired = false;
        }

        @Override
        public boolean isRecording() {
            return true;
        }

    }

    class StateVideoRecordingStartingFromFastestCamcord
    extends StateVideoRecordingStarting {
        public StateVideoRecordingStartingFromFastestCamcord(boolean bl) {
            super(bl);
        }

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... arrobject) {
            StateMachine.this.changeTo(new StateWarning(), new Object[0]);
        }
    }

    class StateVideoStore
    extends StateVideoBase {
        public StateVideoStore() {
            this.mCaptureState = CaptureState.STATE_VIDEO_STORE;
        }

        @Override
        public /* varargs */ void handleOnOnePreviewFrameUpdated(Object ... arrobject) {
        }

        @Override
        public /* varargs */ void handleOnStoreRequested(Object ... arrobject) {
            StateMachine.this.changeCameraModeTo(1, true, false);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }
    }

    class StateVideoZoomingBase
    extends StateVideoBase {
        public StateVideoZoomingBase() {
            this.mCaptureState = CaptureState.STATE_VIDEO_ZOOMING_BASE;
        }

        @Override
        public /* varargs */ void handleOnFaceDetected(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_FACE_DETECTED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnObjectTracked(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, arrobject[0]);
        }

        @Override
        public /* varargs */ void handleOnVideoRecordingDone(Object ... object) {
            StateMachine.this.changeTo(new StateVideoStore(), (Object[])object);
            object = (VideoSavingRequest)object[0];
            StateMachine.this.requestStoreVideo((VideoSavingRequest)object);
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.doStopRecording();
            StateMachine.this.mCameraDeviceHandler.finalizeRecording();
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }
    }

    class StateVideoZoomingInTouchWhileRecording
    extends StateVideoZoomingBase {
        final boolean mIsPaused;
        int mStartZoomStep;

        public StateVideoZoomingInTouchWhileRecording(boolean bl) {
            this.mCaptureState = CaptureState.STATE_VIDEO_ZOOMING_IN_TOUCH_WHILE_RECORDING;
            this.mIsPaused = bl;
            this.mStartZoomStep = StateMachine.this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
            StateMachine.this.mCurrentZoomLength = StateMachine.this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
        }

        @Override
        public /* varargs */ void handleCancelTouchZoom(Object ... arrobject) {
            if (this.mIsPaused) {
                StateMachine.this.changeTo(new StateVideoRecordingPausing(), arrobject);
                return;
            }
            StateMachine.this.changeTo(new StateVideoRecording(StateMachine.this), arrobject);
        }

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... arrobject) {
            StateMachine.this.doHandleRecordingError();
        }

        @Override
        public /* varargs */ void handleScreenClear(Object ... arrobject) {
            this.handleCaptureButtonCancel(arrobject);
        }

        @Override
        public /* varargs */ void handleStartTouchZoom(Object ... arrobject) {
            float f = ((Float)arrobject[0]).floatValue();
            StateMachine.this.doZoom(this.mStartZoomStep, f);
        }

        @Override
        public /* varargs */ void handleStopTouchZoom(Object ... arrobject) {
            StateMachine.this.doStopZoom();
        }

        @Override
        public boolean isRecording() {
            return true;
        }
    }

    class StateVideoZoomingWhileRecording
    extends StateVideoZoomingBase {
        private final boolean mIsPaused;

        public StateVideoZoomingWhileRecording(boolean bl) {
            this.mCaptureState = CaptureState.STATE_VIDEO_ZOOMING_WHILE_RECORDING;
            this.mIsPaused = bl;
        }

        @Override
        public /* varargs */ void handleKeyZoomUp(Object ... arrobject) {
            StateMachine.this.doStopZoom();
            if (this.mIsPaused) {
                StateMachine.this.changeTo(new StateVideoRecordingPausing(), new Object[]{BaseFastViewFinder.UiComponentKind.ZOOM_BAR});
                return;
            }
            StateMachine.this.changeTo(new StateVideoRecording(StateMachine.this), new Object[]{BaseFastViewFinder.UiComponentKind.ZOOM_BAR});
        }

        @Override
        public /* varargs */ void handleOnRecordingError(Object ... arrobject) {
            StateMachine.this.doHandleRecordingError();
        }

        @Override
        public boolean isRecording() {
            return true;
        }
    }

    class StateWarning
    extends StatePhotoBase {
        public StateWarning() {
            StateMachine.this.mIsInModeLessRecording = false;
            this.mCaptureState = CaptureState.STATE_WARNING;
        }

        @Override
        public /* varargs */ void handleCaptureButtonRelease(Object ... arrobject) {
            StateMachine.this.mViewFinder.onCaptureDone();
        }

        @Override
        public /* varargs */ void handleDialogOpened(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePhotoStandbyDialog(), arrobject);
            StateMachine.this.mActivity.notifyStateBlockedToWearable();
        }

        @Override
        public /* varargs */ void handleKeyMenu(Object ... arrobject) {
            StateMachine.this.mActivity.requestLaunchAdvancedCameraApplication();
        }

        @Override
        public /* varargs */ void handlePause(Object ... arrobject) {
            StateMachine.this.changeTo(new StatePause(), arrobject);
        }

        @Override
        public /* varargs */ void handleRequestSetupHeadUpDisplay(Object ... arrobject) {
            StateMachine.this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[]{BaseFastViewFinder.HeadUpDisplaySetupState.PHOTO_STANDBY});
        }

        @Override
        public /* varargs */ void handleStorageMounted(Object ... arrobject) {
            StateMachine.this.changeTo(new StateStandby(), arrobject);
        }

        @Override
        public /* varargs */ void handleStorageShouldChange(Object ... arrobject) {
            StateMachine.this.switchStorage();
        }

        @Override
        public /* varargs */ void handleSwitchCamera(Object ... arrobject) {
            StateMachine.this.switchCamera();
        }

        @Override
        public boolean isMenuAvailable() {
            return true;
        }
    }

    public static enum StaticEvent {
        EVENT_ON_PHOTO_STACK_INITIALIZED,
        EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED,
        EVENT_ON_SCENE_MODE_CHANGED,
        EVENT_ON_FACE_DETECTED,
        EVENT_ON_FACE_IDENTEFIED,
        EVENT_ON_OBJECT_TRACKED,
        EVENT_ON_ORIENTATION_CHANGED,
        EVENT_ON_LAZY_INITIALIZATION_TASK_RUN;
        

        private StaticEvent() {
        }
    }

    public static enum TouchEventSource {
        UNKNOWN,
        CAPTURE_AREA,
        FACE,
        PHOTO_BUTTON,
        VIDEO_BUTTON;
        

        private TouchEventSource() {
        }
    }

    private class TrackedObjectLostTimeoutTask
    implements Runnable {
        private TrackedObjectLostTimeoutTask() {
        }

        @Override
        public void run() {
            StateMachine.this.doDeselectObject();
        }
    }

    public static enum TransitterEvent {
        EVENT_INITIALIZE,
        EVENT_RESUME,
        EVENT_RESUME_TIMEOUT,
        EVENT_PAUSE,
        EVENT_FINALIZE,
        EVENT_ON_EVF_PREPARED,
        EVENT_ON_EVF_PREPARATION_FAILED,
        EVENT_ON_INITIAL_AUTO_FOCUS_DONE,
        EVENT_ON_AUTO_FOCUS_DONE,
        EVENT_ON_PRE_SHUTTER_DONE,
        EVENT_ON_SHUTTER_DONE,
        EVENT_ON_PRE_TAKE_PICTURE_DONE,
        EVENT_ON_TAKE_PICTURE_DONE,
        EVENT_ON_VIDEO_RECORDING_DONE,
        EVENT_ON_DEVICE_ERROR,
        EVENT_ON_ONE_PREVIEW_FRAME_UPDATED,
        EVENT_ON_CONTINUOUS_PREVIEW_FRAME_UPDATED,
        EVENT_ON_SWITCH_CAMERA,
        EVENT_ON_BURST_SHUTTER_DONE,
        EVENT_ON_BURST_STORE_COMPLETED,
        EVENT_ON_BURST_GROUP_STORE_COMPLETED,
        EVENT_ON_STORE_REQUESTED,
        EVENT_ON_STORE_COMPLETED,
        EVENT_STORAGE_ERROR,
        EVENT_STORAGE_MOUNTED,
        EVENT_STORAGE_SHOULD_CHANGE,
        EVENT_KEY_FOCUS_DOWN,
        EVENT_KEY_FOCUS_UP,
        EVENT_KEY_CAPTURE_DOWN,
        EVENT_KEY_CAPTURE_UP,
        EVENT_KEY_ZOOM_IN_DOWN,
        EVENT_KEY_ZOOM_OUT_DOWN,
        EVENT_KEY_ZOOM_UP,
        EVENT_KEY_MENU,
        EVENT_KEY_BACK,
        EVENT_PREPARE_TOUCH_ZOOM,
        EVENT_ON_PREPARE_TOUCH_ZOOM_TIMED_OUT,
        EVENT_START_TOUCH_ZOOM,
        EVENT_STOP_TOUCH_ZOOM,
        EVENT_CANCEL_TOUCH_ZOOM,
        EVENT_CAPTURE_BUTTON_TOUCH,
        EVENT_CAPTURE_BUTTON_RELEASE,
        EVENT_CAPTURE_BUTTON_CANCEL,
        EVENT_CAPTURE_BUTTON_LONG_PRESS,
        EVENT_START_AF_SEARCH_IN_TOUCH,
        EVENT_START_AF_SEARCH_IN_TOUCH_STOP,
        EVENT_SET_FOCUS_POSITION,
        EVENT_CAMCORD_BUTTON_RELEASE,
        EVENT_SUB_CAMCORD_BUTTON_TOUCH,
        EVENT_SUB_CAMCORD_BUTTON_RELEASE,
        EVENT_SUB_CAMCORD_BUTTON_CANCEL,
        EVENT_CHANGE_SELECTED_FACE,
        EVENT_SET_SELECTED_OBJECT_POSITION,
        EVENT_DESELECT_OBJECT_POSITION,
        EVENT_START_AF_AFTER_OBJECT_TRACKED,
        EVENT_SCREEN_CLEAR,
        EVENT_TOUCH_CONTENT_PROGRESS,
        EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY,
        EVENT_ON_RECORDING_START_WAIT_DONE,
        EVENT_ON_RECORDING_ERROR,
        EVENT_DIALOG_OPENED,
        EVENT_DIALOG_CLOSED;
        

        private TransitterEvent() {
        }
    }

}

