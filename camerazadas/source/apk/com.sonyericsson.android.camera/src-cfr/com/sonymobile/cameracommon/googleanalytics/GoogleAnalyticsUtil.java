/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.googleanalytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tagmanager.Container;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.TagManager;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.googleanalytics.CameraAddonReceiverForGA;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;
import com.sonymobile.cameracommon.googleanalytics.parameters.Screen;
import com.sonymobile.gagtmhelper.GaGtmExceptionParser;
import com.sonymobile.gagtmhelper.GaGtmUtils;
import java.util.concurrent.TimeUnit;

public class GoogleAnalyticsUtil {
    private static final String CONTAINER_ID = "GTM-W4X44J";
    private static final int MY_WANTED_TIMEOUT_MILLISECONDS = 0;
    private static final String TAG = GoogleAnalyticsUtil.class.getSimpleName();
    private static final GoogleAnalyticsUtil sInstance = new GoogleAnalyticsUtil();
    private final CameraAddonReceiverForGA mCameraAddonReceiverForGA;
    private Context mContext;
    private boolean mIsFailedToOpenCamera;
    private boolean mIsViewEventSent;
    private PanoramaInfo mPanoramaInfo;
    private CurrentUserOperationHolder mUserOperationInfo;

    private GoogleAnalyticsUtil() {
        this.mUserOperationInfo = new CurrentUserOperationHolder();
        this.mPanoramaInfo = new PanoramaInfo();
        this.mContext = null;
        this.mIsViewEventSent = false;
        this.mIsFailedToOpenCamera = false;
        this.mCameraAddonReceiverForGA = new CameraAddonReceiverForGA();
    }

    public static GoogleAnalyticsUtil getInstance() {
        return sInstance;
    }

    private static void loadGtmContainer(final Context context) {
        TagManager tagManager = TagManager.getInstance(context.getApplicationContext());
        tagManager.setVerboseLoggingEnabled(true);
        tagManager.loadContainerPreferNonDefault("GTM-W4X44J", R.raw.gtm_default_container).setResultCallback(new ResultCallback<ContainerHolder>(){

            @Override
            public void onResult(ContainerHolder containerHolder) {
                if (containerHolder != null && containerHolder.getStatus().isSuccess()) {
                    if (containerHolder.getContainer() != null) {
                        // empty if block
                    }
                    GaGtmUtils.setContainerHolder(containerHolder);
                    GaGtmUtils.pushInitDefaultsToDataLayer(context.getApplicationContext());
                    GaGtmUtils.setContainerDefaults(context.getApplicationContext());
                    GaGtmExceptionParser.enableExceptionParsing(context.getApplicationContext());
                }
            }
        }, 0, TimeUnit.MILLISECONDS);
    }

    private void registerCameraAddonReceiverForGA() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.sonymobile.camera.addon.action.ADD_BUTTON_PRESSED");
        intentFilter.addAction("com.sonymobile.camera.addon.action.APP_SELECTED");
        try {
            this.mContext.registerReceiver(this.mCameraAddonReceiverForGA, intentFilter, "com.sonymobile.permission.CAMERA_ADDON_NOTIFY_GA", null);
            return;
        }
        catch (RuntimeException var1_2) {
            CameraLogger.d(TAG, "CameraAddonReceiverForGA is already binded.");
            return;
        }
    }

    private void sendEvent(Event.Category category, String string, String string2, long l) {
        GaGtmUtils.pushEvent(this.mContext, category.toString(), string, string2, l);
    }

    private void sendView(Screen screen) {
        if (screen == null) {
            return;
        }
        GaGtmUtils.pushAppView(this.mContext, screen.toString());
    }

    private void setCustomDimension(String string, String string2) {
        GaGtmUtils.pushToDataLayer(this.mContext, DataLayer.mapOf(string, string2));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setLaunchedBy(BaseActivity object, BaseActivity.LaunchedBy object2) {
        CustomDimension.GALaunchedBy gALaunchedBy = CustomDimension.GALaunchedBy.OTHER;
        switch (.$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LaunchedBy[object2.ordinal()]) {
            default: {
                object = gALaunchedBy;
                break;
            }
            case 1: {
                object2 = object.getIntent();
                boolean bl = object.isOneShot();
                boolean bl2 = object2.hasExtra("com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE");
                object = object2.getStringExtra("android.intent.extra.SUBJECT");
                boolean bl3 = object2.hasCategory("android.intent.category.LAUNCHER");
                object = bl2 && bl3 ? CustomDimension.GALaunchedBy.MODE_SELECTOR : (bl ? CustomDimension.GALaunchedBy.ONE_SHOT_APP : ("CameraWidget".equals(object) ? CustomDimension.GALaunchedBy.CAMERA_WIDGET : CustomDimension.GALaunchedBy.HOME));
            }
        }
        this.setCustomDimension("gagtm-launchedBy", object.toString());
    }

    private void unregisterCameraAddonReceiverForGA() {
        try {
            this.mContext.unregisterReceiver(this.mCameraAddonReceiverForGA);
            return;
        }
        catch (RuntimeException var1_1) {
            CameraLogger.d(TAG, "CameraAddonReceiverForGA is already unbinded.");
            return;
        }
    }

    public void onCreate(Context context) {
        GaGtmUtils.readAndSetGaEnabled(context);
        this.mContext = context;
        if (GaGtmUtils.isSomcGaEnabled(this.mContext) && GaGtmUtils.getContainerHolder() == null) {
            GoogleAnalyticsUtil.loadGtmContainer(this.mContext);
        }
    }

    public void onPause(boolean bl) {
        this.mIsViewEventSent = false;
        this.mUserOperationInfo.sendUserOperation();
        this.mPanoramaInfo.sendPanoramaInfo();
        if (!bl) {
            this.unregisterCameraAddonReceiverForGA();
        }
    }

    public void onResume() {
        this.registerCameraAddonReceiverForGA();
    }

    public void sendCameraNotAvailableEvent() {
        Event.CameraNotAvailable cameraNotAvailable = Event.CameraNotAvailable.getType(this.mIsFailedToOpenCamera);
        this.sendEvent(Event.Category.CAMERA_NOT_AVAILABLE, cameraNotAvailable.toString(), null);
        this.mIsFailedToOpenCamera = false;
    }

    public void sendEvent(Event.Category category, Event.Action action, Event.Label label) {
        this.sendEvent(category, action, label, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void sendEvent(Event.Category category, Event.Action object, Event.Label object2, long l) {
        Object var6_5 = null;
        object = object == null ? null : object.toString();
        object2 = object2 == null ? var6_5 : object2.toString();
        this.sendEvent(category, (String)object, (String)object2, l);
    }

    public void sendEvent(Event.Category category, String string, String string2) {
        this.sendEvent(category, string, string2, 0);
    }

    public void sendMultiCameraConnectionFailedEvent(Event.MultiCameraConnectionFailed multiCameraConnectionFailed) {
        this.sendEvent(Event.Category.MULTI_CAMERA_CONNECTION_FAILED, multiCameraConnectionFailed, null);
    }

    public void sendRecordingEvent(Event.UserOperation userOperation, boolean bl, int n, boolean bl2) {
        Event.StopOperation stopOperation = Event.StopOperation.getType(bl);
        if ((n/=1000) > 0) {
            if (!bl2) {
                this.setUserOperation(userOperation);
            }
            this.sendEvent(Event.Category.RECORDING, stopOperation.toString(), String.valueOf(n) + "_Sec");
        }
    }

    public void sendSettingsCommon(CommonSettingValue object) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey[object.getCommonSettingKey().ordinal()]) {
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
        String string = object.getCommonSettingKey().toString();
        object = object.toString();
        GoogleAnalyticsUtil.getInstance().sendEvent(Event.Category.SETTINGS_COMMON, string, (String)object);
    }

    public void sendSettingsCommon(String string) {
        GoogleAnalyticsUtil.getInstance().sendEvent(Event.Category.SETTINGS_COMMON, string, null);
    }

    public void sendThermalEvent(boolean bl, boolean bl2) {
        Event.ThermalMitigation thermalMitigation = Event.ThermalMitigation.getType(bl);
        Event.ForceQuit forceQuit = Event.ForceQuit.getType(bl2);
        this.sendEvent(Event.Category.THERMAL_MITIGATION, thermalMitigation, forceQuit);
    }

    public void sendView(BaseActivity baseActivity, BaseActivity.LaunchedBy launchedBy, Screen screen) {
        if (!this.mIsViewEventSent) {
            this.setLaunchedBy(baseActivity, launchedBy);
            this.sendView(screen);
            this.mIsViewEventSent = true;
        }
    }

    public void sendView(CustomDimension.GALaunchedBy gALaunchedBy, Screen screen) {
        if (!(this.mIsViewEventSent && gALaunchedBy != CustomDimension.GALaunchedBy.SAME_ACTIVITY)) {
            this.setCustomDimension("gagtm-launchedBy", gALaunchedBy.toString());
            this.sendView(screen);
            this.mIsViewEventSent = true;
        }
    }

    public void setCameraNotAvailableFailedToOpen() {
        this.mIsFailedToOpenCamera = true;
    }

    public void setUserOperation(Event.UserOperation userOperation) {
        this.mUserOperationInfo.setUserOperation(userOperation);
    }

    public void setViewerLaunched() {
        this.mUserOperationInfo.setViewerLaunched();
        this.mPanoramaInfo.setViewerLaunched();
    }

    public void succeedInPanorama() {
        this.mPanoramaInfo.succeedInPanorama();
    }

    public void tryPanorama() {
        this.mPanoramaInfo.tryPanorama();
    }

    private class CurrentUserOperationHolder {
        private int mShootingNum;
        private Event.UserOperation mUserOperation;

        private CurrentUserOperationHolder() {
            this.mUserOperation = null;
            this.mShootingNum = 0;
        }

        public void clear() {
            this.mUserOperation = null;
            this.mShootingNum = 0;
        }

        public void sendUserOperation() {
            Event.UserOperation userOperation = this.mUserOperation;
            if (userOperation != null) {
                int n = this.mShootingNum;
                GoogleAnalyticsUtil.this.sendEvent(userOperation.getCategory(), userOperation.toString(), String.valueOf(n) + "_Shots");
            }
            this.clear();
        }

        public void setUserOperation(Event.UserOperation userOperation) {
            if (userOperation.isShooting()) {
                ++this.mShootingNum;
            }
            if (this.mUserOperation == null) {
                this.mUserOperation = userOperation;
            }
            this.mUserOperation = userOperation.updateOperation(this.mUserOperation);
        }

        public void setViewerLaunched() {
            if (this.mUserOperation != null) {
                this.setUserOperation(this.mUserOperation.getViewer());
            }
        }
    }

    private class PanoramaInfo {
        private int mSuccessNum;
        private int mTryNum;
        private Event.ViewerLaunched mViewerLaunched;

        private PanoramaInfo() {
            this.mTryNum = 0;
            this.mSuccessNum = 0;
            this.mViewerLaunched = Event.ViewerLaunched.NOT_LAUNCHED;
        }

        private void sendPanoramaInfo() {
            if (this.mTryNum > 0) {
                int n = this.mTryNum;
                int n2 = this.mSuccessNum;
                GoogleAnalyticsUtil.this.sendEvent(Event.Category.PANORAMA, String.valueOf(n) + "_try", String.valueOf(n2) + "_success", this.mViewerLaunched.mValue);
            }
            this.clear();
        }

        public void clear() {
            this.mTryNum = 0;
            this.mSuccessNum = 0;
            this.mViewerLaunched = Event.ViewerLaunched.NOT_LAUNCHED;
        }

        public void setViewerLaunched() {
            if (this.mTryNum > 0) {
                this.mViewerLaunched = Event.ViewerLaunched.LAUNCHED;
            }
        }

        public void succeedInPanorama() {
            ++this.mSuccessNum;
        }

        public void tryPanorama() {
            ++this.mTryNum;
        }
    }

}

