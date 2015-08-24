/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.PhoneStateListener;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.sound.SoundPlayer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class BaseExtendedActivity
extends BaseActivity {
    private static final String TAG = "BaseExtendedActivity";
    private boolean mIsAlertDialogOpened;
    private PhoneStateChangedListener mPhoneStateChangedListener;
    private ExtendedPhoneStateListener mPhoneStateListener;
    protected SoundPlayer mSoundPlayer;
    private StartUpGuardian mStartUpGuardian;
    private final BroadcastReceiver mUserPresentIntentReceiver;

    public BaseExtendedActivity();

    static /* synthetic */ StartUpGuardian access$100(BaseExtendedActivity var0);

    static /* synthetic */ PhoneStateChangedListener access$600(BaseExtendedActivity var0);

    @Override
    protected void abort();

    protected void cancelCheckAutoUploadSetting();

    public final void dismissDialog();

    @Override
    public void finish();

    public void finishOneShot(Intent var1);

    public void finishUrgently();

    public Camera.Parameters forTestGetCameraParameters();

    protected abstract Rect getPreviewSize();

    public SoundPlayer getSoundPlayer();

    @Override
    public boolean isAlertDialogOpened();

    public boolean isPhoneCallWorking();

    public boolean isPreinstalledOrUpdatedPreinstalledApp();

    @Override
    public void onBackPressed();

    @Override
    protected void onCreate(Bundle var1);

    @Override
    protected void onDestroy();

    @Override
    protected void onNewIntent(Intent var1);

    @Override
    protected void onPause();

    @Override
    protected void onResume();

    @Override
    public void onStart();

    @Override
    protected void onStop();

    public void onStoreComplete(boolean var1, Uri var2, String var3, int var4);

    protected abstract void prepareFinish();

    protected void requestCheckAutoUploadSetting();

    public void resumeFromIncomingCall();

    @Override
    public void setAlertDialogIsOpened(boolean var1);

    public void setDestinationToSave();

    public void setPhoneStateChangedListener(PhoneStateChangedListener var1);

    protected void showAndConfirmDisclaimer();

    @Override
    public void terminateApplication();

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
    private static class CameraActivityFinishBroadcastReceiver
    extends BroadcastReceiver {
        BaseExtendedActivity mBaseExtendedActivity;

        CameraActivityFinishBroadcastReceiver(BaseExtendedActivity var1);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ExtendedPhoneStateListener
    extends PhoneStateListener {
        final /* synthetic */ BaseExtendedActivity this$0;

        private ExtendedPhoneStateListener(BaseExtendedActivity var1);

        /* synthetic */ ExtendedPhoneStateListener(BaseExtendedActivity var1,  var2);

        @Override
        public void onCallStateChanged(int var1, String var2);
    }

    public static interface PhoneStateChangedListener {
        public void onOffHook();

        public void onRinging();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class StartUpGuardian {
        private boolean mIsAlreadyResumed;
        final /* synthetic */ BaseExtendedActivity this$0;

        private StartUpGuardian(BaseExtendedActivity var1);

        /* synthetic */ StartUpGuardian(BaseExtendedActivity var1,  var2);

        public void pause();

        public void resume();

        protected void tryToResumeAll();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StartUpGuardianForceSoundOn
    extends StartUpGuardian {
        final /* synthetic */ BaseExtendedActivity this$0;

        private StartUpGuardianForceSoundOn(BaseExtendedActivity var1);

        /* synthetic */ StartUpGuardianForceSoundOn(BaseExtendedActivity var1,  var2);

        @Override
        public void pause();

        @Override
        public void resume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StartUpGuardianUnlimited
    extends StartUpGuardian {
        final /* synthetic */ BaseExtendedActivity this$0;

        private StartUpGuardianUnlimited(BaseExtendedActivity var1);

        /* synthetic */ StartUpGuardianUnlimited(BaseExtendedActivity var1,  var2);

        @Override
        public void pause();

        @Override
        public void resume();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class UserPresentIntentReceiver
    extends BroadcastReceiver {
        final /* synthetic */ BaseExtendedActivity this$0;

        private UserPresentIntentReceiver(BaseExtendedActivity var1);

        /* synthetic */ UserPresentIntentReceiver(BaseExtendedActivity var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

}

