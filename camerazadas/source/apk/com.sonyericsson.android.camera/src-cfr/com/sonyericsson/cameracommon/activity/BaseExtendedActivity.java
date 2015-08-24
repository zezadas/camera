/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.cameracommon.activity;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Bundle;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.sound.SoundPlayer;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.OneShotUtility;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;

public abstract class BaseExtendedActivity
extends BaseActivity {
    private static final String TAG = "BaseExtendedActivity";
    private boolean mIsAlertDialogOpened;
    private PhoneStateChangedListener mPhoneStateChangedListener;
    private ExtendedPhoneStateListener mPhoneStateListener;
    protected SoundPlayer mSoundPlayer;
    private StartUpGuardian mStartUpGuardian;
    private final BroadcastReceiver mUserPresentIntentReceiver;

    public BaseExtendedActivity() {
        this.mUserPresentIntentReceiver = new UserPresentIntentReceiver();
        this.mIsAlertDialogOpened = false;
    }

    @Override
    protected void abort() {
        this.finish();
    }

    protected void cancelCheckAutoUploadSetting() {
        AutoUploadSettings.getInstance().cancel(this);
    }

    public final void dismissDialog() {
        if (this.mNonCancelableErrorDialog != null) {
            this.mNonCancelableErrorDialog.dismiss();
            this.mNonCancelableErrorDialog = null;
        }
    }

    @Override
    public void finish() {
        if (!this.isInLockTaskMode()) {
            this.prepareFinish();
        }
        super.finish();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void finishOneShot(Intent intent) {
        if (intent == null) {
            this.setResult(0);
        } else {
            this.setResult(-1, intent);
        }
        this.finish();
    }

    public void finishUrgently() {
        this.prepareFinish();
        super.finish();
    }

    public Camera.Parameters forTestGetCameraParameters() {
        throw new UnsupportedOperationException("unsupported method");
    }

    protected abstract Rect getPreviewSize();

    public SoundPlayer getSoundPlayer() {
        return this.mSoundPlayer;
    }

    @Override
    public boolean isAlertDialogOpened() {
        return this.mIsAlertDialogOpened;
    }

    public boolean isPhoneCallWorking() {
        TelephonyManager telephonyManager = (TelephonyManager)this.getSystemService("phone");
        if (telephonyManager != null && telephonyManager.getCallState() != 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean isPreinstalledOrUpdatedPreinstalledApp() {
        boolean bl = false;
        try {
            Object object = this.getPackageManager();
            if (object != null) {
                if ((object = object.getPackageInfo(this.getPackageName(), 0)) != null && object.applicationInfo != null) {
                    int n = object.applicationInfo.flags;
                    if ((n & 128) != 0) return true;
                    if ((n & 1) == 0) return bl;
                    return true;
                }
                CameraLogger.w("BaseExtendedActivity", "Can't get packeage info. assume user app.");
                return false;
            }
            CameraLogger.w("BaseExtendedActivity", "Can't get packeage manager. assume user app.");
            return false;
        }
        catch (PackageManager.NameNotFoundException var3_3) {
            CameraLogger.w("BaseExtendedActivity", "Can't get packeage info. assume user app.");
            return false;
        }
    }

    @Override
    public void onBackPressed() {
        this.terminateApplication();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        this.mLaunchedBy = BaseActivity.LaunchedBy.INTENT;
        super.onCreate(bundle);
    }

    @Override
    protected void onDestroy() {
        this.mPhoneStateListener = null;
        super.onDestroy();
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.setIntent(intent);
        this.mLaunchedBy = BaseActivity.LaunchedBy.INTENT;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onPause() {
        if (this.mStartUpGuardian != null) {
            this.mStartUpGuardian.pause();
            this.mStartUpGuardian = null;
        } else {
            CameraLogger.e("BaseExtendedActivity", "onPause():[Application is already paused.]");
        }
        this.unregisterReceiver(this.mUserPresentIntentReceiver);
        this.cancelCheckAutoUploadSetting();
        this.mLaunchedBy = BaseActivity.LaunchedBy.UNKNOWN;
        super.onPause();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onResume() {
        this.mStartUpGuardian = StaticConfigurationUtil.isForceSound() ? new StartUpGuardianForceSoundOn() : new StartUpGuardianUnlimited();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.USER_PRESENT");
        this.registerReceiver(this.mUserPresentIntentReceiver, intentFilter);
        this.requestCheckAutoUploadSetting();
        if (this.mLaunchedBy == BaseActivity.LaunchedBy.UNKNOWN) {
            this.mLaunchedBy = BaseActivity.LaunchedBy.HISTORY;
        }
        super.onResume();
        this.mStorageManager.resume();
        this.mStartUpGuardian.resume();
    }

    @Override
    public void onStart() {
        super.onStart();
        this.mPhoneStateListener = new ExtendedPhoneStateListener();
        ((TelephonyManager)this.getSystemService("phone")).listen(this.mPhoneStateListener, 32);
    }

    @Override
    protected void onStop() {
        ((TelephonyManager)this.getSystemService("phone")).listen(this.mPhoneStateListener, 0);
        this.mPhoneStateListener = null;
        super.onStop();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onStoreComplete(boolean bl, Uri uri, String string, int n) {
        if (this.isOneShot()) {
            if (this.getExtraOutput() == null) {
                Intent intent = null;
                if (bl) {
                    intent = OneShotUtility.createResultIntent(this, uri, string, n);
                }
                this.finishOneShot(intent);
            } else {
                if (bl) {
                    this.setResult(-1);
                } else {
                    this.setResult(0);
                }
                this.finish();
            }
        }
        this.enableAutoOffTimer();
    }

    protected abstract void prepareFinish();

    protected void requestCheckAutoUploadSetting() {
        AutoUploadSettings.getInstance().request(this, new AutoUploadSettingCheckCallback());
    }

    public void resumeFromIncomingCall() {
        this.dismissDialog();
        this.mStartUpGuardian.tryToResumeAll();
    }

    @Override
    public void setAlertDialogIsOpened(boolean bl) {
        this.mIsAlertDialogOpened = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setDestinationToSave() {
        StorageManager.StorageType storageType = this.hasExtraOutputPath() ? StorageUtil.getStorageTypeFromPath(StorageUtil.getPathFromUri(this, this.getExtraOutput()), this) : StorageUtil.getStorageTypeFromSaveDestination((SaveDestination)this.mCommonSettings.get(CommonSettingKey.SAVE_DESTINATION));
        this.mStorageManager.setCurrentStorage(storageType);
    }

    public void setPhoneStateChangedListener(PhoneStateChangedListener phoneStateChangedListener) {
        this.mPhoneStateChangedListener = phoneStateChangedListener;
    }

    protected void showAndConfirmDisclaimer() {
    }

    @Override
    public void terminateApplication() {
        this.finish();
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

    private static class CameraActivityFinishBroadcastReceiver
    extends BroadcastReceiver {
        BaseExtendedActivity mBaseExtendedActivity = null;

        CameraActivityFinishBroadcastReceiver(BaseExtendedActivity baseExtendedActivity) {
            this.mBaseExtendedActivity = baseExtendedActivity;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            this.mBaseExtendedActivity.finish();
        }
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
                case 0: {
                    if (BaseExtendedActivity.this.mStartUpGuardian == null) return;
                    {
                        BaseExtendedActivity.this.mStartUpGuardian.resume();
                        return;
                    }
                }
                case 1: {
                    if (BaseExtendedActivity.this.mPhoneStateChangedListener == null) return;
                    {
                        BaseExtendedActivity.this.mPhoneStateChangedListener.onRinging();
                        return;
                    }
                }
                default: {
                    return;
                }
                case 2: 
            }
            if (BaseExtendedActivity.this.mPhoneStateChangedListener == null) return;
            {
                BaseExtendedActivity.this.mPhoneStateChangedListener.onOffHook();
                return;
            }
        }
    }

    public static interface PhoneStateChangedListener {
        public void onOffHook();

        public void onRinging();
    }

    private abstract class StartUpGuardian {
        private boolean mIsAlreadyResumed;

        private StartUpGuardian() {
            this.mIsAlreadyResumed = false;
        }

        public void pause() {
        }

        public void resume() {
            if (((KeyguardManager)BaseExtendedActivity.this.getSystemService("keyguard")).inKeyguardRestrictedInputMode() && Settings.Global.getInt(BaseExtendedActivity.this.getContentResolver(), "device_provisioned", 0) != 0) {
                BaseExtendedActivity.this.mIsKeyguardAvailable = true;
                return;
            }
            BaseExtendedActivity.this.mIsKeyguardAvailable = false;
        }

        protected void tryToResumeAll() {
            if (!(BaseExtendedActivity.this.mIsKeyguardAvailable || this.mIsAlreadyResumed)) {
                this.mIsAlreadyResumed = true;
                if (!BaseExtendedActivity.this.isPreinstalledOrUpdatedPreinstalledApp()) {
                    BaseExtendedActivity.this.showAndConfirmDisclaimer();
                }
                BaseExtendedActivity.this.resumeAll();
            }
        }
    }

    private class StartUpGuardianForceSoundOn
    extends StartUpGuardian {
        private StartUpGuardianForceSoundOn() {
        }

        @Override
        public void pause() {
            super.pause();
            BaseExtendedActivity.this.dismissDialog();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void resume() {
            super.resume();
            if (!BaseExtendedActivity.this.isPhoneCallWorking()) {
                BaseExtendedActivity.this.pauseAudioPlayback();
                if (BaseExtendedActivity.this.mNonCancelableErrorDialog == null) {
                    BaseExtendedActivity.this.dismissDialog();
                    this.tryToResumeAll();
                    return;
                }
                BaseExtendedActivity.this.resumeFromIncomingCall();
                return;
            } else {
                if (BaseExtendedActivity.this.mNonCancelableErrorDialog != null) return;
                {
                    BaseExtendedActivity.this.mNonCancelableErrorDialog = BaseExtendedActivity.this.getCallingDialog();
                    return;
                }
            }
        }
    }

    private class StartUpGuardianUnlimited
    extends StartUpGuardian {
        private StartUpGuardianUnlimited() {
        }

        @Override
        public void pause() {
            super.pause();
        }

        @Override
        public void resume() {
            super.resume();
            this.tryToResumeAll();
        }
    }

    private class UserPresentIntentReceiver
    extends BroadcastReceiver {
        private UserPresentIntentReceiver() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.USER_PRESENT") && BaseExtendedActivity.this.mStartUpGuardian != null) {
                BaseExtendedActivity.this.mStartUpGuardian.resume();
            }
        }
    }

}

