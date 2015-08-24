/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.cameracommon.mediasaving.StorageController;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MaxVideoSize {
    public static final long GUARANTEED_MIN_DURATION_IN_MILLIS = 3000;
    public static final String TAG;
    private long mMaxDurationMillisecs;
    private long mMaxFileSizeBytes;

    static;

    public MaxVideoSize();

    public static MaxVideoSize create(Configurations var0, VideoSize var1, StorageController var2);

    private void setMaxDurationMillisecs(long var1);

    private void setMaxFileSizeBytes(long var1);

    public int getMaxDuration();

    public long getMaxFileSize();
}

