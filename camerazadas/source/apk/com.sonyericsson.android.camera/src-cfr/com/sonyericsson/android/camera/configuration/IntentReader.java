/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Intent;

public class IntentReader {
    private static final long INVALID = -1;
    private static final String KEY_CROP = "crop";
    private static final String TAG = IntentReader.class.getSimpleName();
    String mCropValue;
    long mVideoMaxDurationInMillisecs;
    long mVideoMaxFileSizeInBytes;
    long mVideoQuality;
    boolean mhasLimit = false;

    private void setCropValue(String string) {
        this.mCropValue = string;
    }

    private void setVideoMaxDurationInMillisecs(long l) {
        this.mVideoMaxDurationInMillisecs = l;
        if (l > 0) {
            this.mhasLimit = true;
        }
    }

    private void setVideoMaxFileSizeInBytes(long l) {
        this.mVideoMaxFileSizeInBytes = l;
        if (l > 0) {
            this.mhasLimit = true;
        }
    }

    private void setVideoQuality(long l, long l2, long l3) {
        if (l == 0) {
            this.mVideoQuality = 0;
            return;
        }
        if (l == 1) {
            this.mVideoQuality = 1;
            return;
        }
        if (l == 5) {
            this.mVideoQuality = 5;
            return;
        }
        if (l == 4) {
            this.mVideoQuality = 4;
            return;
        }
        this.mVideoQuality = 1;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void readIntent(Intent intent) {
        String string = intent.getAction();
        if (string.equals("android.media.action.VIDEO_CAPTURE")) {
            int n;
            long l = intent.getLongExtra("android.intent.extra.sizeLimit", -1);
            if (l == -1) {
                this.setVideoMaxFileSizeInBytes(intent.getIntExtra("android.intent.extra.sizeLimit", -1));
            } else {
                this.setVideoMaxFileSizeInBytes(l);
            }
            if ((long)(n = intent.getIntExtra("android.intent.extra.durationLimit", -1)) == -1) {
                this.setVideoMaxDurationInMillisecs(-1);
            } else {
                this.setVideoMaxDurationInMillisecs((long)n * 1000);
            }
            this.setVideoQuality(intent.getIntExtra("android.intent.extra.videoQuality", -1), this.mVideoMaxFileSizeInBytes, this.mVideoMaxDurationInMillisecs);
            this.setCropValue(null);
            return;
        }
        if (!string.equals("android.media.action.IMAGE_CAPTURE")) {
            this.setVideoMaxFileSizeInBytes(-1);
            this.setVideoMaxDurationInMillisecs(-1);
            this.setVideoQuality(-1, this.mVideoMaxFileSizeInBytes, this.mVideoMaxDurationInMillisecs);
            this.setCropValue(null);
            return;
        }
        if (intent.hasExtra("crop")) {
            this.setCropValue(intent.getStringExtra("crop"));
        } else {
            this.setCropValue(null);
        }
        this.setVideoMaxFileSizeInBytes(-1);
        this.setVideoMaxDurationInMillisecs(-1);
        this.setVideoQuality(-1, this.mVideoMaxFileSizeInBytes, this.mVideoMaxDurationInMillisecs);
    }
}

