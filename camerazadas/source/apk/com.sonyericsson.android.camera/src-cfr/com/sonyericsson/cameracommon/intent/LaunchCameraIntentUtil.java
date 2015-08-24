/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.intent;

import android.content.Intent;
import com.sonyericsson.cameracommon.intent.LaunchCameraIntentBuilder;

public class LaunchCameraIntentUtil {
    private static final String TAG = LaunchCameraIntentUtil.class.getSimpleName();

    public static LaunchCameraIntentBuilder buildIntent() {
        return new LaunchCameraIntentBuilder();
    }

    public static void overwriteCallingMode(Intent intent, String string) {
        intent.putExtra("calling-mode", string);
    }
}

