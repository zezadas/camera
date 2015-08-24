/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.OrientationEventListener;
import com.sonyericsson.cameracommon.activity.TerminateListener;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.location.LocationSettingsReader;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.messagepopup.MessagePopupStateListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.settings.AutoReviewSettings;
import com.sonyericsson.cameracommon.thermal.ThermalAlertReceiver;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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
    private boolean mIsAutoOffTimerEnabled;
    protected boolean mIsKeyguardAvailable;
    private boolean mIsReceiverResistered;
    private LayoutOrientation mLastDetectedOrientation;
    private int mLastDeterminedOrientationDegree;
    private int mLastOrientationDegree;
    private boolean mLaunchAsOneShot;
    private boolean mLaunchAsOneShotPhoto;
    private boolean mLaunchAsOneShotPhotoSecure;
    private boolean mLaunchAsOneShotVideo;
    protected LaunchedBy mLaunchedBy;
    private Set<LayoutOrientationChangedListener> mLayoutOrientationChangedListenerSet;
    private LocationSettingsReader mLocationSettingsReader;
    protected MessagePopup mMessagePopup;
    protected RotatableDialog mNonCancelableErrorDialog;
    private OrientationEventListener mOrientationEventListener;
    protected SavingTaskManager mSavingTaskManager;
    private int mSensorOrientationDegree;
    protected StorageController mStorageController;
    private Set<StorageEventListener> mStorageListenerSet;
    protected CameraStorageManager mStorageManager;
    protected TerminateListener mTerminateListener;
    protected ThermalAlertReceiver mThermalAlertReceiver;

    public BaseActivity();

    static /* synthetic */ void access$100(BaseActivity var0, String var1, Uri var2);

    static /* synthetic */ void access$300(BaseActivity var0);

    static /* synthetic */ int access$402(BaseActivity var0, int var1);

    static /* synthetic */ int access$500(BaseActivity var0);

    static /* synthetic */ int access$502(BaseActivity var0, int var1);

    static /* synthetic */ int access$602(BaseActivity var0, int var1);

    static /* synthetic */ void access$700(BaseActivity var0, LayoutOrientation var1);

    private void checkOneShot();

    private int getOrientationDegree(LayoutOrientation var1);

    private static boolean in(int var0, int var1, int var2);

    private void muteSound(int var1);

    private void notifyLayoutOrientationChanged(LayoutOrientation var1);

    private void notifyStorageStatusChanged(String var1, Uri var2);

    private void registerIntentFilter(String var1, String var2);

    private final void stopAutoOffTimer();

    private void unmuteSound(int var1);

    private void updateBalloonTipsCounter();

    protected abstract void abort();

    public void addOrienationListener(LayoutOrientationChangedListener var1);

    public void addStorageListener(StorageEventListener var1);

    protected void callOnCreate(Bundle var1);

    protected void callOnDestroy();

    protected void callOnPause();

    protected void callOnRestart();

    protected void callOnResume();

    protected void callOnStart();

    protected void callOnStop();

    protected void clearKeepScreenOn();

    protected void createCommonSettings();

    public final void disableAutoOffTimer();

    public void disableOrientation();

    public final void enableAutoOffTimer();

    public void enableOrientation();

    public AutoReviewSettings getAutoReviewSettings();

    public abstract RotatableDialog getCallingDialog();

    public CommonSettings getCommonSettings();

    public int getConfigurationOrientation();

    public Uri getExtraOutput();

    public GeotagManager getGeoTagManager();

    public LayoutOrientation getLastDetectedOrientation();

    public LaunchedBy getLaunchedBy();

    public LayoutOrientation getLayoutOrientation();

    public MessagePopup getMessagePopup();

    public int getOrientation();

    public int getOrientationDegree();

    protected abstract ParamSharedPrefWrapper getParamSharedPrefWrapper();

    public SavingTaskManager getSavingTaskManager();

    public int getSensorOrientationDegree();

    public StorageController getStorageController();

    public CameraStorageManager getStorageManager();

    public boolean hasExtraOutputPath();

    protected void initializeGoogleAnalytics();

    public abstract boolean isAlertDialogOpened();

    public boolean isAlreadyHighTemperature();

    public boolean isDeviceInSecurityLock();

    public abstract boolean isDualStorageAvailable();

    public boolean isGpsLocationAllowed();

    @SuppressLint(value={"NewApi"})
    public boolean isInLockTaskMode();

    public abstract boolean isMenuAvailable();

    public boolean isNetworkLocationAllowed();

    public boolean isOneShot();

    public boolean isOneShotPhoto();

    public boolean isOneShotPhotoSecure();

    public boolean isOneShotVideo();

    public boolean isThermalWarningState();

    protected void keepScreenOn();

    public void logLifeCycleIn(String var1, LifeCycleIds var2);

    public void logLifeCycleOut(String var1, LifeCycleIds var2);

    @Override
    public void msgPopupCanceled();

    @Override
    public void msgPopupOpened();

    @Override
    protected void onCreate(Bundle var1);

    @Override
    protected void onDestroy();

    @Override
    protected void onPause();

    @Override
    protected void onResume();

    @Override
    public boolean onSearchRequested();

    @Override
    protected void onStop();

    public void pauseAudioPlayback();

    public void readLocationSettings();

    public void removeOrienationListener(LayoutOrientationChangedListener var1);

    public void removeStorageListener(StorageEventListener var1);

    public final void restartAutoOffTimer();

    protected abstract void resumeAll();

    public abstract void setAlertDialogIsOpened(boolean var1);

    public boolean shouldAddOnlyNewContent();

    public boolean shouldAddToMediaStore();

    protected boolean startAutoOffTimer();

    protected final boolean startAutoOffTimer(int var1);

    public boolean updateRemain();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AutoOffTimerTask
    extends TimerTask {
        final /* synthetic */ BaseActivity this$0;

        private AutoOffTimerTask(BaseActivity var1);

        /* synthetic */ AutoOffTimerTask(BaseActivity var1, com.sonyericsson.cameracommon.activity.BaseActivity$1 var2);

        @Override
        public void run();

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ExtendedOrientationEventListener
    extends OrientationEventListener {
        final /* synthetic */ BaseActivity this$0;

        public ExtendedOrientationEventListener(BaseActivity var1, Context var2);

        @Override
        public void onOrientationChanged(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class LaunchedBy
    extends Enum<LaunchedBy> {
        private static final /* synthetic */ LaunchedBy[] $VALUES;
        public static final /* enum */ LaunchedBy HISTORY;
        public static final /* enum */ LaunchedBy INTENT;
        public static final /* enum */ LaunchedBy UNKNOWN;

        static;

        private LaunchedBy();

        public static LaunchedBy valueOf(String var0);

        public static LaunchedBy[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class LayoutOrientation
    extends Enum<LayoutOrientation> {
        private static final /* synthetic */ LayoutOrientation[] $VALUES;
        public static final /* enum */ LayoutOrientation Landscape;
        public static final /* enum */ LayoutOrientation Portrait;
        public static final /* enum */ LayoutOrientation ReverseLandscape;
        public static final /* enum */ LayoutOrientation ReversePortrait;
        public static final /* enum */ LayoutOrientation Unknown;

        static;

        private LayoutOrientation();

        public static LayoutOrientation valueOf(String var0);

        public static LayoutOrientation[] values();
    }

    public static interface LayoutOrientationChangedListener {
        public void onLayoutOrientationChanged(LayoutOrientation var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class LifeCycleIds
    extends Enum<LifeCycleIds> {
        private static final /* synthetic */ LifeCycleIds[] $VALUES;
        public static final /* enum */ LifeCycleIds ON_CREATE;
        public static final /* enum */ LifeCycleIds ON_DESTROY;
        public static final /* enum */ LifeCycleIds ON_NEW_INTENT;
        public static final /* enum */ LifeCycleIds ON_PAUSE;
        public static final /* enum */ LifeCycleIds ON_RESTART;
        public static final /* enum */ LifeCycleIds ON_RESUME;
        public static final /* enum */ LifeCycleIds ON_START;
        public static final /* enum */ LifeCycleIds ON_STOP;
        private final String mLog;
        private final MeasurePerformance.PerformanceIds mPerformanceIds;

        static;

        private LifeCycleIds(MeasurePerformance.PerformanceIds var3, String var4);

        static /* synthetic */ MeasurePerformance.PerformanceIds access$800(LifeCycleIds var0);

        public static LifeCycleIds valueOf(String var0);

        public static LifeCycleIds[] values();

        public String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StorageBroadcastReceiver
    extends BroadcastReceiver {
        final /* synthetic */ BaseActivity this$0;

        private StorageBroadcastReceiver(BaseActivity var1);

        /* synthetic */ StorageBroadcastReceiver(BaseActivity var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    public static interface StorageEventListener {
        public void onMediaScanFinished();

        public void onStorageCheckRequested(String var1, String var2);
    }

}

