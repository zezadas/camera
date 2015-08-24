/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.recorder;

import android.content.Context;
import android.os.Handler;
import com.sonymobile.cameracommon.media.recorder.MediaRecorderController;
import com.sonymobile.cameracommon.media.recorder.RecorderInterface;

public class RecorderFactory {
    public static RecorderInterface create(Context context, RecorderInterface.RecorderListener recorderListener, Handler handler, int n, boolean bl) {
        return new MediaRecorderController(context, recorderListener, handler, n, bl);
    }
}

