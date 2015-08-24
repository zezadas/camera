/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.Camera;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.storage.StorageManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Window;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.CameraButtonIntentReceiver;
import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.LaunchConditions;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler;
import com.sonyericsson.android.camera.fastcapturing.PlatformDependencyResolver;
import com.sonyericsson.android.camera.fastcapturing.StateMachine;
import com.sonyericsson.android.camera.fastcapturing.view.BaseFastViewFinder;
import com.sonyericsson.android.camera.fastcapturing.view.FastViewFinder;
import com.sonyericsson.android.camera.mediasaving.BurstSavingTaskManager;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
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
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.thermal.ThermalAlertReceiver;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.OneShotUtility;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.viewfinder.ViewFinder;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.media.utility.AudioResourceChecker;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentificationUtil;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClient;
import java.io.IOException;

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
    private static String TAG = FastCapturingActivity.class.getSimpleName();
    private static final CameraDeviceHandler sCameraDeviceHandler;
    private static CapturingMode sCurrentCapturingMode;
    private static FastCapture sFastCaptureSetting;
    private static CapturingMode sTargetCapturingMode;
    private CameraDeviceHandler mCameraDeviceHandler;
    boolean mIsInterruptProcessingOccurred = false;
    private boolean mIsLazyInitializationRunning = true;
    private boolean mIsSecurePhotoLaunchedByIntent = false;
    private boolean mIsSetContentView = false;
    protected KeyEventTranslator mKeyEventTranslator;
    private MediaPlayer mMediaPlayer;
    private PostDeviceInitializationTask mPostDeviceInitializationTask = null;
    private Handler mPostEventHandler;
    private ScreenOffReceiver mScreenOffReceiver;
    protected StateMachine mStateMachine;
    private BaseFastViewFinder mViewFinder;
    private WearableBridgeClient mWearableBridgeClient = null;
    private ObserveWearableInterface.LifeCycleObserver mWearableBridgeLifeCycleObserver = null;
    private ObserveWearableInterface.PhotoEventObserver mWearableBridgePhotoEventObserver = null;
    private ObserveWearableInterface.VideoEventObserver mWearableBridgeVideoEventObserver = null;

    static {
        sFastCaptureSetting = null;
        sCurrentCapturingMode = null;
        sTargetCapturingMode = null;
        sCameraDeviceHandler = new CameraDeviceHandler();
    }

    public FastCapturingActivity() {
        CameraLogger.setAppName("SemcCameraUI");
    }

    static /* synthetic */ GeotagManager access$1100(FastCapturingActivity fastCapturingActivity) {
        return fastCapturingActivity.mGeotagManager;
    }

    static /* synthetic */ GeotagManager access$1200(FastCapturingActivity fastCapturingActivity) {
        return fastCapturingActivity.mGeotagManager;
    }

    static /* synthetic */ GeotagManager access$1300(FastCapturingActivity fastCapturingActivity) {
        return fastCapturingActivity.mGeotagManager;
    }

    static /* synthetic */ BaseFastViewFinder access$600(FastCapturingActivity fastCapturingActivity) {
        return fastCapturingActivity.mViewFinder;
    }

    static /* synthetic */ void access$700(FastCapturingActivity fastCapturingActivity) {
        fastCapturingActivity.playStartUpNotificationSoundIfRequired();
    }

    static /* synthetic */ FastCapture access$800() {
        return sFastCaptureSetting;
    }

    static /* synthetic */ FastCapture access$802(FastCapture fastCapture) {
        sFastCaptureSetting = fastCapture;
        return fastCapture;
    }

    private void checkAudioAvailable() {
        if (!(sFastCaptureSetting == null || sFastCaptureSetting != FastCapture.LAUNCH_AND_RECORDING || AudioResourceChecker.isAudioResourceAvailable(this))) {
            this.getMessagePopup().showOk(2131296645, 2131296402, false, 2131296429, null, null);
            sFastCaptureSetting = FastCapture.LAUNCH_ONLY;
        }
    }

    private void checkSecureIntent(Intent intent) {
        this.mIsSecurePhotoLaunchedByIntent = false;
        if (intent != null && "android.media.action.STILL_IMAGE_CAMERA_SECURE".equals(intent.getAction())) {
            this.mIsSecurePhotoLaunchedByIntent = true;
            FastCapturingActivity.requestReloadFastCaptureSetting();
            CameraButtonIntentReceiver.enableStartUpNotificationFlag();
        }
    }

    public static CapturingMode getCurrentCapturingMode() {
        return sCurrentCapturingMode;
    }

    private void getDownAll() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_FINALIZE, new Object[0]);
        this.mStorageManager.removeStorageListener(this.mStateMachine);
        this.mStateMachine = null;
        this.mViewFinder = null;
        this.mPostEventHandler = null;
        this.releaseMediaPlayer();
        this.mStorageManager.release();
        this.mGeotagManager.release();
        this.unregisterReceiver(this.mScreenOffReceiver);
        this.mScreenOffReceiver = null;
        this.mIsSetContentView = false;
        this.mKeyEventTranslator = null;
    }

    protected static FastCapture getFastCaptureSetting() {
        return sFastCaptureSetting;
    }

    protected static CapturingMode getTargetCapturingMode() {
        return sTargetCapturingMode;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void loadDestinationToSave() {
        SaveDestination saveDestination = (SaveDestination)this.getCommonSettings().get(CommonSettingKey.SAVE_DESTINATION);
        DestinationToSave destinationToSave = null;
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$SaveDestination[saveDestination.ordinal()]) {
            case 1: {
                destinationToSave = DestinationToSave.EMMC;
            }
            default: {
                break;
            }
            case 2: {
                destinationToSave = DestinationToSave.SDCARD;
            }
        }
        if (destinationToSave != null) {
            this.mStorageManager.setCurrentStorage(destinationToSave.getType());
        }
    }

    private static void logPerformance(String string) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + string + "]");
    }

    private void notifyActivityState(String string) {
        Intent intent = new Intent("android.intent.action.CAMERA_BUTTON", null);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 27));
        intent.putExtra("android.intent.extra.SUBJECT", string);
        intent.putExtra("com.sonymobile.android.camera.extra.IS_INTERRUPT_PROCESSING_OCCURRED", this.mIsInterruptProcessingOccurred);
        intent.addFlags(268435456);
        intent.setPackage(this.getPackageName());
        this.sendOrderedBroadcast(intent, null);
    }

    private void playStartUpNotificationSoundIfRequired() {
        FastCapture fastCapture = (FastCapture)this.getCommonSettings().get(CommonSettingKey.FAST_CAPTURE);
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture[fastCapture.ordinal()]) {
            default: {
                CameraButtonIntentReceiver.releaseStartUpNotificationFlag();
                return;
            }
            case 2: 
            case 5: 
        }
        CameraButtonIntentReceiver.notifyStartUpIfRequired(this);
    }

    private void postViewRelatedLazyInitializationTaskExecute() {
        if (sFastCaptureSetting == null) {
            this.loadFastCapturingLaunchSetting();
        }
        if (sFastCaptureSetting == null) {
            sFastCaptureSetting = FastCapture.LAUNCH_ONLY;
        }
        this.mPostDeviceInitializationTask = new PostDeviceInitializationTask(this);
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture[sFastCaptureSetting.ordinal()]) {
            default: {
                this.postDelayedEvent(this.mPostDeviceInitializationTask, 100);
                return;
            }
            case 2: 
        }
        this.postEvent(this.mPostDeviceInitializationTask);
    }

    private void releaseMediaPlayer() {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
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

    public static void requestReloadFastCaptureSetting() {
        sFastCaptureSetting = null;
        sCurrentCapturingMode = null;
        sTargetCapturingMode = null;
    }

    private void requestToRestoreNavigationBar() {
        if (this.mViewFinder != null) {
            this.mViewFinder.sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent.EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY, new Object[0]);
        }
    }

    protected static void setCurrentCapturingMode(CapturingMode capturingMode) {
        sCurrentCapturingMode = capturingMode;
    }

    protected static void setFastCaptureSetting(FastCapture fastCapture) {
        sFastCaptureSetting = fastCapture;
    }

    protected static void setTargetCapturingMode(CapturingMode capturingMode) {
        sTargetCapturingMode = capturingMode;
    }

    private void setUpAll() {
        this.setupCoreInstance();
        this.mStorageController = new StorageAutoSwitchController((StorageAutoSwitchController.StorageAutoSwitchListener)this.mViewFinder, (ViewFinderInterface)this.mViewFinder);
        this.mMessagePopup.setStorageDialogStateListener((StorageController.StorageDialogStateListener)((ViewFinder)this.mViewFinder));
        this.mStorageController.setMessegePopup(this.mMessagePopup);
        this.mStorageManager = new CameraStorageManager(this, this.mStorageController);
        DestinationToSave.setMountPoint(this, StorageUtil.getMountedPaths(this));
        this.mStorageController.setStorage(StorageUtil.getPathFromType(StorageManager.StorageType.EXTERNAL_CARD, this), 0);
        this.mStorageController.setStorage(StorageUtil.getPathFromType(StorageManager.StorageType.INTERNAL, this), 1);
        if (!(this.getResources().getConfiguration().orientation != 2 || this.mIsSetContentView)) {
            this.mViewFinder.setContentView();
            this.mIsSetContentView = true;
        }
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_INITIALIZE, new Object[0]);
        this.mSavingTaskManager = new BurstSavingTaskManager(this);
        this.mGeotagManager = new GeotagManager(this);
        this.mPostEventHandler = new Handler();
        this.mMediaPlayer = new MediaPlayer();
        this.mStorageManager.addStorageListener(this.mStateMachine);
        this.mScreenOffReceiver = new ScreenOffReceiver(this);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        this.registerReceiver(this.mScreenOffReceiver, intentFilter);
        this.mKeyEventTranslator = new KeyEventTranslator(this.getCommonSettings());
    }

    private void setupCoreInstance() {
        this.mStateMachine = new StateMachine(this);
        this.mViewFinder = this.createViewFinder(this);
        this.mStateMachine.setCameraDeviceHandler(this.getCameraDevice());
        this.mStateMachine.setViewFinder(this.mViewFinder);
        this.mViewFinder.setStateMachine(this.mStateMachine);
        this.mViewFinder.setCameraDevice(this.getCameraDevice());
    }

    private void setupWearableFramework() {
        this.mWearableBridgeLifeCycleObserver = new WearableBridgeLifeCycleObserver();
        this.mWearableBridgePhotoEventObserver = new WearableBridgePhotoEventObserver();
        this.mWearableBridgeVideoEventObserver = new WearableBridgeVideoEventObserver();
        this.mWearableBridgeClient = new WearableBridgeClient(this, new Handler(), this.mWearableBridgeLifeCycleObserver, this.mWearableBridgePhotoEventObserver, this.mWearableBridgeVideoEventObserver);
    }

    public static CameraDeviceHandler staticCameraDevice() {
        return sCameraDeviceHandler;
    }

    @Override
    public void abort() {
        this.abort(true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void abort(boolean bl) {
        if (this.mStateMachine == null) return;
        if (this.mStateMachine.canApplicationBeFinished()) {
            if (bl) {
                if (this.isDeviceInSecurityLock()) {
                    this.finish();
                    return;
                }
                if (this.isOneShotPhotoSecure()) {
                    this.setResult(0);
                    this.finishUrgently();
                    return;
                }
                this.requestSuspend();
                return;
            }
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
            return;
        }
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_BACK, new Object[0]);
    }

    protected void cancelCheckAutoUploadSetting() {
        AutoUploadSettings.getInstance().cancel(this);
    }

    public void cancelDelayedEvent(Runnable runnable) {
        if (this.mPostEventHandler != null) {
            this.mPostEventHandler.removeCallbacks(runnable);
        }
    }

    protected void confirmLocationService() {
        if (FastCapturingActivity.getFastCaptureSetting() == FastCapture.LAUNCH_ONLY) {
            this.mGeotagManager.confirmLocationService(this, this.mCommonSettings, new GeotagSettingListener(){

                @Override
                public void onSet(boolean bl) {
                }
            });
        }
    }

    protected BaseFastViewFinder createViewFinder(FastCapturingActivity fastCapturingActivity) {
        return new FastViewFinder(fastCapturingActivity);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void finishSecureOneShot(StoreDataResult storeDataResult) {
        if (storeDataResult.isSuccess()) {
            this.setResult(-1, OneShotUtility.createResultIntent(this, storeDataResult.uri, storeDataResult.savingRequest.common.mimeType, storeDataResult.savingRequest.common.orientation));
        } else {
            this.setResult(0);
        }
        this.finish();
    }

    public CameraDeviceHandler getCameraDevice() {
        return sCameraDeviceHandler;
    }

    public FastCapture getCurrentLaunchMode() {
        return sFastCaptureSetting;
    }

    @Override
    protected ParamSharedPrefWrapper getParamSharedPrefWrapper() {
        return new ParamSharedPrefWrapper(this, "com.sonyericsson.android.camera.shared_preferences", "0.0.0");
    }

    public WearableBridgeClient getWearableBridge() {
        if (this.isOneShotPhotoSecure()) {
            return null;
        }
        return this.mWearableBridgeClient;
    }

    @Override
    public boolean isDeviceInSecurityLock() {
        boolean bl = false;
        Object object = this.getIntent().getExtras();
        boolean bl2 = bl;
        if (object != null) {
            object = object.getString("android.intent.extra.SUBJECT");
            boolean bl3 = ((KeyguardManager)this.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
            bl2 = bl;
            if ("start-secure".equals(object)) {
                bl2 = bl;
                if (bl3) {
                    bl2 = true;
                }
            }
        }
        return bl2;
    }

    public boolean isDirectCaptureWithStartUpEnabled() {
        switch (sFastCaptureSetting) {
            default: {
                return false;
            }
            case LAUNCH_AND_CAPTURE: 
        }
        return true;
    }

    @Override
    public boolean isDualStorageAvailable() {
        return true;
    }

    public boolean isLazyInitializationRunning() {
        return this.mIsLazyInitializationRunning;
    }

    @Override
    public boolean isMenuAvailable() {
        return this.mStateMachine.isMenuAvailable();
    }

    public boolean isRecording() {
        if (this.mStateMachine != null) {
            return this.mStateMachine.isRecording();
        }
        return false;
    }

    public boolean isSecurePhotoLaunchedByIntent() {
        return this.mIsSecurePhotoLaunchedByIntent;
    }

    protected boolean isVideoSupported() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void loadFastCapturingLaunchSetting() {
        if (this.isOneShotPhotoSecure()) {
            FastCapturingActivity.setFastCaptureSetting(FastCapture.LAUNCH_ONLY);
        } else if (FastCapturingActivity.getFastCaptureSetting() == null) {
            FastCapturingActivity.setFastCaptureSetting((FastCapture)this.getCommonSettings().get(CommonSettingKey.FAST_CAPTURE));
        }
        if (FastCapturingActivity.getCurrentCapturingMode() != null) {
            this.mStateMachine.setCurrentCapturingMode(FastCapturingActivity.getCurrentCapturingMode());
        }
        if (FastCapturingActivity.getTargetCapturingMode() != null) {
            this.mStateMachine.setTargetCapturingMode(FastCapturingActivity.getTargetCapturingMode());
        }
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

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        new Handler().postDelayed(new ClearDismissKeyguardFlagTask(this, 1), 0);
    }

    public void onCameraReadyToUse() {
        if (this.mGeotagManager != null) {
            this.confirmLocationService();
            this.mGeotagManager.updateLocation(this.mCommonSettings.get(CommonSettingKey.GEO_TAG));
        }
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
        this.finish();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!(configuration.orientation != 2 || this.mViewFinder == null || this.mIsSetContentView)) {
            this.mViewFinder.setContentView();
            this.mIsSetContentView = true;
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, true);
        this.logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_CREATE);
        super.onCreate(null);
        this.checkSecureIntent(this.getIntent());
        this.mThermalAlertReceiver.onCreate();
        this.setupWearableFramework();
        this.setUpAll();
        this.mLaunchConditions.setLaunchedBy(BaseActivity.LaunchedBy.INTENT);
        this.logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_CREATE);
    }

    @Override
    public void onDestroy() {
        this.logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_DESTROY);
        super.onDestroy();
        this.getDownAll();
        this.mThermalAlertReceiver.onDestroy();
        this.releaseWearableFramework();
        this.logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_DESTROY);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onKeyDown(int n, KeyEvent object) {
        KeyEventTranslator.TranslatedKeyCode translatedKeyCode = this.mKeyEventTranslator.translateKeyCodeOnDown(n);
        if (object.getRepeatCount() > 0 && translatedKeyCode != KeyEventTranslator.TranslatedKeyCode.VOLUME) {
            return true;
        }
        if (this.isFinishing()) return true;
        this.restartAutoOffTimer();
        switch (.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[translatedKeyCode.ordinal()]) {
            case 7: 
            case 8: 
            case 9: {
                return true;
            }
            default: {
                return super.onKeyDown(n, (KeyEvent)object);
            }
            case 1: {
                object = n == 24 ? StateMachine.TransitterEvent.EVENT_KEY_ZOOM_IN_DOWN : StateMachine.TransitterEvent.EVENT_KEY_ZOOM_OUT_DOWN;
                this.mStateMachine.sendEvent((StateMachine.TransitterEvent)object, new Object[0]);
                return true;
            }
            case 2: {
                if (this.mStateMachine.isInModeLessRecording()) return true;
                return false;
            }
            case 3: {
                if (this.mStateMachine.isDialogOpened()) {
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
                }
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_FOCUS_DOWN, new Object[0]);
                return true;
            }
            case 4: {
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_CAPTURE_DOWN, new Object[0]);
                return true;
            }
            case 5: 
            case 6: {
                if (this.mStateMachine.isDialogOpened()) {
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
                }
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_FOCUS_DOWN, new Object[0]);
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_CAPTURE_DOWN, new Object[0]);
                return true;
            }
            case 10: 
        }
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_FOCUS_DOWN, new Object[0]);
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_CAPTURE_DOWN, new Object[0]);
        return true;
    }

    /*
     * Exception decompiling
     */
    @Override
    public boolean onKeyUp(int var1_1, KeyEvent var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[CASE]], but top level block is 3[SWITCH]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
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

    @Override
    protected void onNewIntent(Intent intent) {
        this.mLaunchConditions.setLaunchedBy(BaseActivity.LaunchedBy.INTENT);
        this.checkSecureIntent(intent);
    }

    @Override
    public void onNotifyThermalNormal() {
        if (this.mStateMachine != null) {
            this.mStateMachine.onNotifyThermalStatus(false);
        }
    }

    @Override
    public void onNotifyThermalWarning() {
        if (this.mStateMachine != null) {
            this.mStateMachine.onNotifyThermalStatus(true);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onPause() {
        this.logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_PAUSE);
        FastCapturingActivity.setCurrentCapturingMode(this.mStateMachine.getCurrentCapturingMode());
        FastCapturingActivity.setTargetCapturingMode(this.mStateMachine.getTargetCapturingMode());
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
        this.mStateMachine.removeChangeCameraModeTask();
        this.notifyActivityState("activity-paused");
        if (this.mCameraDeviceHandler != null) {
            this.mCameraDeviceHandler.stopFaceIdService();
            this.mCameraDeviceHandler.releaseCameraInstance();
            this.mCameraDeviceHandler.setStateMachine(null);
            this.mCameraDeviceHandler = null;
        } else {
            this.getCameraDevice().releaseCameraInstance();
        }
        this.mStorageManager.pause();
        this.mThermalAlertReceiver.onPause();
        this.mGeotagManager.releaseResource();
        this.cancelCheckAutoUploadSetting();
        this.mLaunchConditions.setLaunchedBy(BaseActivity.LaunchedBy.UNKNOWN);
        if (this.mPostDeviceInitializationTask != null) {
            this.cancelDelayedEvent(this.mPostDeviceInitializationTask);
        }
        this.mPostEventHandler = null;
        this.mStateMachine.releaseContentsViewController();
        if (this.getWearableBridge() != null) {
            this.getWearableBridge().getLifeCycleNotifier().onPause();
        }
        super.onPause();
        this.logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_PAUSE);
    }

    @Override
    public void onReachHighTemperature(boolean bl) {
        if (this.mStateMachine != null) {
            GoogleAnalyticsUtil.getInstance().sendThermalEvent(bl, this.isRecording());
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
            this.mStateMachine.removeChangeCameraModeTask();
            this.mStateMachine.removeStartRecordingTask();
        }
        if (this.mCameraDeviceHandler != null) {
            this.mCameraDeviceHandler.releaseCameraInstance();
            this.mCameraDeviceHandler.setStateMachine(null);
            this.mCameraDeviceHandler = null;
            return;
        }
        this.getCameraDevice().releaseCameraInstance();
    }

    @Override
    public void onRestart() {
        this.logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_RESTART);
        super.onRestart();
        this.logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_RESTART);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onResume() {
        boolean bl = true;
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, true);
        this.logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_RESUME);
        super.onResume();
        if (this.mPostEventHandler == null) {
            this.mPostEventHandler = new Handler();
        }
        if (this.getWearableBridge() != null) {
            this.getWearableBridge().getLifeCycleNotifier().onResume();
        }
        this.mThermalAlertReceiver.onResume();
        this.loadFastCapturingLaunchSetting();
        this.checkAudioAvailable();
        this.loadDestinationToSave();
        this.notifyActivityState("activity-resumed");
        this.mForceSound.resume();
        this.mViewFinder.requestInflate(this.getLayoutInflater());
        StorageController storageController = this.mStorageController;
        if (!(this.mLaunchConditions.isOneShot() && this.getExtraOutput() != null)) {
            bl = false;
        }
        storageController.setOneShotMode(bl);
        this.logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_RESUME);
    }

    @Override
    public void onStart() {
        this.logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_START);
        super.onStart();
        this.logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_START);
    }

    @Override
    public void onStop() {
        this.logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_STOP);
        super.onStop();
        this.mIsInterruptProcessingOccurred = false;
        this.logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_STOP);
    }

    @Override
    protected void onUserLeaveHint() {
        this.mIsInterruptProcessingOccurred = true;
    }

    @Override
    public void onWindowFocusChanged(boolean bl) {
        super.onWindowFocusChanged(bl);
        if (bl) {
            this.requestToRestoreNavigationBar();
            this.mViewFinder.updateGeotagIcon();
        }
    }

    @Override
    public void pauseCameraView() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void playSound(int n) {
        String string;
        if (this.mMediaPlayer == null) {
            return;
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        // MONITORENTER : mediaPlayer
        String string2 = string = null;
        switch (n) {
            default: {
                string2 = string;
                break;
            }
            case 0: {
                string2 = ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_AF_SUCCESS, ShutterSound.SOUND1);
                break;
            }
            case 2: {
                string2 = ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_SELFTIMER_10SEC, ShutterSound.SOUND1);
                break;
            }
            case 3: {
                string2 = ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_SELFTIMER_2SEC, ShutterSound.SOUND1);
                break;
            }
            case 4: {
                string2 = null;
            }
            case 1: 
        }
        if (string2 == null) {
            // MONITOREXIT : mediaPlayer
            return;
        }
        try {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.setDataSource(string2);
            this.mMediaPlayer.setAudioStreamType(7);
            this.mMediaPlayer.setVolume(7.0f, 7.0f);
            this.mMediaPlayer.prepare();
        }
        catch (IOException var2_5) {
            this.mMediaPlayer.reset();
        }
        this.mMediaPlayer.start();
        // MONITOREXIT : mediaPlayer
    }

    public void playSound(SelfTimer selfTimer) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[selfTimer.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.playSound(2);
                return;
            }
            case 2: {
                this.playSound(3);
                return;
            }
            case 3: 
        }
        this.playSound(4);
    }

    public void postDelayedEvent(Runnable runnable, long l) {
        if (this.mPostEventHandler != null) {
            this.mPostEventHandler.postDelayed(runnable, l);
        }
    }

    public void postEvent(Runnable runnable) {
        if (this.mPostEventHandler != null) {
            this.mPostEventHandler.post(runnable);
        }
    }

    public void prepareCameraDeviceHandler(Context context, FastCapture fastCapture, int n) {
        switch (this.getCameraDevice().getCameraDeviceStatus()) {
            default: {
                return;
            }
            case 0: 
        }
        this.getCameraDevice().startCameraOpen(context, n, fastCapture, this.isOneShotPhotoSecure());
    }

    @Override
    protected void prepareFinish() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
    }

    protected void requestCheckAutoUploadSetting() {
        AutoUploadSettings.getInstance().request(this, new AutoUploadSettingCheckCallback());
    }

    public void requestFinishCameraActivity() {
        this.sendBroadcast(new Intent("com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"));
    }

    public void requestLaunchAdvancedCameraApplication() {
        if (this.mStateMachine.canApplicationBeFinished()) {
            CapturingMode capturingMode;
            CapturingMode capturingMode2 = capturingMode = this.mStateMachine.getCurrentCapturingMode();
            if (capturingMode.isFront()) {
                capturingMode2 = capturingMode;
                if (PlatformDependencyResolver.isSceneRecognitionSupported(this.mCameraDeviceHandler.getLatestCachedParameters())) {
                    capturingMode2 = CapturingMode.SUPERIOR_FRONT;
                }
            }
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
            this.mPostEventHandler.post(new RequestLaunchAdvancedCameraTask(capturingMode2));
        }
    }

    public void requestPostLazyInitializationTaskExecute() {
        this.postViewRelatedLazyInitializationTaskExecute();
    }

    public void requestSuspend() {
        if (!this.moveTaskToBack(true)) {
            this.finish();
        }
    }

    @Override
    public void resumeAll() {
        if (sFastCaptureSetting == FastCapture.OFF) {
            if (this.isSecurePhotoLaunchedByIntent()) {
                this.updateLaunchMode(FastCapture.LAUNCH_ONLY);
            }
        } else {
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_RESUME, sFastCaptureSetting);
            this.prepareCameraDeviceHandler(this, sFastCaptureSetting, this.mStateMachine.getTargetCameraId());
            this.mCameraDeviceHandler = this.getCameraDevice();
            this.mCameraDeviceHandler.initialize();
            this.mCameraDeviceHandler.setStateMachine(this.mStateMachine);
            this.mCameraDeviceHandler.setErrorCallback(new CameraErrorCallbackImpl());
            if (this.mCameraDeviceHandler.isCameraDisabled()) {
                this.showCameraNotAvailableError();
            }
            this.enableOrientation();
            this.requestCheckAutoUploadSetting();
            this.mSavingTaskManager.onResume();
            return;
        }
        CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] sFastCaptureSetting : FastCapture.OFF ");
        this.showCameraNotAvailableError();
    }

    @Override
    public void resumeAll(boolean bl) {
        this.resumeAll();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setDestinationToSave(DestinationToSave destinationToSave) {
        this.mStorageManager.setCurrentStorage(destinationToSave.getType());
        this.mStorageManager.requestCheckAll();
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$DestinationToSave[destinationToSave.ordinal()]) {
            case 1: {
                this.getCommonSettings().set(SaveDestination.EMMC);
            }
            default: {
                break;
            }
            case 2: {
                this.getCommonSettings().set(SaveDestination.SDCARD);
            }
        }
        this.getCommonSettings().setSelectability(CommonSettingKey.SAVE_DESTINATION, this.getStorageManager().isToggledStorageReady());
    }

    @Override
    public boolean shouldAddOnlyNewContent() {
        return this.mIsSecurePhotoLaunchedByIntent;
    }

    public void showCameraNotAvailableError() {
        this.showCameraNotAvailableError(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void showCameraNotAvailableError(boolean bl) {
        boolean bl2 = this.mCameraDeviceHandler != null && this.mCameraDeviceHandler.isCameraDisabled();
        this.getMessagePopup().showCameraNotAvailableError(bl2, bl);
    }

    @Override
    public boolean startAutoOffTimer() {
        return this.startAutoOffTimer(30000);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void stopPlayingSound() {
        if (this.mMediaPlayer == null) {
            return;
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        synchronized (mediaPlayer) {
            if (this.mMediaPlayer.isPlaying()) {
                this.mMediaPlayer.stop();
                this.mMediaPlayer.reset();
            }
            return;
        }
    }

    @Override
    public void terminateApplication() {
        this.finish();
    }

    public void updateLaunchMode(FastCapture fastCapture) {
        sFastCaptureSetting = fastCapture;
    }

    private static class AutoUploadSettingCheckCallback
    implements AutoUploadSettingNotifyListener {
        private AutoUploadSettingCheckCallback() {
        }

        @Override
        public void onAutoUploadSettingNotified(Context context, String string, AutoUploadSettings.AutoUploadSetting autoUploadSetting) {
            if (autoUploadSetting == AutoUploadSettings.AutoUploadSetting.UNKNOWN) {
                // empty if block
            }
        }
    }

    private class CameraErrorCallbackImpl
    implements Camera.ErrorCallback {
        private CameraErrorCallbackImpl() {
        }

        @Override
        public void onError(int n, Camera camera) {
            if (FastCapturingActivity.this.mCameraDeviceHandler != null) {
                FastCapturingActivity.this.mCameraDeviceHandler.onError();
            }
            CameraLogger.e(TAG, "Camera error occurred. Error code = " + n);
            if (FastCapturingActivity.this.getMessagePopup() != null) {
                FastCapturingActivity.this.getMessagePopup().showErrorUncancelable(2131296368, 2131296402, false);
            }
        }
    }

    private static class ClearDismissKeyguardFlagTask
    implements Runnable {
        private final Activity mActivity;
        private final int mCalledCount;

        private ClearDismissKeyguardFlagTask(Activity activity, int n) {
            this.mActivity = activity;
            this.mCalledCount = n;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void run() {
            Object object = (KeyguardManager)this.mActivity.getSystemService("keyguard");
            if (object == null || object.isKeyguardSecure()) return;
            {
                if (object.isKeyguardLocked() && this.mCalledCount < 10) {
                    new Handler().postDelayed(new ClearDismissKeyguardFlagTask(this.mActivity, this.mCalledCount + 1), 500);
                    return;
                } else {
                    object = this.mActivity.getWindow();
                    if (object == null) return;
                    {
                        object.clearFlags(4194304);
                        return;
                    }
                }
            }
        }
    }

    class LazyInitializationTask
    implements Runnable {
        private final FastCapturingActivity mActivity;

        LazyInitializationTask(FastCapturingActivity fastCapturingActivity2) {
            this.mActivity = fastCapturingActivity2;
        }

        private void retry() {
            if (FastCapturingActivity.this.mPostEventHandler != null) {
                FastCapturingActivity.this.postDelayedEvent(new LazyInitializationTask(this.mActivity), 200);
            }
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            if (!(FastCapturingActivity.this.mStateMachine != null && FastCapturingActivity.access$500(FastCapturingActivity.this) != null && FastCapturingActivity.access$600(FastCapturingActivity.this) != null && FastCapturingActivity.access$600(FastCapturingActivity.this).isHeadUpDesplayReady())) {
                this.retry();
                return;
            }
            if (!FastCapturingActivity.this.mStateMachine.canCurrentStateHandleAsynchronizedTask()) {
                this.retry();
                return;
            }
            FastCapturingActivity.this.requestFinishCameraActivity();
            FaceIdentificationUtil.notifyCameraLaunch(FastCapturingActivity.this);
            FastCapturingActivity.access$500(FastCapturingActivity.this).startFaceIdService(this.mActivity);
            FastCapturingActivity.access$700(FastCapturingActivity.this);
            FastCapturingActivity.this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_LAZY_INITIALIZATION_TASK_RUN, new Object[0]);
            if (FastCapturingActivity.access$800() == null) {
                FastCapturingActivity.this.loadFastCapturingLaunchSetting();
            }
            if (FastCapturingActivity.access$800() == null) {
                FastCapturingActivity.access$802(FastCapture.LAUNCH_ONLY);
            }
            switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture[FastCapturingActivity.access$800().ordinal()]) {
                case 1: 
                case 2: 
                case 3: {
                    FastCapturingActivity.this.updateLaunchMode(FastCapture.LAUNCH_ONLY);
                    if (FastCapturingActivity.access$500(FastCapturingActivity.this).getLatestCachedParameters() != null && !FastCapturingActivity.access$500(FastCapturingActivity.this).isCameraFront() && FastCapturingActivity.this.isVideoSupported()) {
                        AudioResourceChecker.checkAudioResourceAndShowErrorDialogIfNecessary(FastCapturingActivity.this);
                    }
                }
                default: {
                    ** GOTO lbl26
                }
                case 4: 
            }
            FastCapturingActivity.access$500(FastCapturingActivity.this).setPhotoHdrSettings(Hdr.HDR_AUTO);
            FastCapturingActivity.this.updateLaunchMode(FastCapture.LAUNCH_ONLY);
lbl26: // 2 sources:
            FastCapturingActivity.access$902(FastCapturingActivity.this, false);
        }
    }

    public static enum ModeName {
        FAST_CAPTURING_CAMERA,
        FAST_CAPTURING_VIDEO;
        

        private ModeName() {
        }
    }

    class PostDeviceInitializationTask
    implements Runnable {
        private final FastCapturingActivity mActivity;

        PostDeviceInitializationTask(FastCapturingActivity fastCapturingActivity2) {
            this.mActivity = fastCapturingActivity2;
            FastCapturingActivity.this.mIsLazyInitializationRunning = true;
        }

        private void applySettingsForFastVideo() {
            FastCapturingActivity.this.mCameraDeviceHandler.prepareAdditionalFeatures(2, FastCapturingActivity.this);
        }

        private void retry() {
            if (FastCapturingActivity.this.mPostEventHandler != null) {
                FastCapturingActivity.this.postDelayedEvent(new PostDeviceInitializationTask(this.mActivity), 100);
                return;
            }
            FastCapturingActivity.this.updateLaunchMode(FastCapture.LAUNCH_ONLY);
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            if (FastCapturingActivity.this.mStateMachine == null || FastCapturingActivity.access$500(FastCapturingActivity.this) == null || FastCapturingActivity.access$600(FastCapturingActivity.this) == null || FastCapturingActivity.access$800() == null) {
                this.retry();
                return;
            }
            if (FastCapturingActivity.access$500(FastCapturingActivity.this).isPreScanOnGoing() || FastCapturingActivity.access$500(FastCapturingActivity.this).isPreCaptureOnGoing()) {
                this.retry();
                return;
            }
            var1_1 = FastCapturingActivity.access$500(FastCapturingActivity.this).getLatestCachedParameters();
            if (!FastCapturingActivity.this.mStateMachine.canCurrentStateHandleAsynchronizedTask()) {
                this.retry();
                return;
            }
            switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture[FastCapturingActivity.access$800().ordinal()]) {
                case 1: 
                case 2: 
                case 3: {
                    FastCapturingActivity.access$500(FastCapturingActivity.this).prepareAdditionalFeatures(1, FastCapturingActivity.this);
                    if (var1_1 != null) {
                        if (PlatformDependencyResolver.isFlashLightSupported(var1_1)) {
                            FastCapturingActivity.access$500(FastCapturingActivity.this).applyCameraLightSetting(1);
                        } else if (PlatformDependencyResolver.isPhotoLightSupported(var1_1)) {
                            // empty if block
                        }
                        FastCapturingActivity.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[0]);
                    }
                }
                default: {
                    ** GOTO lbl29
                }
                case 4: 
            }
            if (var1_1 != null && PlatformDependencyResolver.isFlashLightSupported(var1_1)) {
                FastCapturingActivity.access$500(FastCapturingActivity.this).applyCameraLightSetting(1);
            }
            FastCapturingActivity.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[0]);
            if (var1_1 != null) {
                this.applySettingsForFastVideo();
            }
lbl29: // 4 sources:
            if (FastCapturingActivity.access$1100(FastCapturingActivity.this) != null) {
                FastCapturingActivity.access$1200(FastCapturingActivity.this).setLocationAcquiredListener((LocationAcquiredListener)FastCapturingActivity.access$600(FastCapturingActivity.this));
                FastCapturingActivity.access$1300(FastCapturingActivity.this).notifyStatus();
            }
            FastCapturingActivity.this.postEvent(new LazyInitializationTask(this.mActivity));
        }
    }

    class RequestLaunchAdvancedCameraTask
    implements Runnable {
        private static final String TAG = "RequestLaunchAdvancedCameraTask";
        private final CapturingMode mCurrentMode;

        public RequestLaunchAdvancedCameraTask(CapturingMode capturingMode) {
            this.mCurrentMode = capturingMode;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            FastCapturingActivity.this.abort(false);
            Intent intent = new Intent();
            intent.setClass(FastCapturingActivity.this.getApplicationContext(), CameraActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen", true);
            intent.putExtra("com.sonyericsson.android.camera.extra.launchedByFastCapturing", true);
            if (this.mCurrentMode.isFront()) {
                intent.setAction("com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA");
            } else {
                intent.setAction(CapturingMode.SCENE_RECOGNITION.getValue());
            }
            if (CommonUtility.isActivityAvailable(FastCapturingActivity.this.getApplicationContext(), intent)) {
                try {
                    FastCapturingActivity.this.startActivity(intent);
                    FastCapturingActivity.this.overridePendingTransition(0, 0);
                }
                catch (ActivityNotFoundException var1_2) {}
            }
            FastCapturingActivity.this.requestSuspend();
        }
    }

    static class ScreenOffReceiver
    extends BroadcastReceiver {
        private static final String TAG = "ScreenOffReceiver";
        private FastCapturingActivity mActivity;

        public ScreenOffReceiver(FastCapturingActivity fastCapturingActivity) {
            this.mActivity = fastCapturingActivity;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                this.mActivity.finish();
            }
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
            if (FastCapturingActivity.this.mStateMachine.canHandleWearableCaptureRequest()) {
                FastCapturingActivity.this.notifyStateIdleToWearable();
                return;
            }
            FastCapturingActivity.this.notifyStateBlockedToWearable();
        }
    }

    private class WearableBridgePhotoEventObserver
    implements ObserveWearableInterface.PhotoEventObserver {
        private WearableBridgePhotoEventObserver() {
        }

        @Override
        public void onPhotoCaptureRequested() {
            if (FastCapturingActivity.this.mStateMachine.canHandleWearableCaptureRequest()) {
                FastCapturingActivity.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_FOCUS_DOWN, new Object[0]);
                FastCapturingActivity.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_CAPTURE_DOWN, new Object[0]);
                FastCapturingActivity.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_FOCUS_UP, new Object[0]);
                FastCapturingActivity.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_CAPTURE_UP, new Object[0]);
                return;
            }
            FastCapturingActivity.this.getWearableBridge().getPhotoStateNotifier().onCaptureFailed();
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

