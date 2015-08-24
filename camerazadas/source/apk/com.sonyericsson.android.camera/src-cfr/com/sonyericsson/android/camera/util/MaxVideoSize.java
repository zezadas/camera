/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.MmsOptions;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.utility.RecordingUtil;

public class MaxVideoSize {
    public static final long GUARANTEED_MIN_DURATION_IN_MILLIS = 3000;
    public static final String TAG = MaxVideoSize.class.getSimpleName();
    private long mMaxDurationMillisecs;
    private long mMaxFileSizeBytes;

    /*
     * Enabled aggressive block sorting
     */
    public static MaxVideoSize create(Configurations configurations, VideoSize videoSize, StorageController object) {
        long l = RecordingUtil.getRecordableSizeKBytes((StorageController)object);
        object = new MaxVideoSize();
        long l2 = l * 1024;
        long l3 = configurations.getVideoMaxFileSizeInBytes();
        if (l3 > 0 && l3 < l2) {
            object.setMaxFileSizeBytes(l3);
        } else {
            object.setMaxFileSizeBytes(l2);
        }
        l = RecordingUtil.getDurationMillsFromAverage(l, videoSize.getAverageFileSize());
        l2 = configurations.getVideoMaxDurationInMillisecs();
        if (l2 > 0) {
            object.setMaxDurationMillisecs(Math.min(l2, l));
        } else {
            object.setMaxDurationMillisecs(l);
        }
        l3 = videoSize.getAverageFileSize() * 1024 / 60;
        if (videoSize.isConstraint()) {
            l = configurations.getMmsOptions().mMaxDuration;
            long l4 = configurations.getMmsOptions().mMaxFileSizeBytes;
            if (l4 > 0) {
                if (l4 < object.getMaxFileSize()) {
                    object.setMaxFileSizeBytes(l4);
                } else {
                    object.setMaxFileSizeBytes(object.getMaxFileSize());
                }
            } else {
                l4 = l / 1000 * l3;
                if (l4 < object.getMaxFileSize()) {
                    object.setMaxFileSizeBytes(l4);
                } else {
                    object.setMaxFileSizeBytes(object.getMaxFileSize());
                }
            }
        } else {
            l = object.getMaxDuration();
        }
        l3 = Math.max(0, (long)Math.floor((double)object.getMaxFileSize() / (double)l3));
        l2 = l2 > 0 ? Math.min(l2, 1000 * l3) : l3 * 1000;
        if (l > 0) {
            object.setMaxDurationMillisecs(Math.min(l, l2));
            return object;
        }
        object.setMaxDurationMillisecs(l2);
        return object;
    }

    private void setMaxDurationMillisecs(long l) {
        long l2 = l;
        if (l > Integer.MAX_VALUE) {
            l2 = Integer.MAX_VALUE;
        }
        this.mMaxDurationMillisecs = l2;
    }

    private void setMaxFileSizeBytes(long l) {
        this.mMaxFileSizeBytes = l;
    }

    public int getMaxDuration() {
        return (int)this.mMaxDurationMillisecs;
    }

    public long getMaxFileSize() {
        return this.mMaxFileSizeBytes;
    }
}

