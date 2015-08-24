/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.smartcover;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonyericsson.android.camera.smartcover.SmartCoverActivity;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;

public class SmartCoverReceiver
extends BroadcastReceiver {
    private static final String TAG = SmartCoverReceiver.class.getSimpleName();

    @Override
    public void onReceive(Context context, Intent intent) {
        if (this.isOrderedBroadcast()) {
            this.abortBroadcast();
        }
        intent = new Intent("android.intent.action.MAIN");
        intent.setClass(context, SmartCoverActivity.class);
        if (!CommonUtility.isActivityAvailable(context, intent)) {
            CameraLogger.w(TAG, "SmartCoverActivity is disabled.");
            return;
        }
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(268435456);
        context.startActivity(intent);
    }
}

