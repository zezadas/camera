/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Intent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class IntentReader {
    private static final long INVALID = -1;
    private static final String KEY_CROP = "crop";
    private static final String TAG;
    String mCropValue;
    long mVideoMaxDurationInMillisecs;
    long mVideoMaxFileSizeInBytes;
    long mVideoQuality;
    boolean mhasLimit;

    static;

    public IntentReader();

    private void setCropValue(String var1);

    private void setVideoMaxDurationInMillisecs(long var1);

    private void setVideoMaxFileSizeInBytes(long var1);

    private void setVideoQuality(long var1, long var3, long var5);

    public void readIntent(Intent var1);
}

