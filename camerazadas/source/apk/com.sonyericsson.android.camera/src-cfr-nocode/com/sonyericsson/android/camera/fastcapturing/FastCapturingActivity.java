/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.hardware.Camera;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler;
import com.sonyericsson.android.camera.fastcapturing.StateMachine;
import com.sonyericsson.android.camera.fastcapturing.view.BaseFastViewFinder;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClient;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FastCapturingActivity
extends ExtendedActivity
implements DialogInterface.OnCancelListener {
    public static final int AUTO_OFF_TIME_OUT_DURATION = 30000;
    public static final int CLEAR_DISMISS_KEYGUARD_DELAY_TIME = 500;
    public static final int CLEAR_DISMISS_KEYGUARD_TOTAL_COUNT = 10;
    public static final String EXTRA_IS_INTERRUPT_PROCESSING_OCCURRED = "com.sonymobile.android.camera.extra.IS_INTERRUPT_PROCESSING_OCCURRED";
    public static final String INTENT_ACTION_MAIN_FAST_CAPTURING_PHOTO_CAMERA = "com.sonyericsson.android.camera.action.MAIN_FAST_CAPTURING_PHOTO_CAMERA";
    public static final String INTENT_ACTION_MAIN_FAST_CAPTURING_VIDEO_CAMERA = "com.sonyericsson.android.camera.action.FRONT_FAST_CAPTURING_VIDEO_CAMERA";
    public static final String INTENT_SUBJECT_CANCEL = "cancel";
    public static final String INTENT_SUBJECT_PAUSED = "activity-paused";
    public static final String INTENT_SUBJECT_PREPARE = "prepare";
    public static final String INTENT_SUBJECT_RESUMED = "activity-resumed";
    public static final String INTENT_SUBJECT_START = "start";
    public static final String INTENT_SUBJECT_START_SECURE = "start-secure";
    public static final String INTENT_SUBJECT_START_WITH_SECURITY_SETTING_DIALOG = "security-setting";
    public static final String KEY_FAST_CAPTURING_CONFIRMATION_COUNT = "KEY_FAST_CAPTURING_CONFIRMATION_COUNT";
    public static final String KEY_SECURITY_CONFIRMATION_IS_DONE = "KEY_SECURITY_CONFIRMATION_IS_DONE";
    public static final int REQUEST_FINISH_OWN_SELF_DELAY_TIME = 300;
    public static final int SETUP_DEVICE_SETUP_WAIT_TIME = 100;
    public static final int SETUP_LAZY_EXECUTION_WAIT_TIME = 200;
    public static final int SOUND_AF_SUCCESS = 0;
    public static final int SOUND_SELF_TIMER_INSTANT = 4;
    public static final int SOUND_SELF_TIMER_LONG = 2;
    public static final int SOUND_SELF_TIMER_SHORT = 3;
    public static final int SOUND_SHUTTER = 1;
    private static String TAG;
    private static final CameraDeviceHandler sCameraDeviceHandler;
    private static CapturingMode sCurrentCapturingMode;
    private static FastCapture sFastCaptureSetting;
    private static CapturingMode sTargetCapturingMode;
    private CameraDeviceHandler mCameraDeviceHandler;
    boolean mIsInterruptProcessingOccurred;
    private boolean mIsLazyInitializationRunning;
    private boolean mIsSecurePhotoLaunchedByIntent;
    private boolean mIsSetContentView;
    protected KeyEventTranslator mKeyEventTranslator;
    private MediaPlayer mMediaPlayer;
    private PostDeviceInitializationTask mPostDeviceInitializationTask;
    private Handler mPostEventHandler;
    private ScreenOffReceiver mScreenOffReceiver;
    protected StateMachine mStateMachine;
    private BaseFastViewFinder mViewFinder;
    private WearableBridgeClient mWearableBridgeClient;
    private ObserveWearableInterface.LifeCycleObserver mWearableBridgeLifeCycleObserver;
    private ObserveWearableInterface.PhotoEventObserver mWearableBridgePhotoEventObserver;
    private ObserveWearableInterface.VideoEventObserver mWearableBridgeVideoEventObserver;

    static;

    public FastCapturingActivity();

    static /* synthetic */ Handler access$1000(FastCapturingActivity var0);

    static /* synthetic */ GeotagManager access$1100(FastCapturingActivity var0);

    static /* synthetic */ GeotagManager access$1200(FastCapturingActivity var0);

    static /* synthetic */ GeotagManager access$1300(FastCapturingActivity var0);

    static /* synthetic */ String access$1500();

    static /* synthetic */ CameraDeviceHandler access$500(FastCapturingActivity var0);

    static /* synthetic */ BaseFastViewFinder access$600(FastCapturingActivity var0);

    static /* synthetic */ void access$700(FastCapturingActivity var0);

    static /* synthetic */ FastCapture access$800();

    static /* synthetic */ FastCapture access$802(FastCapture var0);

    static /* synthetic */ boolean access$902(FastCapturingActivity var0, boolean var1);

    private void checkAudioAvailable();

    private void checkSecureIntent(Intent var1);

    public static CapturingMode getCurrentCapturingMode();

    private void getDownAll();

    protected static FastCapture getFastCaptureSetting();

    protected static CapturingMode getTargetCapturingMode();

    private void loadDestinationToSave();

    private static void logPerformance(String var0);

    private void notifyActivityState(String var1);

    private void playStartUpNotificationSoundIfRequired();

    private void postViewRelatedLazyInitializationTaskExecute();

    private void releaseMediaPlayer();

    private void releaseWearableFramework();

    public static void requestReloadFastCaptureSetting();

    private void requestToRestoreNavigationBar();

    protected static void setCurrentCapturingMode(CapturingMode var0);

    protected static void setFastCaptureSetting(FastCapture var0);

    protected static void setTargetCapturingMode(CapturingMode var0);

    private void setUpAll();

    private void setupCoreInstance();

    private void setupWearableFramework();

    public static CameraDeviceHandler staticCameraDevice();

    @Override
    public void abort();

    public void abort(boolean var1);

    protected void cancelCheckAutoUploadSetting();

    public void cancelDelayedEvent(Runnable var1);

    protected void confirmLocationService();

    protected BaseFastViewFinder createViewFinder(FastCapturingActivity var1);

    public void finishSecureOneShot(StoreDataResult var1);

    public CameraDeviceHandler getCameraDevice();

    public FastCapture getCurrentLaunchMode();

    @Override
    protected ParamSharedPrefWrapper getParamSharedPrefWrapper();

    public WearableBridgeClient getWearableBridge();

    @Override
    public boolean isDeviceInSecurityLock();

    public boolean isDirectCaptureWithStartUpEnabled();

    @Override
    public boolean isDualStorageAvailable();

    public boolean isLazyInitializationRunning();

    @Override
    public boolean isMenuAvailable();

    public boolean isRecording();

    public boolean isSecurePhotoLaunchedByIntent();

    protected boolean isVideoSupported();

    protected void loadFastCapturingLaunchSetting();

    public void notifyStateBlockedToWearable();

    public void notifyStateIdleToWearable();

    @Override
    public void onAttachedToWindow();

    public void onCameraReadyToUse();

    @Override
    public void onCancel(DialogInterface var1);

    @Override
    public void onConfigurationChanged(Configuration var1);

    @Override
    public void onCreate(Bundle var1);

    @Override
    public void onDestroy();

    @Override
    public boolean onKeyDown(int var1, KeyEvent var2);

    @Override
    public boolean onKeyUp(int var1, KeyEvent var2);

    @Override
    protected void onNewIntent(Intent var1);

    @Override
    public void onNotifyThermalNormal();

    @Override
    public void onNotifyThermalWarning();

    @Override
    public void onPause();

    @Override
    public void onReachHighTemperature(boolean var1);

    @Override
    public void onRestart();

    @Override
    public void onResume();

    @Override
    public void onStart();

    @Override
    public void onStop();

    @Override
    protected void onUserLeaveHint();

    @Override
    public void onWindowFocusChanged(boolean var1);

    @Override
    public void pauseCameraView();

    public void playSound(int var1);

    public void playSound(SelfTimer var1);

    public void postDelayedEvent(Runnable var1, long var2);

    public void postEvent(Runnable var1);

    public void prepareCameraDeviceHandler(Context var1, FastCapture var2, int var3);

    @Override
    protected void prepareFinish();

    protected void requestCheckAutoUploadSetting();

    public void requestFinishCameraActivity();

    public void requestLaunchAdvancedCameraApplication();

    public void requestPostLazyInitializationTaskExecute();

    public void requestSuspend();

    @Override
    public void resumeAll();

    @Override
    public void resumeAll(boolean var1);

    public void setDestinationToSave(DestinationToSave var1);

    @Override
    public boolean shouldAddOnlyNewContent();

    public void showCameraNotAvailableError();

    protected void showCameraNotAvailableError(boolean var1);

    @Override
    public boolean startAutoOffTimer();

    public void stopPlayingSound();

    @Override
    public void terminateApplication();

    public void updateLaunchMode(FastCapture var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class AutoUploadSettingCheckCallback
    implements AutoUploadSettingNotifyListener {
        private AutoUploadSettingCheckCallback();

        /* synthetic */ AutoUploadSettingCheckCallback( var1);

        @Override
        public void onAutoUploadSettingNotified(Context var1, String var2, AutoUploadSettings.AutoUploadSetting var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CameraErrorCallbackImpl
    implements Camera.ErrorCallback {
        final /* synthetic */ FastCapturingActivity this$0;

        private CameraErrorCallbackImpl(FastCapturingActivity var1);

        /* synthetic */ CameraErrorCallbackImpl(FastCapturingActivity var1,  var2);

        @Override
        public void onError(int var1, Camera var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ClearDismissKeyguardFlagTask
    implements Runnable {
        private final Activity mActivity;
        private final int mCalledCount;

        private ClearDismissKeyguardFlagTask(Activity var1, int var2);

        /* synthetic */ ClearDismissKeyguardFlagTask(Activity var1, int var2,  var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class LazyInitializationTask
    implements Runnable {
        private final FastCapturingActivity mActivity;
        final /* synthetic */ FastCapturingActivity this$0;

        LazyInitializationTask(FastCapturingActivity var1, FastCapturingActivity var2);

        private void retry();

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ModeName
    extends Enum<ModeName> {
        private static final /* synthetic */ ModeName[] $VALUES;
        public static final /* enum */ ModeName FAST_CAPTURING_CAMERA;
        public static final /* enum */ ModeName FAST_CAPTURING_VIDEO;

        static;

        private ModeName();

        public static ModeName valueOf(String var0);

        public static ModeName[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class PostDeviceInitializationTask
    implements Runnable {
        private final FastCapturingActivity mActivity;
        final /* synthetic */ FastCapturingActivity this$0;

        PostDeviceInitializationTask(FastCapturingActivity var1, FastCapturingActivity var2);

        private void applySettingsForFastVideo();

        private void retry();

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class RequestLaunchAdvancedCameraTask
    implements Runnable {
        private static final String TAG = "RequestLaunchAdvancedCameraTask";
        private final CapturingMode mCurrentMode;
        final /* synthetic */ FastCapturingActivity this$0;

        public RequestLaunchAdvancedCameraTask(FastCapturingActivity var1, CapturingMode var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class ScreenOffReceiver
    extends BroadcastReceiver {
        private static final String TAG = "ScreenOffReceiver";
        private FastCapturingActivity mActivity;

        public ScreenOffReceiver(FastCapturingActivity var1);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class WearableBridgeLifeCycleObserver
    implements ObserveWearableInterface.LifeCycleObserver {
        final /* synthetic */ FastCapturingActivity this$0;

        private WearableBridgeLifeCycleObserver(FastCapturingActivity var1);

        /* synthetic */ WearableBridgeLifeCycleObserver(FastCapturingActivity var1,  var2);

        @Override
        public void onPause();

        @Override
        public void onResume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class WearableBridgePhotoEventObserver
    implements ObserveWearableInterface.PhotoEventObserver {
        final /* synthetic */ FastCapturingActivity this$0;

        private WearableBridgePhotoEventObserver(FastCapturingActivity var1);

        /* synthetic */ WearableBridgePhotoEventObserver(FastCapturingActivity var1,  var2);

        @Override
        public void onPhotoCaptureRequested();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class WearableBridgeVideoEventObserver
    implements ObserveWearableInterface.VideoEventObserver {
        private WearableBridgeVideoEventObserver();

        /* synthetic */ WearableBridgeVideoEventObserver( var1);

        @Override
        public void onStartVideoRecRequested();

        @Override
        public void onStopVideoRecRequested();
    }

}

