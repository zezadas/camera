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
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;
import com.sonyericsson.cameracommon.utility.BrandConfig;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.psm.sysmonservice.ISysmonService;
import java.util.Timer;
import java.util.TimerTask;

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
    private static final String TAG = ThermalAlertReceiver.class.getSimpleName();
    private static final int VARIABLE_LOW_TEMP_BURN_TIMEOUT_DURATION_NOT_SUPPORTED = 0;
    private final Activity mActivity;
    private boolean mIsAlreadyHighTemperature = false;
    private boolean mIsBindSysmonService;
    private boolean mIsWarningState = false;
    private final ThermalAlertReceiverListener mListener;
    private final LowTempBurnTimeoutTimerWrapper mLowTempBurnTimerFixedDuration;
    private final LowTempBurnTimeoutTimerWrapper mLowTempBurnTimerVariableDuration;
    private final MessagePopup mMessagePopup;
    private final ParamSharedPrefWrapper mParamSharedPrefWrapper;
    private final ServiceConnection mServiceConnectionSysmon;
    private ISysmonService mSysmonService;
    private RotatableDialog mThermalWarningDialog = null;

    public ThermalAlertReceiver(Activity activity, MessagePopup messagePopup, ThermalAlertReceiverListener thermalAlertReceiverListener, ParamSharedPrefWrapper paramSharedPrefWrapper) {
        this.mActivity = activity;
        this.mMessagePopup = messagePopup;
        this.mListener = thermalAlertReceiverListener;
        this.mParamSharedPrefWrapper = paramSharedPrefWrapper;
        this.mThermalWarningDialog = null;
        this.mServiceConnectionSysmon = new ServiceConnectionSysmon();
        this.mLowTempBurnTimerFixedDuration = new LowTempBurnTimeoutTimerWrapper();
        this.mLowTempBurnTimerVariableDuration = new LowTempBurnTimeoutTimerWrapper();
    }

    private void changeToNormalState() {
        this.mIsWarningState = false;
        this.mListener.onNotifyThermalNormal();
    }

    private void changeToWarningState() {
        this.mIsWarningState = true;
        this.mListener.onNotifyThermalWarning();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void checkLowTempBurnTimeoutTimerDuration(int n, int n2) {
        if (n2 == 0) {
            if (n != 610) return;
            {
                this.mLowTempBurnTimerFixedDuration.requestTimeMillis(1800000);
                return;
            }
        } else {
            if (n2 == -1) return;
            {
                this.mLowTempBurnTimerVariableDuration.requestTimeMillis(n2 * 1000);
                return;
            }
        }
    }

    private void checkStartupStatus(int n, String string) {
        this.mIsAlreadyHighTemperature = false;
        switch (n) {
            default: {
                return;
            }
            case 604: {
                this.mIsAlreadyHighTemperature = true;
                this.finishOnStartup();
                return;
            }
            case 603: {
                this.mIsAlreadyHighTemperature = true;
                this.finishOnStartup();
                return;
            }
            case 600: {
                this.changeToNormalState();
                return;
            }
            case 620: 
        }
        this.changeToWarningState();
    }

    private void finishOnStartup() {
        this.mListener.onReachHighTemperature(true);
        this.mMessagePopup.showRotatableToastMessageAndAbort(R.string.cam_strings_error_high_temp_already_high_txt, 1, RotatableToast.ToastPosition.CENTER);
    }

    private String getSharedPrefsKeyForThermalWarningDialog() {
        String string;
        block2 : {
            String string2 = this.mActivity.getClass().getSimpleName();
            if (!(string2.equals("FastCapturingActivity") || string2.equals("CameraActivityForCaptureOnlyPhoto"))) {
                string = string2;
                if (!string2.equals("CameraActivityForCaptureOnlyVideo")) break block2;
            }
            string = "CameraActivity";
        }
        return "THERMAL_WARNING_DISABLED_" + string;
    }

    private int getThermalWarningString() {
        if (BrandConfig.isVerizonBrand()) {
            return R.string.cam_strings_error_high_temp_info_vzw_txt;
        }
        return R.string.cam_strings_error_high_temp_info_txt;
    }

    private void showDialogCritical() {
        this.mListener.onReachHighTemperature(false);
        this.mMessagePopup.showThermalCritical();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void showDialogWarning() {
        Object object = this.mActivity.getLayoutInflater();
        if (object == null) {
            return;
        }
        object = object.inflate(R.layout.thermal_warning_popup_content, null);
        ((TextView)object.findViewById(R.id.header_text)).setText(this.getThermalWarningString());
        ((CheckBox)object.findViewById(R.id.check_box)).setOnCheckedChangeListener(new CheckBoxListener(this.mParamSharedPrefWrapper, this.getSharedPrefsKeyForThermalWarningDialog()));
        ThermalWarningDialogCloseListener thermalWarningDialogCloseListener = new ThermalWarningDialogCloseListener();
        this.mThermalWarningDialog = this.mMessagePopup.showOkAndCustomView((View)object, R.string.cam_strings_dialog_high_temp_title_txt, false, R.string.cam_strings_ok_txt, thermalWarningDialogCloseListener, thermalWarningDialogCloseListener);
        if (this.mThermalWarningDialog == null) return;
        this.mThermalWarningDialog.setOnDismissListener(thermalWarningDialogCloseListener);
    }

    public boolean isAlreadyHighTemperature() {
        return this.mIsAlreadyHighTemperature;
    }

    public boolean isWarningState() {
        return this.mIsWarningState;
    }

    public void onCreate() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL");
        intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN");
        intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL");
        intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN");
        intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET");
        intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET");
        this.mActivity.registerReceiver(this, intentFilter);
    }

    public void onDestroy() {
        this.mActivity.unregisterReceiver(this);
    }

    public void onPause() {
        this.mIsAlreadyHighTemperature = false;
        if (this.mIsBindSysmonService) {
            this.mIsBindSysmonService = false;
            this.mActivity.unbindService(this.mServiceConnectionSysmon);
        }
        this.mLowTempBurnTimerFixedDuration.cancel();
        this.mLowTempBurnTimerVariableDuration.cancel();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onReceive(Context object, Intent intent) {
        if (!this.mIsBindSysmonService || this.mIsAlreadyHighTemperature) return;
        object = intent.getAction();
        if ("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL".equals(object)) {
            this.mLowTempBurnTimerFixedDuration.cancel();
            this.mLowTempBurnTimerVariableDuration.cancel();
            this.mIsAlreadyHighTemperature = true;
            if (this.mThermalWarningDialog != null) {
                this.mThermalWarningDialog.dismiss();
            }
            this.showDialogCritical();
            return;
        }
        if ("com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL".equals(object)) {
            this.mLowTempBurnTimerFixedDuration.cancel();
            this.changeToNormalState();
            return;
        }
        if ("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN".equals(object)) {
            this.mLowTempBurnTimerFixedDuration.requestTimeMillis(1800000);
            return;
        }
        if ("com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN".equals(object)) {
            if (!this.mParamSharedPrefWrapper.getParamFromSP(this.getSharedPrefsKeyForThermalWarningDialog(), false)) {
                this.showDialogWarning();
            }
            this.changeToWarningState();
            return;
        }
        if ("com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET".equals(object)) {
            int n;
            object = intent.getExtras();
            if (object == null || (n = object.getInt("com.sonyericsson.psm.extra.TIMEOUT_SEC", -1)) == -1) return;
            {
                this.mLowTempBurnTimerVariableDuration.requestTimeMillis(n * 1000);
                return;
            }
        }
        if (!"com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET".equals(object)) {
            return;
        }
        this.mLowTempBurnTimerVariableDuration.cancel();
    }

    public void onResume() {
        this.mIsAlreadyHighTemperature = false;
        Intent intent = new Intent("com.sonyericsson.psm.sysmonservice");
        intent.setAction("com.sonyericsson.psm.sysmonservice.ISysmonService");
        this.mIsBindSysmonService = this.mActivity.bindService(intent, this.mServiceConnectionSysmon, 0);
        if (this.mIsBindSysmonService) {
            return;
        }
        this.mActivity.unbindService(this.mServiceConnectionSysmon);
    }

    protected class CheckBoxListener
    implements CompoundButton.OnCheckedChangeListener {
        private final ParamSharedPrefWrapper mSharedPrefs;
        private final String mSharedPrefsKey;

        public CheckBoxListener(ParamSharedPrefWrapper paramSharedPrefWrapper, String string) {
            this.mSharedPrefs = paramSharedPrefWrapper;
            this.mSharedPrefsKey = string;
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
            boolean bl2 = false;
            if (bl) {
                bl2 = true;
            }
            this.mSharedPrefs.setParamToSP(this.mSharedPrefsKey, bl2);
        }
    }

    private class LowTempBurnTimeoutTimerWrapper {
        static final long INVALID_TIMER_TIME = -1;
        private Timer mTimer;
        private long mTimerToBeExpiredTimeMillis;

        private LowTempBurnTimeoutTimerWrapper() {
            this.mTimer = null;
            this.mTimerToBeExpiredTimeMillis = -1;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private long getRemainedTimeMillis() {
            long l;
            if (this.mTimerToBeExpiredTimeMillis == -1) {
                return -1;
            }
            long l2 = l = this.mTimerToBeExpiredTimeMillis - System.currentTimeMillis();
            if (l > 0) return l2;
            return -1;
        }

        public final void cancel() {
            synchronized (this) {
                if (this.mTimer != null) {
                    this.mTimer.cancel();
                    this.mTimer.purge();
                    this.mTimer = null;
                    this.mTimerToBeExpiredTimeMillis = -1;
                }
                return;
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public final void requestTimeMillis(long l) {
            synchronized (this) {
                block6 : {
                    long l2 = this.getRemainedTimeMillis();
                    if (l2 == -1 || l2 >= l) break block6;
                    do {
                        return;
                        break;
                    } while (true);
                }
                this.cancel();
                this.mTimer = new Timer(true);
                this.mTimer.schedule((TimerTask)new LowTempBurnTimerTask(), l);
                this.mTimerToBeExpiredTimeMillis = System.currentTimeMillis() + l;
                return;
            }
        }

        private class LowTempBurnTimerTask
        extends TimerTask {
            private final Handler mHandler;

            private LowTempBurnTimerTask() {
                this.mHandler = new Handler();
            }

            @Override
            public void run() {
                this.cancel();
                this.mHandler.post(new Runnable(){

                    @Override
                    public void run() {
                        ThermalAlertReceiver.this.mIsAlreadyHighTemperature = true;
                        ThermalAlertReceiver.this.showDialogCritical();
                    }
                });
            }

        }

    }

    class ServiceConnectionSysmon
    implements ServiceConnection {
        ServiceConnectionSysmon() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ThermalAlertReceiver.this.mSysmonService = ISysmonService.Stub.asInterface(iBinder);
            if (ThermalAlertReceiver.this.mSysmonService == null) return;
            try {
                int n = ThermalAlertReceiver.this.mSysmonService.getThermalLevelForCamera();
                ThermalAlertReceiver.this.checkStartupStatus(n, "sysmon");
                int n2 = ThermalAlertReceiver.this.mSysmonService.getCameraLowTempBurnTimeoutSec();
                ThermalAlertReceiver.this.checkLowTempBurnTimeoutTimerDuration(n, n2);
                return;
            }
            catch (Exception var1_2) {
                CameraLogger.e(TAG, "sysmon ServiceConnection failed.", var1_2);
                return;
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            ThermalAlertReceiver.this.mSysmonService = null;
        }
    }

    public static interface ThermalAlertReceiverListener {
        public void onNotifyThermalNormal();

        public void onNotifyThermalWarning();

        public void onReachHighTemperature(boolean var1);
    }

    private class ThermalWarningDialogCloseListener
    implements DialogInterface.OnClickListener,
    DialogInterface.OnCancelListener,
    DialogInterface.OnDismissListener {
        private ThermalWarningDialogCloseListener() {
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            ThermalAlertReceiver.this.mThermalWarningDialog = null;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            ThermalAlertReceiver.this.mThermalWarningDialog = null;
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            ThermalAlertReceiver.this.mThermalWarningDialog = null;
        }
    }

}

