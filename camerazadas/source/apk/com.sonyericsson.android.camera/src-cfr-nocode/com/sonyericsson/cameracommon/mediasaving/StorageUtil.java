/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.content.Context;
import android.net.Uri;
import android.os.StatFs;
import android.os.storage.StorageManager;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import java.util.concurrent.Callable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StorageUtil {
    private static final String TAG;

    static;

    public StorageUtil();

    static /* synthetic */ String access$000();

    public static String[] getMountedPaths(Context var0);

    private static String getPathFromConfig(Context var0);

    public static String getPathFromSaveDestination(SaveDestination var0, Context var1);

    public static String getPathFromType(StorageManager.StorageType var0, Context var1);

    public static String getPathFromUri(Context var0, Uri var1);

    private static StorageManager getStorageManager(Context var0);

    public static StorageManager.StorageType getStorageTypeFromPath(String var0, Context var1);

    public static StorageManager.StorageType getStorageTypeFromSaveDestination(SaveDestination var0);

    public static StorageManager.StorageType getStorageTypeFromUri(Uri var0, Context var1);

    public static String getVolumeState(String var0, Context var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class GetStatFsTask
    implements Callable<StatFs> {
        private final String mPath;

        public GetStatFsTask(String var1);

        @Override
        public StatFs call();
    }

}

