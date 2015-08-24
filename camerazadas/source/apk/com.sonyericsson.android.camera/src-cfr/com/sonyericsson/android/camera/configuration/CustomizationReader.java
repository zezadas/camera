/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Context;
import android.content.res.Resources;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class CustomizationReader {
    private static final String TAG = CustomizationReader.class.getSimpleName();
    private static boolean sIsMmsSupported = false;

    private CustomizationReader() {
    }

    static boolean isMmsSupported() {
        return sIsMmsSupported;
    }

    public static boolean isMmsSupported(Context context) {
        CustomizationReader.readCustomization(context);
        return sIsMmsSupported;
    }

    static void readCustomization(Context context) {
        try {
            if (context.getResources().getBoolean(2131558401)) {
                sIsMmsSupported = false;
                return;
            }
            sIsMmsSupported = true;
            return;
        }
        catch (Resources.NotFoundException var0_1) {
            CameraLogger.e(TAG, "readCustomization failed.", var0_1);
            return;
        }
    }
}

