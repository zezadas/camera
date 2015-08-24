/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.securesetting;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class SecureSettingReader {
    private static final String TAG = SecureSettingReader.class.getSimpleName();

    public static String load(Context object) {
        try {
            object = Settings.Secure.getString(object.getContentResolver(), "com.sonymobile.camera.quick_launch");
            if (object != null) {
                return object;
            }
        }
        catch (SecurityException var0_1) {
            CameraLogger.w(TAG, "[SecurityException] Can not access to Settings.Secure provider");
        }
        return null;
    }
}

