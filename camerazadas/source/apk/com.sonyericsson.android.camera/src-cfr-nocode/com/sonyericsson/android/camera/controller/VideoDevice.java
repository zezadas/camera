/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.net.Uri;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonymobile.cameracommon.media.recorder.RecorderInterface;
import com.sonymobile.cameracommon.media.utility.NotificationStreamManager;
import java.io.FileNotFoundException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class VideoDevice {
    private static final String TAG;
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

    static;

    public VideoDevice(CameraFunctions var1);

    private void disableRecordingSoundIfNeeded();

    public static boolean isConstraint(VideoSize var0, CameraActivity var1);

    private Uri selectOutputUri(Uri var1, String var2);

    private void sendGoogleAnalyticsEvents();

    private void setStreamNotificationMute(boolean var1);

    public void awaitFinishingRecording();

    public int getDuration();

    public String getOutputFile();

    public int getRecordingTime();

    public VideoSavingRequest getSavingRequest();

    public boolean isPaused();

    public boolean isRecordStopping();

    public boolean isRecorderWorking();

    public boolean isRecording();

    public void pause();

    public boolean release();

    public void resume();

    public boolean setup(VideoSize var1, VideoStabilizer var2, boolean var3, VideoSavingRequest var4, String var5, int var6, ShutterSound var7) throws FileNotFoundException;

    public boolean start();

    public void stop();

    public void update(int var1);

    public int updateRemain(int var1);

}

