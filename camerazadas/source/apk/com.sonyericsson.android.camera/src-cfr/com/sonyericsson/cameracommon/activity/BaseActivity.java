/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.view.OrientationEventListener;
import android.view.Window;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.activity.TerminateListener;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.BalloonTipsCounter;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.location.LocationSettingsReader;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.messagepopup.MessagePopupStateListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.settings.AutoReviewSettings;
import com.sonyericsson.cameracommon.thermal.ThermalAlertReceiver;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.utility.ProductConfig;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import java.util.Iterator;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class BaseActivity
extends Activity
implements MessagePopupStateListener,
ThermalAlertReceiver.ThermalAlertReceiverListener,
TerminateListener {
    private static final int AUTO_OFF_TIMER_TIMEOUT_COUNT = 180000;
    public static final String INTENT_SUBJECT_START_SECURE = "start-secure";
    private static final String TAG = "BaseActivity";
    boolean mAddToMediaStore;
    Timer mAutoOffTimer;
    protected AutoReviewSettings mAutoReviewSettings;
    protected CommonSettings mCommonSettings;
    private final BroadcastReceiver mExtendedBroadcastReceiver;
    private Uri mExtraOutput;
    protected GeotagManager mGeotagManager;
    Handler mHandler;
    private boolean mIsAutoOffTimerEnabled = true;
    protected boolean mIsKeyguardAvailable = false;
    private boolean mIsReceiverResistered = false;
    private LayoutOrientation mLastDetectedOrientation = LayoutOrientation.Landscape;
    private int mLastDeterminedOrientationDegree = -1;
    private int mLastOrientationDegree = -1;
    private boolean mLaunchAsOneShot = false;
    private boolean mLaunchAsOneShotPhoto = false;
    private boolean mLaunchAsOneShotPhotoSecure = false;
    private boolean mLaunchAsOneShotVideo = false;
    protected LaunchedBy mLaunchedBy = LaunchedBy.UNKNOWN;
    private Set<LayoutOrientationChangedListener> mLayoutOrientationChangedListenerSet = new CopyOnWriteArraySet<LayoutOrientationChangedListener>();
    private LocationSettingsReader mLocationSettingsReader;
    protected MessagePopup mMessagePopup;
    protected RotatableDialog mNonCancelableErrorDialog;
    private OrientationEventListener mOrientationEventListener;
    protected SavingTaskManager mSavingTaskManager;
    private int mSensorOrientationDegree = -1;
    protected StorageController mStorageController;
    private Set<StorageEventListener> mStorageListenerSet;
    protected CameraStorageManager mStorageManager;
    protected TerminateListener mTerminateListener;
    protected ThermalAlertReceiver mThermalAlertReceiver;

    public BaseActivity() {
        this.mExtendedBroadcastReceiver = new StorageBroadcastReceiver();
        this.mStorageListenerSet = new CopyOnWriteArraySet<StorageEventListener>();
        this.mHandler = new Handler();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void checkOneShot() {
        Object object;
        Intent intent = this.getIntent();
        Object object2 = object = intent.getAction();
        if (object == null) {
            CameraLogger.e("BaseActivity", "setRequestedMode: getAction() == null ");
            intent.setAction("android.intent.action.MAIN");
            object2 = intent.getAction();
        }
        if (object2.equals("android.media.action.IMAGE_CAPTURE")) {
            this.mLaunchAsOneShotPhoto = true;
        } else if (object2.equals("android.media.action.IMAGE_CAPTURE_SECURE")) {
            this.mLaunchAsOneShotPhotoSecure = true;
        } else if (object2.equals("android.media.action.VIDEO_CAPTURE")) {
            this.mLaunchAsOneShotVideo = true;
        }
        if (this.mLaunchAsOneShotPhoto || this.mLaunchAsOneShotPhotoSecure || this.mLaunchAsOneShotVideo) {
            this.mLaunchAsOneShot = true;
        }
        if ((object2 = intent.getExtras()) == null) {
            this.mExtraOutput = null;
            this.mAddToMediaStore = true;
        } else if (this.mLaunchAsOneShot) {
            for (String string : object2.keySet()) {
            }
            this.mExtraOutput = (Uri)object2.getParcelable("output");
            this.mAddToMediaStore = object2.getBoolean("addToMediaStore");
        } else {
            this.mExtraOutput = null;
            this.mAddToMediaStore = true;
        }
        if (this.mExtraOutput != null) {
            // empty if block
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getOrientationDegree(LayoutOrientation layoutOrientation) {
        int n;
        switch (.$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation[layoutOrientation.ordinal()]) {
            default: {
                return -1;
            }
            case 1: 
            case 2: {
                n = 0;
                do {
                    return (n + ProductConfig.getMountAngle(this)) % 360;
                    break;
                } while (true);
            }
            case 3: {
                n = 90;
                return (n + ProductConfig.getMountAngle(this)) % 360;
            }
            case 4: {
                n = 180;
                return (n + ProductConfig.getMountAngle(this)) % 360;
            }
            case 5: 
        }
        n = 270;
        return (n + ProductConfig.getMountAngle(this)) % 360;
    }

    private static boolean in(int n, int n2, int n3) {
        if (n >= n2 && n < n3) {
            return true;
        }
        return false;
    }

    private void muteSound(int n) {
        AudioManager audioManager;
        if (Build.VERSION.SDK_INT < 8 || (audioManager = (AudioManager)this.getSystemService("audio")) == null || audioManager.requestAudioFocus(null, n, 1) == 1) {
            // empty if block
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void notifyLayoutOrientationChanged(LayoutOrientation iterator) {
        if (iterator != this.mLastDetectedOrientation && iterator != LayoutOrientation.Unknown) {
            this.mLastDetectedOrientation = iterator;
            iterator = this.mLayoutOrientationChangedListenerSet.iterator();
            while (iterator.hasNext()) {
                iterator.next().onLayoutOrientationChanged(this.mLastDetectedOrientation);
            }
        }
    }

    private void notifyStorageStatusChanged(String string, Uri uri) {
        for (StorageEventListener storageEventListener : this.mStorageListenerSet) {
            String string2 = uri.getPath();
            if (string.equals("android.intent.action.MEDIA_SCANNER_FINISHED")) {
                storageEventListener.onMediaScanFinished();
                continue;
            }
            if (string2 == null) continue;
            storageEventListener.onStorageCheckRequested(string, string2);
        }
    }

    private void registerIntentFilter(String object, String string) {
        object = new IntentFilter((String)object);
        if (string != null) {
            object.addDataScheme(string);
        }
        this.registerReceiver(this.mExtendedBroadcastReceiver, (IntentFilter)object);
        this.mIsReceiverResistered = true;
    }

    private final void stopAutoOffTimer() {
        synchronized (this) {
            if (this.mAutoOffTimer != null) {
                this.mAutoOffTimer.cancel();
                this.mAutoOffTimer.purge();
                this.mAutoOffTimer = null;
            }
            return;
        }
    }

    private void unmuteSound(int n) {
        AudioManager audioManager;
        if (Build.VERSION.SDK_INT < 8 || (audioManager = (AudioManager)this.getSystemService("audio")) == null || audioManager.abandonAudioFocus(null) == 1) {
            // empty if block
        }
    }

    private void updateBalloonTipsCounter() {
        BalloonTipsCounter balloonTipsCounter = (BalloonTipsCounter)this.mCommonSettings.get(CommonSettingKey.BALLOON_TIPS_COUNTER);
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$BalloonTipsCounter[balloonTipsCounter.ordinal()]) {
            default: {
                this.mCommonSettings.set(BalloonTipsCounter.COUNT_STOP);
            }
            case 4: 
            case 5: 
            case 6: 
            case 7: {
                return;
            }
            case 1: {
                this.mCommonSettings.set(BalloonTipsCounter.FIRST);
                return;
            }
            case 2: {
                this.mCommonSettings.set(BalloonTipsCounter.SECOND);
                return;
            }
            case 3: 
        }
        this.mCommonSettings.set(BalloonTipsCounter.DISPLAY_OK_FIRST);
    }

    protected abstract void abort();

    public void addOrienationListener(LayoutOrientationChangedListener layoutOrientationChangedListener) {
        this.mLayoutOrientationChangedListenerSet.add(layoutOrientationChangedListener);
    }

    public void addStorageListener(StorageEventListener storageEventListener) {
        if (!(this.mStorageListenerSet.contains(storageEventListener) || storageEventListener == null)) {
            this.mStorageListenerSet.add(storageEventListener);
        }
    }

    protected void callOnCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    protected void callOnDestroy() {
        super.onDestroy();
    }

    protected void callOnPause() {
        super.onPause();
    }

    protected void callOnRestart() {
        super.onRestart();
    }

    protected void callOnResume() {
        super.onResume();
    }

    protected void callOnStart() {
        super.onStart();
    }

    protected void callOnStop() {
        super.onStop();
    }

    protected void clearKeepScreenOn() {
        this.getWindow().clearFlags(128);
    }

    protected void createCommonSettings() {
        this.mCommonSettings = new CommonSettings(this.getContentResolver(), this);
    }

    public final void disableAutoOffTimer() {
        this.stopAutoOffTimer();
        this.mIsAutoOffTimerEnabled = false;
    }

    public void disableOrientation() {
        if (this.mOrientationEventListener != null) {
            this.mOrientationEventListener.disable();
            this.mOrientationEventListener = null;
        }
    }

    public final void enableAutoOffTimer() {
        this.mIsAutoOffTimerEnabled = true;
        this.startAutoOffTimer();
    }

    public void enableOrientation() {
        if (this.mOrientationEventListener == null) {
            this.mOrientationEventListener = new ExtendedOrientationEventListener(this);
            this.mOrientationEventListener.enable();
        }
    }

    public AutoReviewSettings getAutoReviewSettings() {
        return this.mAutoReviewSettings;
    }

    public abstract RotatableDialog getCallingDialog();

    public CommonSettings getCommonSettings() {
        return this.mCommonSettings;
    }

    public int getConfigurationOrientation() {
        switch (this.mLastDeterminedOrientationDegree) {
            default: {
                return 2;
            }
            case 1: 
        }
        return 1;
    }

    public Uri getExtraOutput() {
        return this.mExtraOutput;
    }

    public GeotagManager getGeoTagManager() {
        return this.mGeotagManager;
    }

    public LayoutOrientation getLastDetectedOrientation() {
        return this.mLastDetectedOrientation;
    }

    public LaunchedBy getLaunchedBy() {
        return this.mLaunchedBy;
    }

    /*
     * Enabled aggressive block sorting
     */
    public LayoutOrientation getLayoutOrientation() {
        int n;
        int n2 = n = this.mLastOrientationDegree;
        if (n == -1) {
            n2 = this.mLastDeterminedOrientationDegree;
        }
        if (n2 == -1) {
            return LayoutOrientation.Unknown;
        }
        n = (n2 + (360 - ProductConfig.getMountAngle(this))) % 360;
        n2 = this.mLastDetectedOrientation == LayoutOrientation.Portrait || this.mLastDetectedOrientation == LayoutOrientation.ReversePortrait ? 1 : 0;
        n2 = n2 != 0 ? 60 : 30;
        if (BaseActivity.in(n, 90 - n2, n2 + 90)) {
            return LayoutOrientation.Portrait;
        }
        if (BaseActivity.in(n, n2 + 90, 270 - n2)) {
            return LayoutOrientation.ReverseLandscape;
        }
        if (BaseActivity.in(n, 270 - n2, n2 + 270)) {
            return LayoutOrientation.ReversePortrait;
        }
        return LayoutOrientation.Landscape;
    }

    public MessagePopup getMessagePopup() {
        return this.mMessagePopup;
    }

    public int getOrientation() {
        LayoutOrientation layoutOrientation;
        LayoutOrientation layoutOrientation2 = layoutOrientation = this.mLastDetectedOrientation;
        if (layoutOrientation == LayoutOrientation.Unknown) {
            layoutOrientation2 = this.getLayoutOrientation();
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation[layoutOrientation2.ordinal()]) {
            default: {
                return 0;
            }
            case 3: {
                return 1;
            }
            case 2: 
            case 4: 
            case 5: 
        }
        return 2;
    }

    public int getOrientationDegree() {
        if (this.mLastOrientationDegree != -1) {
            return this.mLastOrientationDegree;
        }
        if (this.mLastDeterminedOrientationDegree != -1) {
            return this.mLastDeterminedOrientationDegree;
        }
        return 270;
    }

    protected abstract ParamSharedPrefWrapper getParamSharedPrefWrapper();

    public SavingTaskManager getSavingTaskManager() {
        return this.mSavingTaskManager;
    }

    public int getSensorOrientationDegree() {
        return this.mSensorOrientationDegree;
    }

    public StorageController getStorageController() {
        return this.mStorageController;
    }

    public CameraStorageManager getStorageManager() {
        return this.mStorageManager;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean hasExtraOutputPath() {
        if (this.mExtraOutput == null || StorageUtil.getPathFromUri(this, this.mExtraOutput) == null) {
            return false;
        }
        return true;
    }

    protected void initializeGoogleAnalytics() {
        GoogleAnalyticsUtil.getInstance().onCreate(this);
    }

    public abstract boolean isAlertDialogOpened();

    public boolean isAlreadyHighTemperature() {
        return this.mThermalAlertReceiver.isAlreadyHighTemperature();
    }

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

    public abstract boolean isDualStorageAvailable();

    public boolean isGpsLocationAllowed() {
        return this.mLocationSettingsReader.getIsGpsLocationAllowed();
    }

    @SuppressLint(value={"NewApi"})
    public boolean isInLockTaskMode() {
        if (21 <= Build.VERSION.SDK_INT) {
            return ((ActivityManager)this.getSystemService("activity")).isInLockTaskMode();
        }
        return false;
    }

    public abstract boolean isMenuAvailable();

    public boolean isNetworkLocationAllowed() {
        return this.mLocationSettingsReader.getIsNetworkLocationAllowed();
    }

    public boolean isOneShot() {
        return this.mLaunchAsOneShot;
    }

    public boolean isOneShotPhoto() {
        return this.mLaunchAsOneShotPhoto;
    }

    public boolean isOneShotPhotoSecure() {
        return this.mLaunchAsOneShotPhotoSecure;
    }

    public boolean isOneShotVideo() {
        return this.mLaunchAsOneShotVideo;
    }

    public boolean isThermalWarningState() {
        return this.mThermalAlertReceiver.isWarningState();
    }

    protected void keepScreenOn() {
        this.getWindow().addFlags(128);
    }

    public void logLifeCycleIn(String string, LifeCycleIds lifeCycleIds) {
        MeasurePerformance.measureTime(lifeCycleIds.mPerformanceIds, true);
        MeasurePerformance.measureResource("Start " + (Object)lifeCycleIds);
        if (lifeCycleIds == LifeCycleIds.ON_CREATE || lifeCycleIds == LifeCycleIds.ON_DESTROY) {
            // empty if block
        }
    }

    public void logLifeCycleOut(String string, LifeCycleIds lifeCycleIds) {
        MeasurePerformance.measureResource("End " + (Object)lifeCycleIds);
        MeasurePerformance.measureTime(lifeCycleIds.mPerformanceIds, false);
        if (lifeCycleIds == LifeCycleIds.ON_PAUSE) {
            MeasurePerformance.outResult();
        }
    }

    @Override
    public void msgPopupCanceled() {
    }

    @Override
    public void msgPopupOpened() {
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT <= 19) {
            this.setTheme(R.style.SomcCameraHoloTheme);
        }
        this.checkOneShot();
        this.mLaunchedBy = LaunchedBy.INTENT;
        this.mMessagePopup = new MessagePopup(this, this);
        this.mMessagePopup.setMessagePopupStateListener(this);
        this.addOrienationListener(this.mMessagePopup);
        this.mThermalAlertReceiver = new ThermalAlertReceiver(this, this.mMessagePopup, this, this.getParamSharedPrefWrapper());
        this.mAutoReviewSettings = new AutoReviewSettings();
        this.createCommonSettings();
        this.mLocationSettingsReader = new LocationSettingsReader();
        this.initializeGoogleAnalytics();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.mStorageListenerSet.clear();
        this.removeOrienationListener(this.mMessagePopup);
        this.mMessagePopup.releaseContext();
        this.mMessagePopup = null;
        this.mLayoutOrientationChangedListenerSet.clear();
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (this.mIsReceiverResistered) {
            this.unregisterReceiver(this.mExtendedBroadcastReceiver);
            this.mIsReceiverResistered = false;
        }
        this.disableAutoOffTimer();
        this.unmuteSound(3);
        this.mCommonSettings.suspend();
        this.mMessagePopup.release();
        this.disableOrientation();
        this.removeStorageListener(this.mStorageManager);
        GoogleAnalyticsUtil.getInstance().onPause(false);
    }

    @Override
    protected void onResume() {
        this.registerIntentFilter("android.intent.action.MEDIA_MOUNTED", "file");
        this.registerIntentFilter("android.intent.action.MEDIA_UNMOUNTED", "file");
        this.registerIntentFilter("android.intent.action.MEDIA_EJECT", "file");
        this.registerIntentFilter("android.intent.action.MEDIA_SCANNER_FINISHED", "file");
        super.onResume();
        this.getWindow().clearFlags(2048);
        this.getWindow().addFlags(1024);
        this.mCommonSettings.load();
        this.updateBalloonTipsCounter();
        this.mLocationSettingsReader.readLocationSettings(this);
        this.enableAutoOffTimer();
        this.mSensorOrientationDegree = this.getOrientationDegree(LayoutOrientation.Unknown);
        this.addStorageListener(this.mStorageManager);
        GoogleAnalyticsUtil.getInstance().onResume();
    }

    @Override
    public boolean onSearchRequested() {
        return false;
    }

    @Override
    protected void onStop() {
        super.onStop();
    }

    public void pauseAudioPlayback() {
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        this.sendBroadcast(intent);
        this.muteSound(3);
    }

    public void readLocationSettings() {
        this.mLocationSettingsReader.readLocationSettings(this);
    }

    public void removeOrienationListener(LayoutOrientationChangedListener layoutOrientationChangedListener) {
        this.mLayoutOrientationChangedListenerSet.remove(layoutOrientationChangedListener);
    }

    public void removeStorageListener(StorageEventListener storageEventListener) {
        if (this.mStorageListenerSet.contains(storageEventListener)) {
            this.mStorageListenerSet.remove(storageEventListener);
        }
    }

    public final void restartAutoOffTimer() {
        synchronized (this) {
            this.stopAutoOffTimer();
            this.startAutoOffTimer();
            return;
        }
    }

    protected abstract void resumeAll();

    public abstract void setAlertDialogIsOpened(boolean var1);

    public boolean shouldAddOnlyNewContent() {
        return false;
    }

    public boolean shouldAddToMediaStore() {
        return this.mAddToMediaStore;
    }

    protected boolean startAutoOffTimer() {
        return this.startAutoOffTimer(180000);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected final boolean startAutoOffTimer(int n) {
        boolean bl = false;
        synchronized (this) {
            block4 : {
                boolean bl2 = this.mIsAutoOffTimerEnabled;
                if (bl2) break block4;
                return bl;
            }
            if (this.mAutoOffTimer != null) return bl;
            this.mAutoOffTimer = new Timer(true);
            this.mAutoOffTimer.schedule((TimerTask)new AutoOffTimerTask(), n);
            return true;
        }
    }

    public boolean updateRemain() {
        MeasurePerformance.measureTimeOverwrite(MeasurePerformance.PerformanceIds.UPDATE_REMAIN, true);
        long l = this.mSavingTaskManager.getExpectedTotalSavedPicturesSize();
        this.mStorageManager.updateRemain(l, false);
        boolean bl = this.mStorageManager.isReady();
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.UPDATE_REMAIN, false);
        return bl;
    }

    private class AutoOffTimerTask
    extends TimerTask {
        private AutoOffTimerTask() {
        }

        @Override
        public void run() {
            BaseActivity.this.stopAutoOffTimer();
            BaseActivity.this.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    BaseActivity.this.abort();
                }
            });
        }

    }

    private class ExtendedOrientationEventListener
    extends OrientationEventListener {
        public ExtendedOrientationEventListener(Context context) {
            super(context);
        }

        @Override
        public void onOrientationChanged(int n) {
            if (n != -1) {
                BaseActivity.this.mSensorOrientationDegree = n;
            }
            if (n == BaseActivity.this.mLastOrientationDegree) {
                return;
            }
            BaseActivity.this.mLastOrientationDegree = n;
            if (BaseActivity.this.mLastOrientationDegree != -1) {
                BaseActivity.this.mLastDeterminedOrientationDegree = BaseActivity.this.mLastOrientationDegree;
            }
            BaseActivity.this.notifyLayoutOrientationChanged(BaseActivity.this.getLayoutOrientation());
        }
    }

    public static enum LaunchedBy {
        UNKNOWN,
        INTENT,
        HISTORY;
        

        private LaunchedBy() {
        }
    }

    public static enum LayoutOrientation {
        Unknown,
        Portrait,
        Landscape,
        ReversePortrait,
        ReverseLandscape;
        

        private LayoutOrientation() {
        }
    }

    public static interface LayoutOrientationChangedListener {
        public void onLayoutOrientationChanged(LayoutOrientation var1);
    }

    public static enum LifeCycleIds {
        ON_CREATE(MeasurePerformance.PerformanceIds.ON_CREATE, "onCreate()"),
        ON_NEW_INTENT(MeasurePerformance.PerformanceIds.ON_NEW_INTENT, "onNewIntent()"),
        ON_START(MeasurePerformance.PerformanceIds.ON_START, "onStart()"),
        ON_RESTART(MeasurePerformance.PerformanceIds.ON_RESTART, "onRestart()"),
        ON_RESUME(MeasurePerformance.PerformanceIds.ON_RESUME, "onResume()"),
        ON_PAUSE(MeasurePerformance.PerformanceIds.ON_PAUSE, "onPause()"),
        ON_STOP(MeasurePerformance.PerformanceIds.ON_STOP, "onStop()"),
        ON_DESTROY(MeasurePerformance.PerformanceIds.ON_DESTROY, "onDestroy()");
        
        private final String mLog;
        private final MeasurePerformance.PerformanceIds mPerformanceIds;

        private LifeCycleIds(MeasurePerformance.PerformanceIds performanceIds, String string2) {
            this.mPerformanceIds = performanceIds;
            this.mLog = string2;
        }

        public String toString() {
            return this.mLog;
        }
    }

    private class StorageBroadcastReceiver
    extends BroadcastReceiver {
        private StorageBroadcastReceiver() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onReceive(Context object, Intent intent) {
            object = intent.getAction();
            if (object.equals("android.intent.action.MEDIA_MOUNTED")) {
                BaseActivity.this.notifyStorageStatusChanged((String)object, intent.getData());
                return;
            } else {
                if (object.equals("android.intent.action.MEDIA_UNMOUNTED")) {
                    BaseActivity.this.notifyStorageStatusChanged((String)object, intent.getData());
                    return;
                }
                if (object.equals("android.intent.action.MEDIA_EJECT")) {
                    BaseActivity.this.notifyStorageStatusChanged((String)object, intent.getData());
                    return;
                }
                if (!object.equals("android.intent.action.MEDIA_SCANNER_FINISHED")) return;
                {
                    BaseActivity.this.notifyStorageStatusChanged((String)object, intent.getData());
                    return;
                }
            }
        }
    }

    public static interface StorageEventListener {
        public void onMediaScanFinished();

        public void onStorageCheckRequested(String var1, String var2);
    }

}

