/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import android.location.Location;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.LaunchConditions;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.AutoUpload;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Facing;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.Microphone;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.TouchBlock;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.controller.AutoZoom;
import com.sonyericsson.android.camera.controller.BurstShooting;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.ControllerMessage;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.FaceDetect;
import com.sonyericsson.android.camera.controller.ObjectTracking;
import com.sonyericsson.android.camera.controller.SceneRecognition;
import com.sonyericsson.android.camera.controller.Selftimer;
import com.sonyericsson.android.camera.controller.Shooting;
import com.sonyericsson.android.camera.controller.TouchFocus;
import com.sonyericsson.android.camera.controller.VideoDevice;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.device.CameraSurfaceHolder;
import com.sonyericsson.android.camera.mediasaving.BurstSavingTaskManager;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class CameraFunctions
implements SavingRequest.StoreDataCallback {
    private static final String TAG;
    protected final AutoZoom mAutoZoom;
    protected final BurstShooting mBurstShooting;
    protected final CameraActivity mCameraActivity;
    protected final CameraDevice mCameraDevice;
    protected final CameraWindow mCameraWindow;
    protected final ControllerManager mControllerManager;
    protected Selftimer mCurrentSelfTimer;
    protected final EventDispatcher mEventDispatcher;
    protected final FaceDetect mFaceDetect;
    protected boolean mIsVideoSmileCapturing;
    protected final ObjectTracking mObjectTracking;
    protected final ParameterManager mParameterManager;
    protected final BurstSavingTaskManager mSavingTaskManager;
    protected final SceneRecognition mSceneRecognition;
    protected final Selftimer mSelfTimer;
    protected final SettingsController mSettingsController;
    protected final Shooting mShooting;
    protected final CameraStorageManager mStorageManager;
    protected final TouchFocus mTouchFocus;
    protected final VideoDevice mVideoDevice;
    protected final Selftimer mVideoSelfTimer;

    static;

    public CameraFunctions(CameraActivity var1, EventDispatcher var2);

    static /* synthetic */ void access$000(CameraFunctions var0, SelfTimer var1);

    static /* synthetic */ void access$100(CameraFunctions var0, VideoSelfTimer var1);

    private void changeSmileCapturePhotoToVideo(Parameters var1);

    private void changeSmileCaptureVideoToPhoto(Parameters var1);

    private PhotoSavingRequest createPhotoSavingRequest(SavingTaskManager.SavedFileType var1, String var2);

    private TakenStatusCommon createTakenStatusCommon(SavingTaskManager.SavedFileType var1, int var2, int var3, String var4, String var5, String var6);

    private VideoSavingRequest createVideoSavingRequest(VideoSize.VideoProfile var1, SavingTaskManager.SavedFileType var2, String var3);

    private boolean isSuperResolutionZoom();

    private void updatePhotoSelftimer(SelfTimer var1);

    private void updateVideoSelftimer(VideoSelfTimer var1);

    public void addCaptureRequest(SavingTaskManager.SavedFileType var1);

    public void applyAllParameters(Parameters var1);

    public void applyPhotoSmileCapture(SmileCapture var1);

    public void applyVideoSmileCapture(VideoSmileCapture var1);

    public void cancelSelfTimer(boolean var1);

    protected abstract void captureAutoTransition();

    public void changeCapturingMode(CapturingMode var1);

    public void changeSurfaceSize(int var1);

    public void consumeSelfTimer(ControllerEventSource var1, boolean var2);

    public PhotoSavingRequest createImageSavingRequest(SavingTaskManager.SavedFileType var1);

    public VideoSavingRequest createMovieSavingRequest(VideoSize.VideoProfile var1, String var2);

    public void doExtraOperation(LaunchConditions.ExtraOperation var1);

    public void exitFromShooting();

    public void finish();

    public void finishBurstShot();

    public void finishDelayed();

    public void finishDragging();

    public void finishManualRecording();

    public void finishModelessRecording();

    public void finishRecording(ControllerMessage var1);

    public void finishSelfTimer();

    public int getOrientation();

    public ParameterApplicable getParameterListener();

    public Parameters getParams();

    public Selftimer getSelftimer(int var1);

    public long getTimeMillisForLastPictureTaken();

    public boolean isEnoughStorageSizeAvailable();

    @Override
    public void onStoreComplete(StoreDataResult var1);

    public void onVideoError(boolean var1);

    public void pauseSceneRecognition();

    public void prepareBurstShot();

    public void prepareDragging();

    public void prepareForFinish();

    public void prepareManualRecording();

    public void prepareModelessRecording();

    public void prepareRecording();

    public void prepareView();

    public void releaseVideoDevice();

    public boolean reopenCamera(int var1);

    public boolean restoreFocusMode(boolean var1);

    public void restoreLightSetting();

    public void selfTimerCapture(ControllerEventSource var1);

    public void setCurrentSelftimer(Parameters var1);

    public void setExifInfo(int var1, Location var2);

    public void setFocusMode(FocusMode var1);

    protected abstract void setInitState(boolean var1);

    public void setPreviewDisplay(CameraSurfaceHolder var1);

    public boolean shouldAfStartAfterSelfTimer(int var1);

    public boolean shouldKeepZoomStep(CapturingMode var1, CapturingMode var2);

    public boolean shouldRestartPreview(Rect var1);

    public void showErrorMessage(int var1);

    public void startModelessRecording();

    public void startPreview();

    public void startPreview(CameraSurfaceHolder var1);

    public void startRecording();

    public void startSelfTimer(int var1, ControllerEventSource var2);

    public void startViewFinder();

    public void stopObjectTracking(Rect var1);

    public void suspendViewFinder();

    public void updateFaceDetect(Parameters var1);

    public PhotoSavingRequest updateSavingRequest(PhotoSavingRequest var1, boolean var2);

    public void updateSelftimers();

    public void updateStatus();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class SettingsController
    implements ParameterApplicable {
        final /* synthetic */ CameraFunctions this$0;

        SettingsController(CameraFunctions var1);

        public void applyAllParameters(Parameters var1);

        @Override
        public void commit();

        @Override
        public void set(AutoReview var1);

        @Override
        public void set(AutoUpload var1);

        @Override
        public void set(BurstShot var1);

        @Override
        public void set(CaptureFrameShape var1);

        @Override
        public void set(CapturingMode var1);

        @Override
        public void set(DestinationToSave var1);

        @Override
        public void set(Ev var1);

        @Override
        public void set(FaceIdentify var1);

        @Override
        public void set(Facing var1);

        @Override
        public void set(FastCapture var1);

        @Override
        public void set(Flash var1);

        @Override
        public void set(FocusMode var1);

        @Override
        public void set(Geotag var1);

        @Override
        public void set(Hdr var1);

        @Override
        public void set(Iso var1);

        @Override
        public void set(Metering var1);

        @Override
        public void set(Microphone var1);

        @Override
        public void set(PhotoLight var1);

        @Override
        public void set(Resolution var1);

        @Override
        public void set(Scene var1);

        @Override
        public void set(SelfTimer var1);

        @Override
        public void set(ShutterSound var1);

        @Override
        public void set(SmileCapture var1);

        @Override
        public void set(SoftSkin var1);

        @Override
        public void set(Stabilizer var1);

        @Override
        public void set(SuperResolution var1);

        @Override
        public void set(TouchBlock var1);

        @Override
        public void set(TouchCapture var1);

        @Override
        public void set(VideoAutoReview var1);

        @Override
        public void set(VideoHdr var1);

        @Override
        public void set(VideoSelfTimer var1);

        @Override
        public void set(VideoSize var1);

        @Override
        public void set(VideoSmileCapture var1);

        @Override
        public void set(VideoStabilizer var1);

        @Override
        public void set(VolumeKey var1);

        @Override
        public void set(WhiteBalance var1);
    }

}

