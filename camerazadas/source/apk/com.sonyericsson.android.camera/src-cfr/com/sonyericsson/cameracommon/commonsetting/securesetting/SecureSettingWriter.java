/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.securesetting;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class SecureSettingWriter {
    private static final String TAG = SecureSettingWriter.class.getSimpleName();

    public static void save(Context context, String string, String string2) {
        SecureSettingWriter.saveToSettingsSecureProvider(context, "key.fcc.status", string);
        SecureSettingWriter.saveToSettingsSecureProvider(context, "com.sonymobile.camera.quick_launch", string2);
    }

    private static void saveToSettingsSecureProvider(Context context, String string, String string2) {
        try {
            boolean bl = Settings.Secure.putString(context.getContentResolver(), string, string2);
            if (!bl) {
                // empty if block
            }
            return;
        }
        catch (SecurityException var0_1) {
            CameraLogger.w(TAG, "Can not access to Settings.Secure provider", var0_1);
            return;
        }
    }
}

