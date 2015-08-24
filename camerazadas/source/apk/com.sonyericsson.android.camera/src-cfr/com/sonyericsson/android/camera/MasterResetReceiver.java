/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public class MasterResetReceiver
extends BroadcastReceiver {
    private static final String TAG = "MasterResetReceiver";

    private static void resetSharedPrefs(String string, Context context) {
        context.getSharedPreferences(string, 0).edit().clear().commit();
    }

    @Override
    public void onReceive(Context context, Intent object) {
        MasterResetReceiver.resetSharedPrefs("com.sonyericsson.android.camera.shared_preferences", context);
        object = HardwareCapability.getInstance();
        for (int i = 0; i < HardwareCapability.getNumberOfCameras(); ++i) {
            MasterResetReceiver.resetSharedPrefs(object.getFileName(i), context);
        }
    }
}

