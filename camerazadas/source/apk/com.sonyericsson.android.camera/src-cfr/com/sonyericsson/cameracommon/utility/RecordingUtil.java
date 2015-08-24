/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.media.CamcorderProfile;
import com.sonyericsson.cameracommon.mediasaving.DcfPathBuilder;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class RecordingUtil {
    public static final int ERROR_SIZE_LIMIT = -1;
    public static final String TAG = "RecordingUtil";
    public static final int UPDATE_REMAIN_INTERVAL = 10;
    public static final int VIDEO_PROGRESS_BAR_UPDATE_INTERVAL = 100;
    public static final int VIDEO_REC_TIME_UPDATE_INTERVAL_MILLISEC = 1000;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean deleteFile(String object, boolean bl) {
        if (object == null) {
            return false;
        }
        ExecutorService executorService = Executors.newSingleThreadExecutor();
        Future future = executorService.submit(new DeleteFileTask((String)object, bl));
        object = false;
        try {
            Boolean bl2;
            object = bl2 = (Boolean)future.get(3000, TimeUnit.MILLISECONDS);
            do {
                return object.booleanValue();
                break;
            } while (true);
        }
        catch (InterruptedException var2_6) {
            CameraLogger.w("RecordingUtil", "Delete file interrupted.", var2_6);
            return object.booleanValue();
        }
        catch (ExecutionException var2_7) {
            CameraLogger.w("RecordingUtil", "Delete file failed.", var2_7);
            return object.booleanValue();
        }
        catch (TimeoutException var2_8) {
            CameraLogger.w("RecordingUtil", "Delete file time out.", var2_8);
            return object.booleanValue();
        }
        finally {
            future.cancel(true);
            executorService.shutdown();
            return object.booleanValue();
        }
    }

    public static long getDurationMillsFromAverage(long l, long l2) {
        return Math.max(0, (long)Math.floor((double)l * 60.0 / (double)l2)) * 1000;
    }

    public static long getMaxDurationMillisecond(long l, StorageController storageController) {
        long l2 = RecordingUtil.getRecordableSizeKBytes(storageController) * 1024;
        long l3 = RecordingUtil.getDurationMillsFromAverage(storageController.getAvailableStorageSize(), l);
        long l4 = l3 / 1000;
        long l5 = 1024 * l / 60;
        l = l3;
        if (l2 < l4 * l5) {
            l = 1000 * l2 / l5;
        }
        l3 = l;
        if (Integer.MAX_VALUE < l) {
            l3 = Integer.MAX_VALUE;
        }
        return l3;
    }

    public static long getMaxRecordingDuration(CamcorderProfile camcorderProfile, StorageController storageController) {
        return RecordingUtil.getMaxDurationMillisecond((long)camcorderProfile.videoBitRate * 60 / 1024 / 8 + (long)camcorderProfile.audioBitRate * 60 / 1024 / 8, storageController);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String getOutputFile(String string, Context context) {
        int n;
        String string2 = "/dev/null";
        for (n = 0; n < 30; ++n) {
            String string3;
            string2 = string3 = DcfPathBuilder.getInstance().getVideoPath(context, string);
            if (!string3.equals("/dev/null")) break;
            try {
                Thread.sleep(100);
            }
            catch (InterruptedException var3_3) {}
            string2 = string3;
        }
        if (n < 30) return string2;
        return "/dev/null";
    }

    public static long getRecordableSizeKBytes(StorageController storageController) {
        long l;
        long l2 = l = storageController.getAvailableStorageSize() - 61440 + 15360;
        if (l < 0) {
            l2 = 0;
        }
        return l2;
    }

    private static class DeleteFileTask
    implements Callable<Boolean> {
        private final String mFilePath;
        private final boolean mIsEmpty;

        public DeleteFileTask(String string, boolean bl) {
            this.mFilePath = string;
            this.mIsEmpty = bl;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public Boolean call() {
            boolean bl;
            boolean bl2 = false;
            File file = new File(this.mFilePath);
            if (this.mIsEmpty) {
                bl = bl2;
                if (file.length() != 0) return bl;
                bl = bl2;
                if (!file.delete()) return bl;
                bl = true;
                return bl;
            }
            bl = bl2;
            if (file.length() <= 0) return bl;
            bl = bl2;
            if (!file.delete()) return bl;
            bl = true;
            return bl;
        }
    }

}

