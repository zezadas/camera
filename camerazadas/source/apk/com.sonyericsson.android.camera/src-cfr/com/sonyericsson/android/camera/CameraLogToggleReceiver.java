/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonyericsson.android.camera.configuration.Configurations;

public class CameraLogToggleReceiver
extends BroadcastReceiver {
    private static final String TAG = "CameraLogToggleReceiver";

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onReceive(Context context, Intent intent) {
        boolean bl = !Configurations.isLogForOperatorsEnabled();
        Configurations.setLogForOperators(bl);
    }
}

