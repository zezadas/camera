/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.media.CamcorderProfile;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.concurrent.Callable;

/*
 * Exception performing whole class analysis ignored.
 */
public class RecordingUtil {
    public static final int ERROR_SIZE_LIMIT = -1;
    public static final String TAG = "RecordingUtil";
    public static final int UPDATE_REMAIN_INTERVAL = 10;
    public static final int VIDEO_PROGRESS_BAR_UPDATE_INTERVAL = 100;
    public static final int VIDEO_REC_TIME_UPDATE_INTERVAL_MILLISEC = 1000;

    public RecordingUtil();

    public static boolean deleteFile(String var0, boolean var1);

    public static long getDurationMillsFromAverage(long var0, long var2);

    public static long getMaxDurationMillisecond(long var0, StorageController var2);

    public static long getMaxRecordingDuration(CamcorderProfile var0, StorageController var1);

    public static String getOutputFile(String var0, Context var1);

    public static long getRecordableSizeKBytes(StorageController var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class DeleteFileTask
    implements Callable<Boolean> {
        private final String mFilePath;
        private final boolean mIsEmpty;

        public DeleteFileTask(String var1, boolean var2);

        @Override
        public Boolean call();
    }

}

