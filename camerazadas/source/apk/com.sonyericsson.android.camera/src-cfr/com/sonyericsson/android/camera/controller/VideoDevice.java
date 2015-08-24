/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import android.location.Location;
import android.media.CamcorderProfile;
import android.net.Uri;
import android.os.Handler;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.LocalGoogleAnalyticsUtil;
import com.sonyericsson.android.camera.util.MaxVideoSize;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.status.CameraStatusPublisher;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.VideoRecordingFps;
import com.sonyericsson.cameracommon.status.eachcamera.VideoResolution;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;
import com.sonymobile.cameracommon.media.recorder.RecorderException;
import com.sonymobile.cameracommon.media.recorder.RecorderFactory;
import com.sonymobile.cameracommon.media.recorder.RecorderInterface;
import com.sonymobile.cameracommon.media.recorder.RecorderParameters;
import com.sonymobile.cameracommon.media.utility.NotificationStreamManager;
import java.io.File;
import java.io.FileNotFoundException;

public class VideoDevice {
    private static final String TAG = VideoDevice.class.getSimpleName();
    private final CameraActivity mActivity;
    private final CameraWindow mCameraWindow;
    private int mDuration;
    private boolean mIsConstraint;
    private NotificationStreamManager mNotificationStreamManager;
    private String mOutputPath;
    private int mPreviousRecordingTimeInSeconds;
    private RecorderInterface mRecorder;
    private final RecorderInterface.RecorderListener mRecorderListener;
    private VideoSavingRequest mRequest;
    private int mUpdateRemainCount;

    public VideoDevice(CameraFunctions cameraFunctions) {
        this.mRecorderListener = new RecorderInterface.RecorderListener(){

            @Override
            public void onRecordError(int n, int n2) {
                Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, n, n2);
            }

            @Override
            public void onRecordFinished(RecorderInterface.Result result) {
                switch (.$SwitchMap$com$sonymobile$cameracommon$media$recorder$RecorderInterface$Result[result.ordinal()]) {
                    default: {
                        return;
                    }
                    case 1: {
                        Executor.postEvent(ControllerEvent.EV_VIDEO_FINISHED, 0, 0);
                        return;
                    }
                    case 2: {
                        Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, 1, 0);
                        return;
                    }
                    case 3: {
                        Executor.postEvent(ControllerEvent.EV_VIDEO_INFO, 800, 0);
                        return;
                    }
                    case 4: 
                }
                Executor.postEvent(ControllerEvent.EV_VIDEO_INFO, 801, 0);
            }

            @Override
            public void onRecordPaused(RecorderInterface.Result result) {
                Executor.postEvent(ControllerEvent.EV_VIDEO_PAUSED, 0, 0);
            }

            @Override
            public void onRecordProgress(long l) {
                Executor.postEvent(ControllerEvent.EV_VIDEO_PROGRESS, (int)l, null);
            }
        };
        this.mActivity = cameraFunctions.mCameraActivity;
        this.mCameraWindow = cameraFunctions.mCameraWindow;
    }

    private void disableRecordingSoundIfNeeded() {
        if (VideoStabilizer.isIntelligentActive(this.mActivity.getParameterManager().getParameters().getVideoStabilizer())) {
            this.mActivity.getCameraDevice().setVideoRecordingSound(ShutterSound.OFF);
            this.mActivity.getCameraDevice().commit();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean isConstraint(VideoSize videoSize, CameraActivity cameraActivity) {
        boolean bl;
        boolean bl2 = bl = false;
        if (videoSize == null) return bl2;
        if (videoSize.isConstraint()) return true;
        bl2 = bl;
        if (!cameraActivity.getConfigurations().hasLimitForSizeOrDuration()) return bl2;
        return true;
    }

    private Uri selectOutputUri(Uri uri, String string) {
        if (this.mActivity.isOneShotVideo() && uri != null) {
            this.mOutputPath = "/dev/null";
            return uri;
        }
        this.mOutputPath = string;
        return Uri.fromFile(new File(this.mOutputPath));
    }

    private void sendGoogleAnalyticsEvents() {
        boolean bl = this.mActivity.isAlreadyHighTemperature();
        int n = (int)this.mRecorder.getRecordingTimeMillis();
        LocalGoogleAnalyticsUtil.getInstance().sendEventSettings();
        GoogleAnalyticsUtil.getInstance().sendRecordingEvent(Event.CaptureOperation.RECORDING, bl, n, false);
    }

    private void setStreamNotificationMute(boolean bl) {
        if (this.mNotificationStreamManager == null) {
            this.mNotificationStreamManager = new NotificationStreamManager(this.mActivity);
        }
        this.mNotificationStreamManager.setStreamMute(bl);
    }

    public void awaitFinishingRecording() {
        if (this.mRecorder == null) {
            return;
        }
        if (this.mRecorder.isRecordingOrPaused()) {
            this.disableRecordingSoundIfNeeded();
        }
        this.mRecorder.awaitFinish();
    }

    public int getDuration() {
        return this.mDuration;
    }

    public String getOutputFile() {
        return this.mOutputPath;
    }

    public int getRecordingTime() {
        if (this.mRecorder == null) {
            return 0;
        }
        return (int)this.mRecorder.getRecordingTimeMillis();
    }

    public VideoSavingRequest getSavingRequest() {
        return this.mRequest;
    }

    public boolean isPaused() {
        if (this.mRecorder == null) {
            return false;
        }
        return this.mRecorder.isPaused();
    }

    public boolean isRecordStopping() {
        if (this.mRecorder == null) {
            return false;
        }
        return this.mRecorder.isStopping();
    }

    public boolean isRecorderWorking() {
        if (this.mRecorder == null) {
            CameraLogger.d(TAG, "Video Recorder: null");
            return false;
        }
        if (!(this.mRecorder.isRecordingOrPaused() || this.mRecorder.isStopping())) {
            CameraLogger.d(TAG, "Video Recorder: not working");
            return false;
        }
        CameraLogger.d(TAG, "Video Recorder: working");
        return true;
    }

    public boolean isRecording() {
        if (this.mRecorder == null) {
            return false;
        }
        return this.mRecorder.isRecordingOrPaused();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void pause() {
        try {
            this.mRecorder.pause();
        }
        catch (RecorderException var1_1) {}
        this.setStreamNotificationMute(false);
    }

    public boolean release() {
        if (this.isRecorderWorking()) {
            return false;
        }
        Executor.cancelEvent(ControllerEvent.EV_VIDEO_PROGRESS);
        this.mRecorder = null;
        this.setStreamNotificationMute(false);
        return true;
    }

    public void resume() {
        this.setStreamNotificationMute(true);
        try {
            this.mRecorder.resume();
            return;
        }
        catch (RecorderException var1_1) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean setup(VideoSize videoSize, VideoStabilizer videoStabilizer, boolean bl, VideoSavingRequest videoSavingRequest, String object, int n, ShutterSound shutterSound) throws FileNotFoundException {
        if (!this.mActivity.getCameraDevice().isPreviewing()) {
            return false;
        }
        MaxVideoSize maxVideoSize = MaxVideoSize.create(this.mActivity.getConfigurations(), videoSize, this.mActivity.getStorageController());
        object = RecorderParameters.newRecordParameters().setUri(this.selectOutputUri(videoSavingRequest.getExtraOutput(), (String)object)).setProfile(videoSize.getVideoProfile().getCamcorderProfile()).setLocation(videoSavingRequest.common.location).setOrientationHint(n).setMicrophoneEnabled(bl).setMaxDuration(maxVideoSize.getMaxDuration()).setMaxFileSize(maxVideoSize.getMaxFileSize()).build();
        this.mIsConstraint = VideoDevice.isConstraint(videoSize, this.mActivity);
        n = this.mIsConstraint ? 100 : 1000;
        CameraActivity cameraActivity = this.mActivity;
        RecorderInterface.RecorderListener recorderListener = this.mRecorderListener;
        Handler handler = new Handler();
        bl = VideoStabilizer.isIntelligentActive(videoStabilizer) && shutterSound != ShutterSound.OFF;
        this.mRecorder = RecorderFactory.create(cameraActivity, recorderListener, handler, n, bl);
        try {
            if (!this.mRecorder.prepare(this.mActivity.getCameraDevice().getCamera(), (RecorderParameters)object)) return false;
            {
                this.mDuration = maxVideoSize.getMaxDuration();
                this.mRequest = videoSavingRequest;
                new EachCameraStatusPublisher(this.mActivity, this.mActivity.getCameraDevice().getCameraId()).putFromParameter(this.mActivity.getCameraDevice().getParameters()).put(new VideoResolution(videoSize.getVideoRect())).put((VideoResolution)new VideoRecordingFps(videoSize.getVideoFrameRate())).publish();
                return true;
            }
        }
        catch (RuntimeException var1_2) {
            // empty catch block
        }
        return false;
    }

    public boolean start() {
        this.setStreamNotificationMute(true);
        this.mPreviousRecordingTimeInSeconds = 0;
        try {
            this.mRecorder.start();
            new EachCameraStatusPublisher(this.mActivity, this.mActivity.getCameraDevice().getCameraId()).put(new DeviceStatus(DeviceStatus.Value.VIDEO_RECORDING)).publish();
            return true;
        }
        catch (RecorderException var1_1) {
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void stop() {
        if (this.mRecorder.isRecordingOrPaused()) {
            try {
                this.disableRecordingSoundIfNeeded();
                this.mRecorder.stop();
            }
            catch (RecorderException var1_1) {
                Executor.postEmptyEvent(ControllerEvent.EV_DEVICE_ERROR);
            }
        }
        new EachCameraStatusPublisher(this.mActivity, this.mActivity.getCameraDevice().getCameraId()).putFromParameter(this.mActivity.getCameraDevice().getParameters()).put(new DeviceStatus(DeviceStatus.Value.VIDEO_PREVIEW)).publish();
        this.sendGoogleAnalyticsEvents();
    }

    public void update(int n) {
        this.mActivity.disableAutoOffTimer();
        int n2 = n / 1000;
        if (n2 > this.mPreviousRecordingTimeInSeconds) {
            this.mCameraWindow.updateRecordingTime(n2 * 1000);
            this.mPreviousRecordingTimeInSeconds = n2;
        }
        if (this.mIsConstraint) {
            this.mCameraWindow.updateProgressbar(n);
        }
        this.mUpdateRemainCount = this.updateRemain(this.mUpdateRemainCount);
    }

    public int updateRemain(int n) {
        if (n == 0) {
            long l = this.mActivity.getSavingTaskManager().getExpectedTotalSavedPicturesSize();
            this.mActivity.getStorageManager().updateRemain(l, false);
        }
        if (n >= 10) {
            return 0;
        }
        return n + 1;
    }

}

