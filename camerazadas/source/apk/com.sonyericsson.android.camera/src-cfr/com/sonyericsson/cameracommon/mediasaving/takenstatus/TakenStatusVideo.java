/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.takenstatus;

public class TakenStatusVideo {
    private static final String TAG = TakenStatusVideo.class.getSimpleName();
    protected long mDuration = 0;
    public final long maxDurationMills;
    public final long maxFileSizeBytes;

    public TakenStatusVideo(long l, long l2) {
        this.maxDurationMills = l;
        this.maxFileSizeBytes = l2;
    }

    public TakenStatusVideo(TakenStatusVideo takenStatusVideo) {
        this.mDuration = takenStatusVideo.mDuration;
        this.maxDurationMills = takenStatusVideo.maxDurationMills;
        this.maxFileSizeBytes = takenStatusVideo.maxFileSizeBytes;
    }

    public void log() {
    }
}

