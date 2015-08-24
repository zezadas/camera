/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.app.Application;
import android.util.Log;

public class CameraApplication
extends Application {
    private static final String TAG = CameraApplication.class.getSimpleName();

    private static void logPerformance(String string) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + string + "]");
    }

    @Override
    public void onCreate() {
        super.onCreate();
    }
}

