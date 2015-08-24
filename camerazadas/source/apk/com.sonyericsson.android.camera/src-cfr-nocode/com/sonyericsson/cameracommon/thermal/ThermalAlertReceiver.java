/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.thermal;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.widget.CompoundButton;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.psm.sysmonservice.ISysmonService;
import java.util.Timer;
import java.util.TimerTask;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ThermalAlertReceiver
extends BroadcastReceiver {
    private static final String ACTION_CAMERA_COOLED_DOWN_NORMAL = "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL";
    private static final String ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN = "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN";
    private static final String ACTION_CAMERA_HEATED_OVER_CRITICAL = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL";
    private static final String ACTION_CAMERA_HEATED_OVER_LOW_TEMP_BURN = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN";
    private static final String ACTION_CAMERA_LOW_TEMP_BURN_TIMER_RESET = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET";
    private static final String ACTION_CAMERA_LOW_TEMP_BURN_TIMER_SET = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET";
    private static final int CAMERA_CRITICAL = 604;
    private static final int CAMERA_HEATED_CLOSE_TO_SHUTDOWN = 620;
    private static final int CAMERA_LOW_TEMP_BURN = 610;
    private static final int CAMERA_NORMAL = 600;
    private static final int CAMERA_WARNING = 603;
    private static final int INVALID_LOW_TEMP_BURN_TIMEOUT_DURATION = -1;
    private static final String KEY_LOW_TEMP_BURN_TIMER_DURATION_SEC = "com.sonyericsson.psm.extra.TIMEOUT_SEC";
    private static final int LOW_TEMP_BURN_TIMER_LIMIT_MILLIS = 1800000;
    private static final String SHARED_PREFS_KEY_THERMAL_WARNING_DISABLED = "THERMAL_WARNING_DISABLED";
    private static final String SYSMON_SERVICE = "com.sonyericsson.psm.sysmonservice";
    private static final String SYSMON_SERVICE_ACTION = "com.sonyericsson.psm.sysmonservice.ISysmonService";
    private static final String TAG;
    private static final int VARIABLE_LOW_TEMP_BURN_TIMEOUT_DURATION_NOT_SUPPORTED = 0;
    private final Activity mActivity;
    private boolean mIsAlreadyHighTemperature;
    private boolean mIsBindSysmonService;
    private boolean mIsWarningState;
    private final ThermalAlertReceiverListener mListener;
    private final LowTempBurnTimeoutTimerWrapper mLowTempBurnTimerFixedDuration;
    private final LowTempBurnTimeoutTimerWrapper mLowTempBurnTimerVariableDuration;
    private final MessagePopup mMessagePopup;
    private final ParamSharedPrefWrapper mParamSharedPrefWrapper;
    private final ServiceConnection mServiceConnectionSysmon;
    private ISysmonService mSysmonService;
    private RotatableDialog mThermalWarningDialog;

    static;

    public ThermalAlertReceiver(Activity var1, MessagePopup var2, ThermalAlertReceiverListener var3, ParamSharedPrefWrapper var4);

    static /* synthetic */ ISysmonService access$000(ThermalAlertReceiver var0);

    static /* synthetic */ ISysmonService access$002(ThermalAlertReceiver var0, ISysmonService var1);

    static /* synthetic */ void access$100(ThermalAlertReceiver var0, int var1, String var2);

    static /* synthetic */ void access$200(ThermalAlertReceiver var0, int var1, int var2);

    static /* synthetic */ String access$300();

    static /* synthetic */ RotatableDialog access$502(ThermalAlertReceiver var0, RotatableDialog var1);

    static /* synthetic */ boolean access$802(ThermalAlertReceiver var0, boolean var1);

    static /* synthetic */ void access$900(ThermalAlertReceiver var0);

    private void changeToNormalState();

    private void changeToWarningState();

    private void checkLowTempBurnTimeoutTimerDuration(int var1, int var2);

    private void checkStartupStatus(int var1, String var2);

    private void finishOnStartup();

    private String getSharedPrefsKeyForThermalWarningDialog();

    private int getThermalWarningString();

    private void showDialogCritical();

    private void showDialogWarning();

    public boolean isAlreadyHighTemperature();

    public boolean isWarningState();

    public void onCreate();

    public void onDestroy();

    public void onPause();

    @Override
    public void onReceive(Context var1, Intent var2);

    public void onResume();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected class CheckBoxListener
    implements CompoundButton.OnCheckedChangeListener {
        private final ParamSharedPrefWrapper mSharedPrefs;
        private final String mSharedPrefsKey;
        final /* synthetic */ ThermalAlertReceiver this$0;

        public CheckBoxListener(ThermalAlertReceiver var1, ParamSharedPrefWrapper var2, String var3);

        @Override
        public void onCheckedChanged(CompoundButton var1, boolean var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LowTempBurnTimeoutTimerWrapper {
        static final long INVALID_TIMER_TIME = -1;
        private Timer mTimer;
        private long mTimerToBeExpiredTimeMillis;
        final /* synthetic */ ThermalAlertReceiver this$0;

        private LowTempBurnTimeoutTimerWrapper(ThermalAlertReceiver var1);

        /* synthetic */ LowTempBurnTimeoutTimerWrapper(ThermalAlertReceiver var1,  var2);

        private long getRemainedTimeMillis();

        public final void cancel();

        public final void requestTimeMillis(long var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class LowTempBurnTimerTask
        extends TimerTask {
            private final Handler mHandler;
            final /* synthetic */ LowTempBurnTimeoutTimerWrapper this$1;

            private LowTempBurnTimerTask(LowTempBurnTimeoutTimerWrapper var1);

            /* synthetic */ LowTempBurnTimerTask(LowTempBurnTimeoutTimerWrapper var1, com.sonyericsson.cameracommon.thermal.ThermalAlertReceiver$1 var2);

            @Override
            public void run();

        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class ServiceConnectionSysmon
    implements ServiceConnection {
        final /* synthetic */ ThermalAlertReceiver this$0;

        ServiceConnectionSysmon(ThermalAlertReceiver var1);

        @Override
        public void onServiceConnected(ComponentName var1, IBinder var2);

        @Override
        public void onServiceDisconnected(ComponentName var1);
    }

    public static interface ThermalAlertReceiverListener {
        public void onNotifyThermalNormal();

        public void onNotifyThermalWarning();

        public void onReachHighTemperature(boolean var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ThermalWarningDialogCloseListener
    implements DialogInterface.OnClickListener,
    DialogInterface.OnCancelListener,
    DialogInterface.OnDismissListener {
        final /* synthetic */ ThermalAlertReceiver this$0;

        private ThermalWarningDialogCloseListener(ThermalAlertReceiver var1);

        /* synthetic */ ThermalWarningDialogCloseListener(ThermalAlertReceiver var1,  var2);

        @Override
        public void onCancel(DialogInterface var1);

        @Override
        public void onClick(DialogInterface var1, int var2);

        @Override
        public void onDismiss(DialogInterface var1);
    }

}

