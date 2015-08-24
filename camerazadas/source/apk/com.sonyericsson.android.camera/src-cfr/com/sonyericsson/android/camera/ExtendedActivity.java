/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.LaunchConditions;
import com.sonyericsson.android.camera.OneShotType;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.util.DebugEventIntruder;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraTimer;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;

public abstract class ExtendedActivity
extends BaseActivity {
    private static final String TAG = "ExtendedActivity";
    protected CameraTimer mAutoTerminationTimer;
    protected Configurations mConfigurations;
    protected ControllerManager mControllerManager;
    protected DebugEventIntruder mDebugEventIntruder;
    protected boolean mDelayedOnResume;
    protected boolean mEnabledAutoTerminationTimer;
    protected ForceSound mForceSound;
    private boolean mIsAlertDialogOpened;
    private boolean mIsTouchEventValid;
    protected LaunchConditions mLaunchConditions;
    protected MeasurePerformance mMeasurePerformance;
    protected RotatableDialog mNoncancelableErrorDialog;
    protected ParameterManager mParameterManager;
    private ExtendedPhoneStateListener mPhoneStateListener;
    protected ShutterToneGenerator mShutterToneGenerator;
    private final BroadcastReceiver mUserPresentIntentReceiver;

    public ExtendedActivity() {
        this.mPhoneStateListener = new ExtendedPhoneStateListener();
        this.mAutoTerminationTimer = null;
        this.mEnabledAutoTerminationTimer = true;
        this.mDelayedOnResume = false;
        this.mIsTouchEventValid = false;
        this.mIsAlertDialogOpened = false;
        this.mUserPresentIntentReceiver = new UserPresentIntentReceiver();
    }

    private void onActivated(boolean bl) {
        this.resumeAll(bl);
    }

    private void postLazyEnableTouchEvent() {
        new Handler().postDelayed(new Runnable(){

            @Override
            public void run() {
                ExtendedActivity.this.mIsTouchEventValid = true;
            }
        }, 1000);
    }

    @Override
    public void finish() {
        if (!this.isInLockTaskMode()) {
            this.prepareFinish();
        }
        super.finish();
    }

    public void finishUrgently() {
        this.prepareFinish();
        super.finish();
    }

    @Override
    public RotatableDialog getCallingDialog() {
        return this.getMessagePopup().showErrorUncancelable(2131296371, 2131296408, false);
    }

    public Configurations getConfigurations() {
        return this.mConfigurations;
    }

    public ControllerManager getControllerManager() {
        return this.mControllerManager;
    }

    public DebugEventIntruder getDebugEventIntruder() {
        return this.mDebugEventIntruder;
    }

    public LaunchConditions getLaunchConditions() {
        return this.mLaunchConditions;
    }

    public MeasurePerformance getMeasurePerformance2() {
        return this.mMeasurePerformance;
    }

    public ParameterManager getParameterManager() {
        return this.mParameterManager;
    }

    public ShutterToneGenerator getShutterToneGenerator() {
        return this.mShutterToneGenerator;
    }

    @Override
    public boolean isAlertDialogOpened() {
        return this.mIsAlertDialogOpened;
    }

    public boolean isControllerReleased() {
        if (this.mControllerManager == null || this.mControllerManager.isControllerReleased()) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isOneShot() {
        return this.mLaunchConditions.isOneShot();
    }

    @Override
    public boolean isOneShotPhoto() {
        if (this.isOneShot() && this.mLaunchConditions.getOneShotType() == OneShotType.PHOTO) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isOneShotVideo() {
        if (this.isOneShot() && this.mLaunchConditions.getOneShotType() == OneShotType.VIDEO) {
            return true;
        }
        return false;
    }

    public boolean isTouchEventValid() {
        return this.mIsTouchEventValid;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mLaunchConditions = new LaunchConditions();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.unregisterReceiver(this.mUserPresentIntentReceiver);
        this.mIsTouchEventValid = false;
        this.mDelayedOnResume = false;
        this.mForceSound.dismiss();
        this.mForceSound = null;
        this.sendBroadcast(new Intent("com.sonyericsson.android.camera.intent.action.FINISH"));
        if (this.mControllerManager != null) {
            this.mLaunchConditions.clear(this.mControllerManager.getCapturingMode());
        }
        this.mStorageManager.saveExternalStorageStateInPrefs();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onResume() {
        this.mIsTouchEventValid = false;
        this.postLazyEnableTouchEvent();
        this.mForceSound = StaticConfigurationUtil.isForceSound() ? new ForceSoundOn() : new ForceSoundOff();
        if (this.mLaunchConditions.getLaunchedBy() == BaseActivity.LaunchedBy.UNKNOWN) {
            this.mLaunchConditions.setLaunchedBy(BaseActivity.LaunchedBy.HISTORY);
        }
        super.onResume();
        this.sendBroadcast(new Intent("com.sonyericsson.android.camera.intent.action.LAUNCH"));
        IntentFilter intentFilter = new IntentFilter("android.intent.action.USER_PRESENT");
        this.registerReceiver(this.mUserPresentIntentReceiver, intentFilter);
        this.mStorageManager.resume();
    }

    @Override
    public void onStart() {
        super.onStart();
        ((TelephonyManager)this.getSystemService("phone")).listen(this.mPhoneStateListener, 32);
    }

    @Override
    protected void onStop() {
        super.onStop();
        ((TelephonyManager)this.getSystemService("phone")).listen(this.mPhoneStateListener, 0);
    }

    protected void pauseCameraView() {
    }

    protected abstract void prepareFinish();

    public abstract void resumeAll(boolean var1);

    @Override
    public void setAlertDialogIsOpened(boolean bl) {
        this.mIsAlertDialogOpened = bl;
    }

    public void setDeviceError(boolean bl) {
        this.mLaunchConditions.setDeviceError(bl);
    }

    @Override
    public void terminateApplication() {
        this.finish();
    }

    public static interface CameraPhoneStateListener {
        public void onOffHook();

        public void onRinging();
    }

    private class ExtendedPhoneStateListener
    extends PhoneStateListener {
        private ExtendedPhoneStateListener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onCallStateChanged(int n, String string) {
            super.onCallStateChanged(n, string);
            switch (n) {
                default: {
                    return;
                }
                case 0: {
                    if (ExtendedActivity.this.mDelayedOnResume || ExtendedActivity.this.mForceSound == null) return;
                    ExtendedActivity.this.mForceSound.resume();
                    return;
                }
            }
        }
    }

    protected abstract class ForceSound {
        protected ForceSound() {
        }

        public abstract void dismiss();

        public abstract void resume();
    }

    protected class ForceSoundOff
    extends ForceSound {
        protected ForceSoundOff() {
        }

        @Override
        public void dismiss() {
        }

        @Override
        public void resume() {
            ExtendedActivity.this.mForceSound = new ForceSoundResumed(this);
            ExtendedActivity.this.onActivated(false);
        }
    }

    protected class ForceSoundOn
    extends ForceSound {
        protected ForceSoundOn() {
        }

        @Override
        public void dismiss() {
            if (ExtendedActivity.this.mNoncancelableErrorDialog != null) {
                ExtendedActivity.this.mNoncancelableErrorDialog.setOnDismissListener(null);
                ExtendedActivity.this.mNoncancelableErrorDialog.dismiss();
                ExtendedActivity.this.mNoncancelableErrorDialog = null;
            }
        }

        @Override
        public void resume() {
            if (((TelephonyManager)ExtendedActivity.this.getSystemService("phone")).getCallState() == 0) {
                ExtendedActivity.this.mForceSound = new ForceSoundResumed(this);
                boolean bl = false;
                if (ExtendedActivity.this.mNoncancelableErrorDialog != null) {
                    bl = true;
                }
                ExtendedActivity.this.pauseAudioPlayback();
                this.dismiss();
                ExtendedActivity.this.onActivated(bl);
                return;
            }
            if (ExtendedActivity.this.mNoncancelableErrorDialog == null) {
                ExtendedActivity.this.mNoncancelableErrorDialog = ExtendedActivity.this.getMessagePopup().showErrorUncancelable(2131296371, 2131296408, false);
            }
            ExtendedActivity.this.enableAutoOffTimer();
            ExtendedActivity.this.pauseCameraView();
        }
    }

    protected class ForceSoundResumed
    extends ForceSound {
        protected ForceSound mOrg;

        public ForceSoundResumed(ForceSound forceSound) {
            this.mOrg = forceSound;
        }

        @Override
        public void dismiss() {
        }

        @Override
        public void resume() {
        }
    }

    private class UserPresentIntentReceiver
    extends BroadcastReceiver {
        private UserPresentIntentReceiver() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.USER_PRESENT") && ExtendedActivity.this.mDelayedOnResume && ExtendedActivity.this.mForceSound != null) {
                ExtendedActivity.this.mForceSound.resume();
            }
        }
    }

}

