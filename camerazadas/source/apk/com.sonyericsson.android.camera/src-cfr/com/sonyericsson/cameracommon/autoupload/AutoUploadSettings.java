/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.autoupload;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Parcelable;
import android.view.Window;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

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
    private static final String TAG = AutoUploadSettings.class.getSimpleName();
    private static final AutoUploadSettings sInstance = new AutoUploadSettings();
    private BroadcastReceiver mBroadcastReceiver;
    private AutoUploadSettingNotifyListener mListener = null;
    private Map<String, Boolean> mPluginMap = new HashMap<String, Boolean>();

    private AutoUploadSettings() {
        this.mBroadcastReceiver = new BroadcastReceiver(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void onReceive(Context context, Intent object) {
                synchronized (this) {
                    AutoUploadSetting autoUploadSetting;
                    String string = autoUploadSetting.getAction();
                    String string2 = autoUploadSetting.getStringExtra("package_class_name");
                    if (string.equals("com.sonymobile.android.camera.action.ACTION_NOTIFY_UPLOADER_SETTING") && string2 != null) {
                        int n = autoUploadSetting.getIntExtra("result_code", 0);
                        autoUploadSetting = AutoUploadSetting.UNKNOWN;
                        if (n == 1) {
                            autoUploadSetting = AutoUploadSetting.ON;
                            AutoUploadSettings.this.mPluginMap.put(string2, true);
                        } else if (n == 2) {
                            autoUploadSetting = AutoUploadSetting.OFF;
                            AutoUploadSettings.this.mPluginMap.put(string2, true);
                        }
                        if (AutoUploadSettings.this.mListener != null) {
                            AutoUploadSettings.this.mListener.onAutoUploadSettingNotified(context, string2, autoUploadSetting);
                        }
                    }
                    return;
                }
            }
        };
    }

    public static AutoUploadSettings getInstance() {
        return sInstance;
    }

    public static boolean isPermissionGranted(Context context) {
        if (context.getPackageManager().checkPermission("com.sonymobile.permission.SOMC_AUTO_UPLOADER", context.getPackageName()) == 0) {
            return true;
        }
        return false;
    }

    private void registerReceiver(Context context) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.sonymobile.android.camera.action.ACTION_NOTIFY_UPLOADER_SETTING");
            context.registerReceiver(this.mBroadcastReceiver, intentFilter, "com.sonymobile.permission.SOMC_CAMERA", null);
            return;
        }
        catch (RuntimeException var1_2) {
            CameraLogger.e(TAG, "registerReceiver failed.", var1_2);
            return;
        }
    }

    public static void sendBroadcastIntent(Context context, Uri parcelable) {
        parcelable = new Intent("com.sonymobile.android.camera.action.NEW_PICTURE", (Uri)parcelable);
        parcelable.addFlags(32);
        context.sendBroadcast((Intent)parcelable, "com.sonymobile.permission.SOMC_AUTO_UPLOADER");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void cancel(Context context) {
        synchronized (this) {
            this.mListener = null;
            this.mPluginMap.clear();
            try {
                context.unregisterReceiver(this.mBroadcastReceiver);
                do {
                    return;
                    break;
                } while (true);
            }
            catch (RuntimeException var1_2) {
                try {
                    CameraLogger.e(TAG, "AutoUpload is already unbinded.");
                    return;
                }
                catch (Throwable var1_3) {
                    throw var1_3;
                }
                finally {
                }
            }
        }
    }

    public void disableAutoUpload(Context context) {
        this.registerReceiver(context);
        Intent intent = new Intent();
        intent.setAction("com.sonymobile.android.camera.action.ACTION_DISABLE_UPLOADER");
        intent.addFlags(32);
        context.sendBroadcast(intent, "com.sonymobile.permission.SOMC_AUTO_UPLOADER");
    }

    public boolean isAvailable() {
        synchronized (this) {
            boolean bl = this.mPluginMap.containsValue(true);
            return bl;
        }
    }

    public void request(Context context, AutoUploadSettingNotifyListener object) {
        synchronized (this) {
            this.mListener = object;
            this.mPluginMap.clear();
            this.registerReceiver(context);
            object = new Intent();
            object.setAction("com.sonymobile.android.camera.action.ACTION_REQUEST_NOTIFY_UPLOADER_SETTING");
            object.addFlags(32);
            context.sendBroadcast((Intent)object, "com.sonymobile.permission.SOMC_AUTO_UPLOADER");
            return;
        }
    }

    protected void startPluginActivity(Context context, String string) {
        Intent intent = new Intent();
        intent.setAction("com.sonymobile.android.camera.action.ACTION_ENABLE_UPLOADER");
        intent.addFlags(32);
        intent.putExtra("package_class_name", string);
        context.sendBroadcast(intent, "com.sonymobile.permission.SOMC_AUTO_UPLOADER");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void startPluginListActivity(Context context) {
        synchronized (this) {
            int n = this.mPluginMap.size();
            if (n > 1) {
                Intent intent = new Intent();
                intent.setClassName(context.getPackageName(), "com.sonyericsson.cameracommon.autoupload.AutoUploadPluginListActivity");
                ((Activity)context).getWindow().addFlags(2048);
                ((Activity)context).getWindow().clearFlags(1024);
                if (CommonUtility.isActivityAvailable(context, intent)) {
                    context.startActivity(intent);
                }
            } else if (n == 1) {
                this.startPluginActivity(context, this.mPluginMap.keySet().iterator().next());
            }
            return;
        }
    }

    public static enum AutoUploadSetting {
        UNKNOWN,
        ON,
        OFF;
        

        private AutoUploadSetting() {
        }
    }

}

