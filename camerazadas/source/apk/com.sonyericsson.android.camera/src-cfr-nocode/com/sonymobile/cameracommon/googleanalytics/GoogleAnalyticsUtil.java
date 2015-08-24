/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.googleanalytics;

import android.content.Context;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonymobile.cameracommon.googleanalytics.CameraAddonReceiverForGA;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;
import com.sonymobile.cameracommon.googleanalytics.parameters.Screen;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GoogleAnalyticsUtil {
    private static final String CONTAINER_ID = "GTM-W4X44J";
    private static final int MY_WANTED_TIMEOUT_MILLISECONDS = 0;
    private static final String TAG;
    private static final GoogleAnalyticsUtil sInstance;
    private final CameraAddonReceiverForGA mCameraAddonReceiverForGA;
    private Context mContext;
    private boolean mIsFailedToOpenCamera;
    private boolean mIsViewEventSent;
    private PanoramaInfo mPanoramaInfo;
    private CurrentUserOperationHolder mUserOperationInfo;

    static;

    private GoogleAnalyticsUtil();

    static /* synthetic */ void access$100(GoogleAnalyticsUtil var0, Event.Category var1, String var2, String var3, long var4);

    public static GoogleAnalyticsUtil getInstance();

    private static void loadGtmContainer(Context var0);

    private void registerCameraAddonReceiverForGA();

    private void sendEvent(Event.Category var1, String var2, String var3, long var4);

    private void sendView(Screen var1);

    private void setCustomDimension(String var1, String var2);

    private void setLaunchedBy(BaseActivity var1, BaseActivity.LaunchedBy var2);

    private void unregisterCameraAddonReceiverForGA();

    public void onCreate(Context var1);

    public void onPause(boolean var1);

    public void onResume();

    public void sendCameraNotAvailableEvent();

    public void sendEvent(Event.Category var1, Event.Action var2, Event.Label var3);

    public void sendEvent(Event.Category var1, Event.Action var2, Event.Label var3, long var4);

    public void sendEvent(Event.Category var1, String var2, String var3);

    public void sendMultiCameraConnectionFailedEvent(Event.MultiCameraConnectionFailed var1);

    public void sendRecordingEvent(Event.UserOperation var1, boolean var2, int var3, boolean var4);

    public void sendSettingsCommon(CommonSettingValue var1);

    public void sendSettingsCommon(String var1);

    public void sendThermalEvent(boolean var1, boolean var2);

    public void sendView(BaseActivity var1, BaseActivity.LaunchedBy var2, Screen var3);

    public void sendView(CustomDimension.GALaunchedBy var1, Screen var2);

    public void setCameraNotAvailableFailedToOpen();

    public void setUserOperation(Event.UserOperation var1);

    public void setViewerLaunched();

    public void succeedInPanorama();

    public void tryPanorama();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CurrentUserOperationHolder {
        private int mShootingNum;
        private Event.UserOperation mUserOperation;
        final /* synthetic */ GoogleAnalyticsUtil this$0;

        private CurrentUserOperationHolder(GoogleAnalyticsUtil var1);

        /* synthetic */ CurrentUserOperationHolder(GoogleAnalyticsUtil var1,  var2);

        public void clear();

        public void sendUserOperation();

        public void setUserOperation(Event.UserOperation var1);

        public void setViewerLaunched();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PanoramaInfo {
        private int mSuccessNum;
        private int mTryNum;
        private Event.ViewerLaunched mViewerLaunched;
        final /* synthetic */ GoogleAnalyticsUtil this$0;

        private PanoramaInfo(GoogleAnalyticsUtil var1);

        /* synthetic */ PanoramaInfo(GoogleAnalyticsUtil var1,  var2);

        static /* synthetic */ void access$300(PanoramaInfo var0);

        private void sendPanoramaInfo();

        public void clear();

        public void setViewerLaunched();

        public void succeedInPanorama();

        public void tryPanorama();
    }

}

