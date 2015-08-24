/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 *  org.codeaurora.Performance
 */
package com.sonyericsson.android.camera;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.Window;
import android.view.WindowManager;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.LaunchConditions;
import com.sonyericsson.android.camera.OneShotType;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.parameters.AutoUpload;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.device.CameraDeviceException;
import com.sonyericsson.android.camera.device.CameraDeviceUtil;
import com.sonyericsson.android.camera.mediasaving.BurstSavingTaskManager;
import com.sonyericsson.android.camera.parameter.CommonParams;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.LocalGoogleAnalyticsUtil;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageAutoSwitchController;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.thermal.ThermalAlertReceiver;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.OneShotUtility;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.media.utility.AudioResourceChecker;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentificationUtil;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClient;
import java.io.File;
import org.codeaurora.Performance;

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

    public CameraActivity() {
        this.mCameraActivityFinishReceiver = new CameraActivityFinishBroadcastReceiver(this);
        this.mPreviousModeNotFront = CapturingMode.SCENE_RECOGNITION;
        this.mPreviousManualMode = CapturingMode.NORMAL;
        this.mWearableBridgeClient = null;
        this.mWearableBridgeLifeCycleObserver = null;
        this.mWearableBridgePhotoEventObserver = null;
        this.mWearableBridgeVideoEventObserver = null;
        CameraLogger.setAppName("SemcCameraUI");
    }

    private void acquirePerformanceLock() {
        try {
            Class.forName("org.codeaurora.Performance");
        }
        catch (ClassNotFoundException var1_1) {
            return;
        }
        switch (new Performance().perfLockAcquire(1500, new int[]{2047, 766, 1022, 1278, 1534})) {
            default: 
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void checkIntent(Intent intent) {
        String string;
        this.mLaunchConditions.setLaunchedBy(BaseActivity.LaunchedBy.INTENT);
        String string2 = string = intent.getAction();
        if (string == null) {
            string2 = "android.intent.action.MAIN";
            intent.setAction("android.intent.action.MAIN");
        }
        if (string2.equals("android.intent.action.MAIN")) {
            this.setPhotoMode(intent);
        } else if (string2.equals("android.media.action.IMAGE_CAPTURE")) {
            this.setLaunchCapturingMode(CapturingMode.SCENE_RECOGNITION, true, OneShotType.PHOTO);
        } else if (string2.equals("android.media.action.VIDEO_CAPTURE")) {
            this.setLaunchCapturingMode(CapturingMode.SCENE_RECOGNITION, true, OneShotType.VIDEO);
        } else if (string2.equals("android.media.action.STILL_IMAGE_CAMERA")) {
            this.setPhotoMode(intent);
        } else if (string2.equals("android.media.action.VIDEO_CAMERA")) {
            this.setLaunchCapturingMode(CapturingMode.VIDEO);
        } else if (string2.equals("com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA")) {
            if (HardwareCapability.isFrontCameraSupported() && HardwareCapability.getInstance().isSceneRecognitionSupported(1)) {
                this.setLaunchCapturingMode(CapturingMode.SUPERIOR_FRONT);
            } else {
                this.setLaunchCapturingMode(CapturingMode.FRONT_PHOTO);
            }
            if (intent.getBooleanExtra("com.sonyericsson.android.camera.extra.launchedByFastCapturing", false)) {
                this.updatePreviousCapturingMode(CapturingMode.SCENE_RECOGNITION);
            }
        } else if (string2.equals("com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA")) {
            this.setLaunchCapturingMode(CapturingMode.FRONT_VIDEO);
            if (intent.getBooleanExtra("com.sonyericsson.android.camera.extra.launchedByFastCapturing", false)) {
                this.updatePreviousCapturingMode(CapturingMode.SCENE_RECOGNITION);
            }
        } else if (string2.equals(CapturingMode.SCENE_RECOGNITION.getValue())) {
            this.setLaunchCapturingMode(CapturingMode.SCENE_RECOGNITION);
        } else if (string2.equals(CapturingMode.FRONT_PHOTO.getValue())) {
            this.setLaunchCapturingMode(CapturingMode.FRONT_PHOTO);
        } else if (string2.equals(CapturingMode.SUPERIOR_FRONT.getValue())) {
            this.setLaunchCapturingMode(CapturingMode.SUPERIOR_FRONT);
        } else {
            this.setLaunchCapturingMode(CapturingMode.SCENE_RECOGNITION);
        }
        this.readExtra(intent);
    }

    private boolean createSingletons() {
        this.mStorageController = new StorageAutoSwitchController((StorageAutoSwitchController.StorageAutoSwitchListener)this.mCameraWindow, (ViewFinderInterface)this.mCameraWindow);
        this.mMessagePopup.setStorageDialogStateListener((StorageController.StorageDialogStateListener)this.mCameraWindow);
        this.mStorageController.setMessegePopup(this.mMessagePopup);
        this.mStorageManager = new CameraStorageManager(this, this.mStorageController);
        DestinationToSave.setMountPoint(this, StorageUtil.getMountedPaths(this));
        this.mStorageController.setStorage(StorageUtil.getPathFromType(StorageManager.StorageType.EXTERNAL_CARD, this), 0);
        this.mStorageController.setStorage(StorageUtil.getPathFromType(StorageManager.StorageType.INTERNAL, this), 1);
        if (this.mLaunchConditions.isDeviceError()) {
            return false;
        }
        if (HardwareCapability.isCameraSupported()) {
            this.mCameraDevice = new CameraDevice(this);
            this.mConfigurations.init(this);
            this.mParameterManager = new ParameterManager(this, this.mLaunchConditions.getLaunchCapturingMode(), this.mStorageController);
            this.mCameraDevice.startOpenCameraDeviceTask(0);
            this.mControllerManager = new ControllerManager(this);
            this.mSavingTaskManager = new BurstSavingTaskManager(this);
            this.mGeotagManager = new GeotagManager(this);
            this.mShutterToneGenerator = new ShutterToneGenerator();
            this.mKeyEventTranslator = new KeyEventTranslator(this.getCommonSettings());
            return true;
        }
        this.mLaunchConditions.setDeviceError(true);
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static CapturingMode getExtraCapturingMode(Intent intent, CapturingMode capturingMode) {
        CapturingMode capturingMode2 = capturingMode;
        if (intent.hasExtra("com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE")) {
            return CapturingMode.convertFrom(intent.getStringExtra("com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"), capturingMode);
        }
        if (!intent.hasExtra("com.sonyericsson.camera.intent.extra.CAPTURING_MODE")) return capturingMode2;
        return CapturingMode.convertFrom(intent.getStringExtra("com.sonyericsson.camera.intent.extra.CAPTURING_MODE"), capturingMode);
    }

    private CapturingMode getLastCapturingMode(CapturingMode capturingMode) {
        return CapturingMode.convertFrom(new SharedPreferencesUtil(this).readString("KEY_LAST_MODE", capturingMode.name()), capturingMode);
    }

    private CapturingMode getLastPreviousCapturingMode(CapturingMode capturingMode) {
        return CapturingMode.convertFrom(new SharedPreferencesUtil(this).readString("KEY_LAST_PREVIOUS_MODE", capturingMode.name()), capturingMode);
    }

    private CapturingMode getLastPreviousManualMode(CapturingMode capturingMode) {
        return CapturingMode.convertFrom(new SharedPreferencesUtil(this).readString("KEY_LAST_PREVIOUS_MANUAL_MODE", capturingMode.name()), capturingMode);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private CapturingMode getRequestedCapturingMode(Intent intent, CapturingMode capturingMode) {
        CapturingMode capturingMode2;
        capturingMode = capturingMode2 = CameraActivity.getExtraCapturingMode(intent, capturingMode);
        if (capturingMode2 != CapturingMode.UNKNOWN) return capturingMode;
        capturingMode = capturingMode2;
        if (intent.getIntExtra("facing", 0) != 1) return capturingMode;
        if (!HardwareCapability.getInstance().isSceneRecognitionSupported(1)) return CapturingMode.FRONT_PHOTO;
        return CapturingMode.SUPERIOR_FRONT;
    }

    private void initCameraWindow() {
        this.mCameraWindow = new CameraWindow(this);
    }

    private void initConfigrations() {
        this.mConfigurations = new Configurations();
        this.mConfigurations.startInitTask(this);
    }

    public static boolean isMenuCustomizationIn() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean isSurfaceSizeValid(int n, int n2, int n3) {
        if (n == n2) {
            return false;
        }
        if (n3 == 2) {
            if (n < n2) return false;
            return true;
        }
        if (n3 != 1) return true;
        if (n <= n2) return true;
        return false;
    }

    private void notifyOnPauseToWearable() {
        if (this.getWearableBridge() != null) {
            this.getWearableBridge().getLifeCycleNotifier().onPause();
        }
    }

    private void notifyOnResumeToWearable() {
        if (this.getWearableBridge() != null) {
            this.getWearableBridge().getLifeCycleNotifier().onResume();
        }
    }

    private void notifyUnlockToWearable() {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[this.mLaunchConditions.getLaunchCapturingMode().ordinal()]) {
            default: {
                return;
            }
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: 
        }
        this.notifyOnResumeToWearable();
    }

    private void pauseConfigrations() {
        if (this.mConfigurations != null) {
            this.mConfigurations.shutdownInitTask();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void pauseSingletons() {
        this.mMessagePopup.release();
        if (this.mCameraDevice != null) {
            this.mCameraDevice.close();
        }
        if (this.mLaunchConditions.isDeviceError()) {
            this.finishUrgently();
            return;
        } else {
            this.mShutterToneGenerator.releaseResources();
            this.mCameraWindow.hidePauseView();
            this.mCameraWindow.showBlankScreen();
            ((BurstSavingTaskManager)this.mSavingTaskManager).releaseResource();
            this.mStorageManager.pause();
            this.mParameterManager.suspend();
            this.cancelCheckAutoUploadSetting();
            if (this.mControllerManager == null) return;
            {
                this.mControllerManager.releaseController();
                return;
            }
        }
    }

    private void readExtra(Intent intent) {
        boolean bl = intent.getBooleanExtra("com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera", false);
        boolean bl2 = intent.getBooleanExtra("com.sonyericsson.android.camera.extra.launchedByFastCapturing", false);
        boolean bl3 = intent.getBooleanExtra("com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen", false);
        if (bl || bl2) {
            this.mLaunchConditions.setIsLaunchedByOtherCamera(true);
        }
        if (bl3) {
            this.mLaunchConditions.setExtraOperation(LaunchConditions.ExtraOperation.OPEN_SETTINGS_MENU);
        }
    }

    private void releaseSingletons() {
        this.mMessagePopup.releaseContext();
        if (this.mLaunchConditions.isDeviceError()) {
            this.mLaunchConditions.setDeviceError(false);
            this.mLaunchConditions.setCameraDisabled(false);
            return;
        }
        this.mCameraDevice.release();
        this.mCameraWindow.getSurfaceView().getHolder().removeCallback((SurfaceHolder.Callback)this.mCameraDevice);
        this.mShutterToneGenerator.release();
        this.mCameraWindow = null;
        this.mSavingTaskManager.release();
        this.mStorageManager.release();
        this.mParameterManager.release();
        this.mControllerManager.release();
        this.mKeyEventTranslator = null;
        this.mConfigurations = null;
    }

    private void releaseWearableFramework() {
        if (this.mWearableBridgeClient != null) {
            this.mWearableBridgeClient.release();
            this.mWearableBridgeClient = null;
        }
        this.mWearableBridgeLifeCycleObserver = null;
        this.mWearableBridgePhotoEventObserver = null;
        this.mWearableBridgeVideoEventObserver = null;
    }

    private void requestToRestoreNavigationBar() {
        if (this.mCameraWindow != null) {
            this.mCameraWindow.requestToRestoreNavigationBar();
        }
    }

    private void resumeSettingsRelatedSingletons() {
        String string;
        Object object;
        if (this.mLaunchConditions.isDeviceError()) {
            return;
        }
        if (this.mLaunchConditions.getLaunchedBy() == BaseActivity.LaunchedBy.HISTORY && this.mLaunchConditions.getLaunchCapturingMode().isMainPhoto() && ((string = (object = this.getIntent()).getAction()).equals("android.intent.action.MAIN") || string.equals("android.media.action.STILL_IMAGE_CAMERA"))) {
            this.setPhotoMode((Intent)object);
        }
        this.mConfigurations.onResume(this);
        object = this.mLaunchConditions.getLaunchCapturingMode();
        this.mParameterManager.update((CapturingMode)object);
        this.requestCheckAutoUploadSetting(new AutoUploadSettingNotifyCallback());
        this.mControllerManager.storeCapturingMode((CapturingMode)object);
    }

    private boolean resumeSingletons(boolean bl) {
        if (this.mLaunchConditions.isDeviceError()) {
            return false;
        }
        if (!this.mDelayedOnResume) {
            this.resumeSettingsRelatedSingletons();
        }
        this.mControllerManager.createController();
        if (this.mCameraWindow.prepared()) {
            this.mCameraWindow.showSurfaceView();
        }
        this.mCameraDevice.resume(this.mParameterManager.getParameters());
        if (this.mLaunchConditions.isDeviceError()) {
            this.mControllerManager.abort();
            this.mControllerManager.releaseController();
            return false;
        }
        this.mCameraWindow.resume(this.mParameterManager.getParameters(), bl);
        this.mCameraWindow.requestInflate();
        this.mShutterToneGenerator.prepare(this.mCameraDevice);
        return true;
    }

    private void setContentView() {
        MeasurePerformance.measureResource("Start inflate camera window");
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SET_CONTENT_VIEWS, true);
        this.setContentView(2130903046);
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SET_CONTENT_VIEWS, false);
        this.mCameraWindow.onFinishInflate();
        this.mCameraWindow.init();
    }

    private void setPhotoMode(Intent intent) {
        CapturingMode capturingMode = CapturingMode.UNKNOWN;
        CapturingMode capturingMode2 = this.getLastCapturingMode(capturingMode);
        CapturingMode capturingMode3 = this.getLastPreviousCapturingMode(CapturingMode.SCENE_RECOGNITION);
        CapturingMode capturingMode4 = this.getLastPreviousManualMode(CapturingMode.NORMAL);
        CapturingMode capturingMode5 = capturingMode;
        if (this.mLaunchConditions.getLaunchedBy() == BaseActivity.LaunchedBy.INTENT) {
            capturingMode5 = this.getRequestedCapturingMode(intent, capturingMode);
        }
        if (capturingMode2 == capturingMode) {
            if (capturingMode5 == capturingMode) {
                this.setLaunchCapturingMode(CapturingMode.SCENE_RECOGNITION);
                this.updatePreviousCapturingMode(capturingMode3);
                return;
            }
            this.setLaunchCapturingMode(capturingMode5);
            return;
        }
        if (capturingMode5 == capturingMode) {
            this.setLaunchCapturingMode(capturingMode2);
            this.updatePreviousCapturingMode(capturingMode3);
            return;
        }
        if (capturingMode5 == CapturingMode.NORMAL) {
            this.setLaunchCapturingMode(capturingMode4);
            this.updatePreviousCapturingMode(capturingMode4);
            return;
        }
        this.setLaunchCapturingMode(capturingMode5);
    }

    private void setupSingletons() {
        if (this.mLaunchConditions.isDeviceError()) {
            return;
        }
        this.mStorageManager.addStorageListener(this.mControllerManager.getStorageListener());
        if (this.mGeotagManager != null) {
            this.mGeotagManager.setLocationAcquiredListener(this.mCameraWindow.getLocationListener());
            this.mGeotagManager.notifyStatus();
        }
        this.mCameraWindow.setupSurfaceView((SurfaceHolder.Callback)this.mCameraDevice);
    }

    private void setupWearableFramework() {
        this.mWearableBridgeLifeCycleObserver = new WearableBridgeLifeCycleObserver();
        this.mWearableBridgePhotoEventObserver = new WearableBridgePhotoEventObserver();
        this.mWearableBridgeVideoEventObserver = new WearableBridgeVideoEventObserver();
        this.mWearableBridgeClient = new WearableBridgeClient(this, new Handler(), this.mWearableBridgeLifeCycleObserver, this.mWearableBridgePhotoEventObserver, this.mWearableBridgeVideoEventObserver);
    }

    private void setupWindow() {
        this.getWindow().setFormat(-3);
        this.requestWindowFeature(1);
        this.getWindow().setFlags(1024, 1024);
        this.getWindow().addFlags(256);
        this.getWindow().addFlags(512);
    }

    private void showErrorExitDialog() {
        CameraLogger.e("CameraActivity", "showErrorExitDialog: exit.");
        if (this.mCameraWindow != null) {
            this.mCameraWindow.showBlankScreen();
        }
        if (this.mMessagePopup != null) {
            if (this.mLaunchConditions.isCameraDisabled()) {
                this.mMessagePopup.showCameraDisabledMessage();
            }
        } else {
            return;
        }
        this.mMessagePopup.showDeviceErrorMessage();
    }

    @Override
    public void abort() {
        if (this.isOneShot()) {
            this.setResult(0);
        }
        this.terminateApplication();
    }

    protected void cancelCheckAutoUploadSetting() {
        AutoUploadSettings.getInstance().cancel(this);
        this.mParameterManager.updateAutoUpload();
    }

    public void changeCapturingMode(CapturingMode capturingMode) {
        CapturingMode capturingMode2 = this.mControllerManager.getCapturingMode();
        if (capturingMode2 != capturingMode) {
            this.updatePreviousCapturingMode(capturingMode2);
        }
        if (this.isControllerReleased()) {
            return;
        }
        this.mControllerManager.changeCapturingMode(capturingMode);
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            default: {
                this.notifyOnPauseToWearable();
                return;
            }
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: 
        }
        this.notifyOnResumeToWearable();
    }

    public void consumeExtraOperation() {
        this.mLaunchConditions.setExtraOperation(LaunchConditions.ExtraOperation.NONE);
    }

    public void doFirstRunAction() {
        if (this.isNormalStart() && this.mConfigurations.isFirstRun()) {
            this.mConfigurations.setFirstRun(false);
        }
    }

    public void finish(int n) {
        this.setResult(n);
        this.terminateApplication();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void finishOneShot(StoreDataResult storeDataResult) {
        if (this.isOneShotVideo()) {
            this.setResult(storeDataResult.getResultCode(), new Intent().setData(storeDataResult.uri));
            this.terminateApplication();
            return;
        }
        if (!this.isOneShotPhoto()) return;
        {
            if (storeDataResult.savingRequest.common.cropValue != null && storeDataResult.isSuccess()) {
                if (ApplicationLauncher.launchOneShotCrop(this, storeDataResult.uri, storeDataResult.savingRequest.getExtraOutput(), storeDataResult.savingRequest.common.cropValue)) return;
                {
                    CameraLogger.w("CameraActivity", "finishOneShot: Launching cropper failed.");
                    this.setResult(0);
                    this.terminateApplication();
                    return;
                }
            }
        }
        if (storeDataResult.savingRequest.getExtraOutput() != null) {
            this.setResult(storeDataResult.getResultCode());
            this.finish();
            return;
        }
        if (storeDataResult.isSuccess()) {
            this.setResult(storeDataResult.getResultCode(), OneShotUtility.createResultIntent(this, storeDataResult.uri, storeDataResult.savingRequest.common.mimeType, storeDataResult.savingRequest.common.orientation));
        } else {
            this.setResult(0);
        }
        this.finish();
    }

    public AudioManager getAudioManager() {
        return (AudioManager)this.getSystemService("audio");
    }

    public CameraDevice getCameraDevice() {
        return this.mCameraDevice;
    }

    public CameraWindow getContentView() {
        return this.mCameraWindow;
    }

    public int getDisplaySize() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    public LaunchConditions.ExtraOperation getExtraOperation() {
        return this.mLaunchConditions.getExtraOperation();
    }

    @Override
    protected ParamSharedPrefWrapper getParamSharedPrefWrapper() {
        return new ParamSharedPrefWrapper(this, "com.sonyericsson.android.camera.shared_preferences", "0.0.0");
    }

    public CapturingMode getPreviousCapturingModeNotFront() {
        return this.mPreviousModeNotFront;
    }

    public CapturingMode getPreviousManualMode() {
        return this.mPreviousManualMode;
    }

    public WearableBridgeClient getWearableBridge() {
        if (this.isOneShot()) {
            return null;
        }
        return this.mWearableBridgeClient;
    }

    @Override
    protected void initializeGoogleAnalytics() {
    }

    @Override
    public boolean isDualStorageAvailable() {
        return true;
    }

    public boolean isHighTemperature() {
        return this.mThermalAlertReceiver.isAlreadyHighTemperature();
    }

    @Override
    public boolean isMenuAvailable() {
        if (this.isControllerReleased()) {
            return false;
        }
        return ControllerManager.isMenuAvailable();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean isNewMode(CapturingMode capturingMode) {
        if (this.mControllerManager.getCapturingMode() == capturingMode) {
            return false;
        }
        if (this.mControllerManager.getCapturingMode() == CapturingMode.VIDEO && capturingMode == CapturingMode.PHOTO) {
            return true;
        }
        if (this.mControllerManager.getCapturingMode() == CapturingMode.PHOTO && capturingMode == CapturingMode.VIDEO) {
            return true;
        }
        if (!this.mControllerManager.getCapturingMode().isManual()) return true;
        if (capturingMode.isManual()) return false;
        return true;
    }

    public boolean isNormalStart() {
        boolean bl;
        boolean bl2 = bl = false;
        if (!this.mLaunchConditions.isOneShot()) {
            bl2 = bl;
            if (!this.mLaunchConditions.isLaunchedByOtherCamera()) {
                bl2 = bl;
                if (this.mLaunchConditions.getExtraOperation() == LaunchConditions.ExtraOperation.NONE) {
                    bl2 = true;
                }
            }
        }
        return bl2;
    }

    public boolean isPhotoIn() {
        if (this.isOneShotVideo()) {
            return false;
        }
        return true;
    }

    public boolean isRecording() {
        return Executor.isRecording();
    }

    public boolean isVideoIn() {
        if (this.isOneShotPhoto()) {
            return false;
        }
        return true;
    }

    public void notifyStateBlockedToWearable() {
        if (this.getWearableBridge() != null) {
            this.getWearableBridge().getPhotoStateNotifier().onStateChanged(AbstractCapturableState.AbstractPhotoState.BLOCKED);
            this.getWearableBridge().getVideoStateNotifier().onStateChanged(AbstractCapturableState.AbstractVideoState.BLOCKED);
        }
    }

    public void notifyStateIdleToWearable() {
        if (this.getWearableBridge() != null) {
            this.getWearableBridge().getPhotoStateNotifier().onStateChanged(AbstractCapturableState.AbstractPhotoState.IDLE);
            this.getWearableBridge().getVideoStateNotifier().onStateChanged(AbstractCapturableState.AbstractVideoState.IDLE);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onActivityResult(int n, int n2, Intent intent) {
        super.onActivityResult(n, n2, intent);
        switch (n) {
            default: {
                return;
            }
            case 7: {
                Uri uri;
                Intent intent2 = new Intent();
                Uri uri2 = uri = null;
                if (intent != null) {
                    Bundle bundle = intent.getExtras();
                    uri2 = uri;
                    if (bundle != null) {
                        intent2.putExtras(bundle);
                        uri2 = intent2.getData();
                    }
                }
                this.setResult(n2, intent2);
                this.terminateApplication();
                if (uri2 == null || new File(uri2.getPath()).delete()) return;
                CameraLogger.e("CameraActivity", "Can not delete file : " + uri2.getPath());
                return;
            }
        }
    }

    @Override
    public void onBackPressed() {
        this.terminateApplication();
    }

    public void onCameraReadyToUse() {
        if (!(this.mLaunchConditions.getExtraOperation().equals((Object)LaunchConditions.ExtraOperation.OPEN_SETTINGS_MENU) || this.mGeotagManager == null)) {
            this.mGeotagManager.confirmLocationService(this, this.mCommonSettings, new StartupGeotagSettingListener());
        }
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
        if (this.isOneShot()) {
            this.setResult(0);
        }
        this.finish();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public final void onCreate(Bundle parcelable) {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, true);
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.ON_CREATE, true);
        MeasurePerformance.measureResource("Start onCreate()");
        if (Configurations.isLogForOperatorsEnabled()) {
            CameraLogger.dForOperators("start to launch camera application");
        }
        this.acquirePerformanceLock();
        this.initConfigrations();
        this.initCameraWindow();
        super.onCreate((Bundle)parcelable);
        try {
            HardwareCapability.getInstance().load(this);
        }
        catch (CameraDeviceException var1_2) {
            CameraLogger.w("CameraActivity", "Load HW capability failed.", var1_2);
            this.mLaunchConditions.setDeviceError(true);
            this.mLaunchConditions.setCameraDisabled(CameraDeviceUtil.isCameraDisabled(this));
        }
        this.setupWindow();
        this.checkIntent(this.getIntent());
        this.enableOrientation();
        if (this.createSingletons()) {
            this.setContentView();
        } else {
            this.showErrorExitDialog();
        }
        this.setupSingletons();
        parcelable = new IntentFilter("com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY");
        this.registerReceiver(this.mCameraActivityFinishReceiver, (IntentFilter)parcelable);
        this.mThermalAlertReceiver.onCreate();
        this.setupWearableFramework();
        GoogleAnalyticsUtil.getInstance().onCreate(this);
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.ON_CREATE, false);
    }

    @Override
    public void onDestroy() {
        this.logLifeCycleIn("CameraActivity", BaseActivity.LifeCycleIds.ON_DESTROY);
        this.releaseSingletons();
        this.disableAutoOffTimer();
        this.unregisterReceiver(this.mCameraActivityFinishReceiver);
        this.mThermalAlertReceiver.onDestroy();
        this.releaseWearableFramework();
        super.onDestroy();
        this.logLifeCycleOut("CameraActivity", BaseActivity.LifeCycleIds.ON_DESTROY);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onKeyDown(int n, KeyEvent keyEvent) {
        this.restartAutoOffTimer();
        if (this.isControllerReleased() || this.mControllerManager.onKeyDown(n, keyEvent)) {
            return true;
        }
        return super.onKeyDown(n, keyEvent);
    }

    @Override
    public boolean onKeyMultiple(int n, int n2, KeyEvent keyEvent) {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onKeyUp(int n, KeyEvent keyEvent) {
        this.restartAutoOffTimer();
        if (this.isControllerReleased()) {
            return true;
        }
        KeyEventTranslator.TranslatedKeyCode translatedKeyCode = this.mKeyEventTranslator.translateKeyCode(n);
        if (this.mCameraWindow.isCapturingModeSelectorOpened()) {
            switch (.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[translatedKeyCode.ordinal()]) {
                default: {
                    break;
                }
                case 1: {
                    Executor.sendEvent(ControllerEvent.EV_KEY_BACK, ControllerEventSource.KEY);
                    return true;
                }
                case 2: 
                case 3: 
                case 4: 
                case 5: {
                    Executor.sendEvent(ControllerEvent.EV_KEY_BACK, ControllerEventSource.KEY);
                }
            }
        }
        if (this.mControllerManager.onKeyUp(n, keyEvent)) return true;
        return super.onKeyUp(n, keyEvent);
    }

    @Override
    public void onNewIntent(Intent intent) {
        this.logLifeCycleIn("CameraActivity", BaseActivity.LifeCycleIds.ON_NEW_INTENT);
        if (Configurations.isLogForOperatorsEnabled()) {
            CameraLogger.dForOperators("start to launch camera application");
        }
        this.mDelayedOnResume = false;
        this.setIntent(intent);
        this.checkIntent(intent);
        this.logLifeCycleOut("CameraActivity", BaseActivity.LifeCycleIds.ON_NEW_INTENT);
    }

    @Override
    public void onNotifyThermalNormal() {
        if (this.mCameraWindow != null) {
            this.mCameraWindow.onNotifyThermalNormal();
        }
    }

    @Override
    public void onNotifyThermalWarning() {
        if (this.mCameraWindow != null) {
            this.mCameraWindow.onNotifyThermalWarning();
        }
    }

    @Override
    public void onPause() {
        this.logLifeCycleIn("CameraActivity", BaseActivity.LifeCycleIds.ON_PAUSE);
        CapturingMode capturingMode = CapturingMode.UNKNOWN;
        if (this.mControllerManager != null) {
            capturingMode = this.mControllerManager.getCapturingMode();
        }
        this.updatePreviousCapturingMode(capturingMode);
        this.clearKeepScreenOn();
        if (this.mControllerManager != null) {
            this.mControllerManager.abort();
        }
        this.pauseConfigrations();
        this.pauseSingletons();
        if (this.getGeoTagManager() != null) {
            this.getGeoTagManager().releaseResource();
        }
        this.setAlertDialogIsOpened(false);
        this.mThermalAlertReceiver.onPause();
        this.notifyOnPauseToWearable();
        LocalGoogleAnalyticsUtil.getInstance().sendEventSettings();
        super.onPause();
        this.logLifeCycleOut("CameraActivity", BaseActivity.LifeCycleIds.ON_PAUSE);
    }

    @Override
    public void onReachHighTemperature(boolean bl) {
        GoogleAnalyticsUtil.getInstance().sendThermalEvent(bl, this.isRecording());
        if (this.mCameraWindow != null) {
            this.mCameraWindow.showBlankScreen();
        }
        if (this.mControllerManager != null) {
            this.mControllerManager.onReachHighTemperature();
            if (this.mControllerManager.isControllerReleased() && this.mCameraDevice != null) {
                this.mCameraDevice.close();
            }
        }
    }

    @Override
    public void onRestart() {
        this.logLifeCycleIn("CameraActivity", BaseActivity.LifeCycleIds.ON_RESTART);
        super.onRestart();
        this.logLifeCycleOut("CameraActivity", BaseActivity.LifeCycleIds.ON_RESTART);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onResume() {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, true);
        this.logLifeCycleIn("CameraActivity", BaseActivity.LifeCycleIds.ON_RESUME);
        KeyguardManager keyguardManager = (KeyguardManager)this.getSystemService("keyguard");
        if (!(this.mLaunchConditions.isDeviceError() || this.mCameraDevice.isStartedOpenCameraDeviceTask())) {
            this.enableOrientation();
            if (!keyguardManager.inKeyguardRestrictedInputMode()) {
                this.mCameraDevice.startOpenCameraDeviceTask(this.mLaunchConditions.getLaunchCapturingMode().getCameraId());
            }
        }
        super.onResume();
        this.mThermalAlertReceiver.onResume();
        if (this.mControllerManager != null) {
            this.mControllerManager.storeCapturingMode(this.mLaunchConditions.getLaunchCapturingMode());
        }
        StorageController storageController = this.mStorageController;
        boolean bl = this.mLaunchConditions.isOneShot() && this.getExtraOutput() != null;
        storageController.setOneShotMode(bl);
        if (keyguardManager.inKeyguardRestrictedInputMode() && Settings.Global.getInt(this.getContentResolver(), "device_provisioned", 0) != 0) {
            this.mDelayedOnResume = true;
            this.resumeSettingsRelatedSingletons();
        } else {
            this.mForceSound.resume();
        }
        this.logLifeCycleOut("CameraActivity", BaseActivity.LifeCycleIds.ON_RESUME);
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.ON_RESUME_TO_SURFACE_CHANGED, true);
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RESUME_TO_LAUNCH, true);
    }

    @Override
    public void onStart() {
        this.logLifeCycleIn("CameraActivity", BaseActivity.LifeCycleIds.ON_START);
        super.onStart();
        this.logLifeCycleOut("CameraActivity", BaseActivity.LifeCycleIds.ON_START);
    }

    @Override
    public void onStop() {
        this.logLifeCycleIn("CameraActivity", BaseActivity.LifeCycleIds.ON_STOP);
        super.onStop();
        this.logLifeCycleOut("CameraActivity", BaseActivity.LifeCycleIds.ON_STOP);
    }

    @Override
    public void onWindowFocusChanged(boolean bl) {
        super.onWindowFocusChanged(bl);
        if (bl) {
            this.requestToRestoreNavigationBar();
        }
    }

    @Override
    protected void prepareFinish() {
    }

    protected void requestCheckAutoUploadSetting(AutoUploadSettingNotifyCallback autoUploadSettingNotifyCallback) {
        AutoUploadSettings.getInstance().request(this, autoUploadSettingNotifyCallback);
    }

    @Override
    public void resumeAll() {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void resumeAll(boolean bl) {
        this.mLaunchConditions.setCameraDisabled(CameraDeviceUtil.isCameraDisabled(this));
        if (this.resumeSingletons(bl)) {
            if (this.mControllerManager != null) {
                this.mControllerManager.launch(this.mParameterManager.getParameters());
                this.mStorageManager.resume();
            }
        } else {
            this.showErrorExitDialog();
        }
        this.notifyUnlockToWearable();
        this.enableOrientation();
        this.keepScreenOn();
        this.restartAutoOffTimer();
        FaceIdentificationUtil.notifyCameraLaunch(this);
        this.mDelayedOnResume = false;
        if (!this.isOneShotPhoto()) {
            AudioResourceChecker.checkAudioResourceAndShowErrorDialogIfNecessary(this);
        }
    }

    public void setGeotag(boolean bl) {
        if (bl) {
            this.mGeotagManager.updateLocation(com.sonyericsson.cameracommon.commonsetting.values.Geotag.ON);
            return;
        }
        this.mGeotagManager.updateLocation(com.sonyericsson.cameracommon.commonsetting.values.Geotag.OFF);
    }

    public void setLaunchCapturingMode(CapturingMode capturingMode) {
        this.setLaunchCapturingMode(capturingMode, false, OneShotType.NONE);
    }

    public void setLaunchCapturingMode(CapturingMode capturingMode, boolean bl, OneShotType oneShotType) {
        this.mLaunchConditions.setLaunchCapturingMode(capturingMode);
        this.mLaunchConditions.setIsOneShot(bl);
        this.mLaunchConditions.setOneShotType(oneShotType);
    }

    public void showZoomToast(CapturingMode capturingMode, boolean bl) {
        if (capturingMode.isMainPhoto() && this.isNormalStart() && !this.mConfigurations.isFirstRun() && this.mConfigurations.isNeedToShowZoomHelp()) {
            this.mMessagePopup.showZoomHelpMessage(bl);
            this.mConfigurations.countUpZoomHelpShownTimes();
        }
    }

    @Override
    public void terminateApplication() {
        Intent intent = this.getIntent();
        if (intent.getAction().equals("android.intent.action.MAIN") || intent.getStringExtra("com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE") != null || intent.getStringExtra("com.sonyericsson.camera.intent.extra.CAPTURING_MODE") != null || intent.getBooleanExtra("com.sonyericsson.android.camera.extra.launchedByFastCapturing", false)) {
            if (!this.moveTaskToBack(true)) {
                this.finish();
            }
            return;
        }
        this.finish();
    }

    public void updatePreviousCapturingMode(CapturingMode capturingMode) {
        if (!capturingMode.isFront()) {
            this.mPreviousModeNotFront = capturingMode;
        }
        if (capturingMode.isManual()) {
            this.mPreviousManualMode = capturingMode;
        }
    }

    public void updateSettingDialog() {
        this.mCameraWindow.updateSettingDialog();
    }

    private class AutoUploadSettingNotifyCallback
    implements AutoUploadSettingNotifyListener {
        private AutoUploadSettingNotifyCallback() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onAutoUploadSettingNotified(Context context, String string, AutoUploadSettings.AutoUploadSetting autoUploadSetting) {
            if (autoUploadSetting == AutoUploadSettings.AutoUploadSetting.UNKNOWN || CameraActivity.this.mParameterManager == null) {
                return;
            }
            CameraActivity.this.mParameterManager.updateAutoUpload();
            if (AutoUploadSettings.AutoUploadSetting.ON == autoUploadSetting) {
                CommonParams.getInstance().mAutoUpload.set(AutoUpload.ON);
            } else {
                CommonParams.getInstance().mAutoUpload.set(AutoUpload.OFF);
            }
            CommonParams.getInstance().mAutoUpload.onApplied();
            CameraActivity.this.mCameraWindow.commit();
        }
    }

    private static class CameraActivityFinishBroadcastReceiver
    extends BroadcastReceiver {
        CameraActivity mCameraActivity = null;

        CameraActivityFinishBroadcastReceiver(CameraActivity cameraActivity) {
            this.mCameraActivity = cameraActivity;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            this.mCameraActivity.abort();
        }
    }

    private class StartupGeotagSettingListener
    implements GeotagSettingListener {
        private StartupGeotagSettingListener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onSet(boolean bl) {
            Geotag geotag = bl ? Geotag.ON : Geotag.OFF;
            CameraActivity.this.getParameterManager().set(geotag);
        }
    }

    private class WearableBridgeLifeCycleObserver
    implements ObserveWearableInterface.LifeCycleObserver {
        private WearableBridgeLifeCycleObserver() {
        }

        @Override
        public void onPause() {
        }

        @Override
        public void onResume() {
            if (Executor.canHandleCaptureRequest()) {
                CameraActivity.this.notifyStateIdleToWearable();
                return;
            }
            CameraActivity.this.notifyStateBlockedToWearable();
        }
    }

    private class WearableBridgePhotoEventObserver
    implements ObserveWearableInterface.PhotoEventObserver {
        private WearableBridgePhotoEventObserver() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onPhotoCaptureRequested() {
            if (Executor.canHandleCaptureRequest()) {
                MotionEvent motionEvent = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, 0.0f, 0.0f, 0);
                MotionEvent motionEvent2 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, 0.0f, 0.0f, 0);
                CameraActivity.this.mControllerManager.onCaptureButtonEvent(0, motionEvent);
                CameraActivity.this.mControllerManager.onCaptureButtonEvent(0, motionEvent2);
                motionEvent.recycle();
                motionEvent2.recycle();
                return;
            } else {
                if (CameraActivity.this.getWearableBridge() == null) return;
                {
                    CameraActivity.this.getWearableBridge().getPhotoStateNotifier().onCaptureFailed();
                    return;
                }
            }
        }
    }

    private static class WearableBridgeVideoEventObserver
    implements ObserveWearableInterface.VideoEventObserver {
        private WearableBridgeVideoEventObserver() {
        }

        @Override
        public void onStartVideoRecRequested() {
        }

        @Override
        public void onStopVideoRecRequested() {
        }
    }

}

