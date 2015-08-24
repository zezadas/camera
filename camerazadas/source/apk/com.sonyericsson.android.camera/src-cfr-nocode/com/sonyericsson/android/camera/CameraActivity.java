/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.os.Bundle;
import android.view.KeyEvent;
import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.LaunchConditions;
import com.sonyericsson.android.camera.OneShotType;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClient;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraActivity
extends ExtendedActivity
implements DialogInterface.OnCancelListener {
    private static final int PERFLOCK_DURATION_MILLIS = 1500;
    private static final String TAG = "CameraActivity";
    private CameraActivityFinishBroadcastReceiver mCameraActivityFinishReceiver;
    protected CameraDevice mCameraDevice;
    private CameraWindow mCameraWindow;
    private KeyEventTranslator mKeyEventTranslator;
    private CapturingMode mPreviousManualMode;
    private CapturingMode mPreviousModeNotFront;
    private WearableBridgeClient mWearableBridgeClient;
    private ObserveWearableInterface.LifeCycleObserver mWearableBridgeLifeCycleObserver;
    private ObserveWearableInterface.PhotoEventObserver mWearableBridgePhotoEventObserver;
    private ObserveWearableInterface.VideoEventObserver mWearableBridgeVideoEventObserver;

    public CameraActivity();

    static /* synthetic */ CameraWindow access$500(CameraActivity var0);

    private void acquirePerformanceLock();

    private void checkIntent(Intent var1);

    private boolean createSingletons();

    public static CapturingMode getExtraCapturingMode(Intent var0, CapturingMode var1);

    private CapturingMode getLastCapturingMode(CapturingMode var1);

    private CapturingMode getLastPreviousCapturingMode(CapturingMode var1);

    private CapturingMode getLastPreviousManualMode(CapturingMode var1);

    private CapturingMode getRequestedCapturingMode(Intent var1, CapturingMode var2);

    private void initCameraWindow();

    private void initConfigrations();

    public static boolean isMenuCustomizationIn();

    public static boolean isSurfaceSizeValid(int var0, int var1, int var2);

    private void notifyOnPauseToWearable();

    private void notifyOnResumeToWearable();

    private void notifyUnlockToWearable();

    private void pauseConfigrations();

    private void pauseSingletons();

    private void readExtra(Intent var1);

    private void releaseSingletons();

    private void releaseWearableFramework();

    private void requestToRestoreNavigationBar();

    private void resumeSettingsRelatedSingletons();

    private boolean resumeSingletons(boolean var1);

    private void setContentView();

    private void setPhotoMode(Intent var1);

    private void setupSingletons();

    private void setupWearableFramework();

    private void setupWindow();

    private void showErrorExitDialog();

    @Override
    public void abort();

    protected void cancelCheckAutoUploadSetting();

    public void changeCapturingMode(CapturingMode var1);

    public void consumeExtraOperation();

    public void doFirstRunAction();

    public void finish(int var1);

    public void finishOneShot(StoreDataResult var1);

    public AudioManager getAudioManager();

    public CameraDevice getCameraDevice();

    public CameraWindow getContentView();

    public int getDisplaySize();

    public LaunchConditions.ExtraOperation getExtraOperation();

    @Override
    protected ParamSharedPrefWrapper getParamSharedPrefWrapper();

    public CapturingMode getPreviousCapturingModeNotFront();

    public CapturingMode getPreviousManualMode();

    public WearableBridgeClient getWearableBridge();

    @Override
    protected void initializeGoogleAnalytics();

    @Override
    public boolean isDualStorageAvailable();

    public boolean isHighTemperature();

    @Override
    public boolean isMenuAvailable();

    public boolean isNewMode(CapturingMode var1);

    public boolean isNormalStart();

    public boolean isPhotoIn();

    public boolean isRecording();

    public boolean isVideoIn();

    public void notifyStateBlockedToWearable();

    public void notifyStateIdleToWearable();

    @Override
    public void onActivityResult(int var1, int var2, Intent var3);

    @Override
    public void onBackPressed();

    public void onCameraReadyToUse();

    @Override
    public void onCancel(DialogInterface var1);

    @Override
    public void onConfigurationChanged(Configuration var1);

    @Override
    public final void onCreate(Bundle var1);

    @Override
    public void onDestroy();

    @Override
    public boolean onKeyDown(int var1, KeyEvent var2);

    @Override
    public boolean onKeyMultiple(int var1, int var2, KeyEvent var3);

    @Override
    public boolean onKeyUp(int var1, KeyEvent var2);

    @Override
    public void onNewIntent(Intent var1);

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
    public void onWindowFocusChanged(boolean var1);

    @Override
    protected void prepareFinish();

    protected void requestCheckAutoUploadSetting(AutoUploadSettingNotifyCallback var1);

    @Override
    public void resumeAll();

    @Override
    public void resumeAll(boolean var1);

    public void setGeotag(boolean var1);

    public void setLaunchCapturingMode(CapturingMode var1);

    public void setLaunchCapturingMode(CapturingMode var1, boolean var2, OneShotType var3);

    public void showZoomToast(CapturingMode var1, boolean var2);

    @Override
    public void terminateApplication();

    public void updatePreviousCapturingMode(CapturingMode var1);

    public void updateSettingDialog();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AutoUploadSettingNotifyCallback
    implements AutoUploadSettingNotifyListener {
        final /* synthetic */ CameraActivity this$0;

        private AutoUploadSettingNotifyCallback(CameraActivity var1);

        /* synthetic */ AutoUploadSettingNotifyCallback(CameraActivity var1,  var2);

        @Override
        public void onAutoUploadSettingNotified(Context var1, String var2, AutoUploadSettings.AutoUploadSetting var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class CameraActivityFinishBroadcastReceiver
    extends BroadcastReceiver {
        CameraActivity mCameraActivity;

        CameraActivityFinishBroadcastReceiver(CameraActivity var1);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StartupGeotagSettingListener
    implements GeotagSettingListener {
        final /* synthetic */ CameraActivity this$0;

        private StartupGeotagSettingListener(CameraActivity var1);

        /* synthetic */ StartupGeotagSettingListener(CameraActivity var1,  var2);

        @Override
        public void onSet(boolean var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class WearableBridgeLifeCycleObserver
    implements ObserveWearableInterface.LifeCycleObserver {
        final /* synthetic */ CameraActivity this$0;

        private WearableBridgeLifeCycleObserver(CameraActivity var1);

        /* synthetic */ WearableBridgeLifeCycleObserver(CameraActivity var1,  var2);

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
        final /* synthetic */ CameraActivity this$0;

        private WearableBridgePhotoEventObserver(CameraActivity var1);

        /* synthetic */ WearableBridgePhotoEventObserver(CameraActivity var1,  var2);

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

