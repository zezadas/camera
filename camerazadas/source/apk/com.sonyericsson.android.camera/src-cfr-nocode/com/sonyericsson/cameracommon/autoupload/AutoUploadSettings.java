/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.autoupload;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AutoUploadSettings {
    public static final String ACTION_CAMERA_NEW_PICTURE = "com.sonymobile.android.camera.action.NEW_PICTURE";
    public static final String ACTION_DISABLE_UPLOADER = "com.sonymobile.android.camera.action.ACTION_DISABLE_UPLOADER";
    public static final String ACTION_ENABLE_UPLOADER = "com.sonymobile.android.camera.action.ACTION_ENABLE_UPLOADER";
    public static final String ACTION_NOTIFY_UPLOADER_SETTING = "com.sonymobile.android.camera.action.ACTION_NOTIFY_UPLOADER_SETTING";
    public static final String ACTION_REQUEST_NOTIFY_UPLOADER_SETTING = "com.sonymobile.android.camera.action.ACTION_REQUEST_NOTIFY_UPLOADER_SETTING";
    private static final int AUTOUPLOAD_OFF = 2;
    private static final int AUTOUPLOAD_ON = 1;
    private static final String PACKAGE_CLASS_NAME = "package_class_name";
    public static final String PERMISSION_AUTO_UPLOAD = "com.sonymobile.permission.SOMC_AUTO_UPLOADER";
    public static final String PERMISSION_CAMERA = "com.sonymobile.permission.SOMC_CAMERA";
    private static final String PLUGIN_LIST_ACTIVITY_CLASS_NAME = "com.sonyericsson.cameracommon.autoupload.AutoUploadPluginListActivity";
    private static final String RESULT_CODE = "result_code";
    private static final String TAG;
    private static final AutoUploadSettings sInstance;
    private BroadcastReceiver mBroadcastReceiver;
    private AutoUploadSettingNotifyListener mListener;
    private Map<String, Boolean> mPluginMap;

    static;

    private AutoUploadSettings();

    static /* synthetic */ Map access$000(AutoUploadSettings var0);

    static /* synthetic */ AutoUploadSettingNotifyListener access$100(AutoUploadSettings var0);

    public static AutoUploadSettings getInstance();

    public static boolean isPermissionGranted(Context var0);

    private void registerReceiver(Context var1);

    public static void sendBroadcastIntent(Context var0, Uri var1);

    public void cancel(Context var1);

    public void disableAutoUpload(Context var1);

    public boolean isAvailable();

    public void request(Context var1, AutoUploadSettingNotifyListener var2);

    protected void startPluginActivity(Context var1, String var2);

    public void startPluginListActivity(Context var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class AutoUploadSetting
    extends Enum<AutoUploadSetting> {
        private static final /* synthetic */ AutoUploadSetting[] $VALUES;
        public static final /* enum */ AutoUploadSetting OFF;
        public static final /* enum */ AutoUploadSetting ON;
        public static final /* enum */ AutoUploadSetting UNKNOWN;

        static;

        private AutoUploadSetting();

        public static AutoUploadSetting valueOf(String var0);

        public static AutoUploadSetting[] values();
    }

}

