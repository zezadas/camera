/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;

public class NotificationStreamManager {
    private AudioManager mAudioManager;

    public NotificationStreamManager(Context context) {
        if (context != null) {
            this.mAudioManager = (AudioManager)context.getSystemService("audio");
        }
    }

    private static boolean isHigherThanLollipop() {
        if (Build.VERSION.SDK_INT > 21) {
            return true;
        }
        return false;
    }

    public void setStreamMute(boolean bl) {
        if (!(this.mAudioManager == null || NotificationStreamManager.isHigherThanLollipop())) {
            this.mAudioManager.setStreamMute(5, bl);
        }
    }
}

