/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.PhoneStateListener;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.LaunchConditions;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.util.DebugEventIntruder;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraTimer;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    public ExtendedActivity();

    static /* synthetic */ void access$200(ExtendedActivity var0, boolean var1);

    static /* synthetic */ boolean access$302(ExtendedActivity var0, boolean var1);

    private void onActivated(boolean var1);

    private void postLazyEnableTouchEvent();

    @Override
    public void finish();

    public void finishUrgently();

    @Override
    public RotatableDialog getCallingDialog();

    public Configurations getConfigurations();

    public ControllerManager getControllerManager();

    public DebugEventIntruder getDebugEventIntruder();

    public LaunchConditions getLaunchConditions();

    public MeasurePerformance getMeasurePerformance2();

    public ParameterManager getParameterManager();

    public ShutterToneGenerator getShutterToneGenerator();

    @Override
    public boolean isAlertDialogOpened();

    public boolean isControllerReleased();

    @Override
    public boolean isOneShot();

    @Override
    public boolean isOneShotPhoto();

    @Override
    public boolean isOneShotVideo();

    public boolean isTouchEventValid();

    @Override
    protected void onCreate(Bundle var1);

    @Override
    protected void onDestroy();

    @Override
    protected void onPause();

    @Override
    protected void onResume();

    @Override
    public void onStart();

    @Override
    protected void onStop();

    protected void pauseCameraView();

    protected abstract void prepareFinish();

    public abstract void resumeAll(boolean var1);

    @Override
    public void setAlertDialogIsOpened(boolean var1);

    public void setDeviceError(boolean var1);

    @Override
    public void terminateApplication();

    public static interface CameraPhoneStateListener {
        public void onOffHook();

        public void onRinging();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ExtendedPhoneStateListener
    extends PhoneStateListener {
        final /* synthetic */ ExtendedActivity this$0;

        private ExtendedPhoneStateListener(ExtendedActivity var1);

        /* synthetic */ ExtendedPhoneStateListener(ExtendedActivity var1,  var2);

        @Override
        public void onCallStateChanged(int var1, String var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected abstract class ForceSound {
        final /* synthetic */ ExtendedActivity this$0;

        protected ForceSound(ExtendedActivity var1);

        public abstract void dismiss();

        public abstract void resume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected class ForceSoundOff
    extends ForceSound {
        final /* synthetic */ ExtendedActivity this$0;

        protected ForceSoundOff(ExtendedActivity var1);

        @Override
        public void dismiss();

        @Override
        public void resume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected class ForceSoundOn
    extends ForceSound {
        final /* synthetic */ ExtendedActivity this$0;

        protected ForceSoundOn(ExtendedActivity var1);

        @Override
        public void dismiss();

        @Override
        public void resume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected class ForceSoundResumed
    extends ForceSound {
        protected ForceSound mOrg;
        final /* synthetic */ ExtendedActivity this$0;

        public ForceSoundResumed(ExtendedActivity var1, ForceSound var2);

        @Override
        public void dismiss();

        @Override
        public void resume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class UserPresentIntentReceiver
    extends BroadcastReceiver {
        final /* synthetic */ ExtendedActivity this$0;

        private UserPresentIntentReceiver(ExtendedActivity var1);

        /* synthetic */ UserPresentIntentReceiver(ExtendedActivity var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

}

