/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 *  android.os.storage.StorageVolume
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.Callable;

public class StorageUtil {
    private static final String TAG = StorageUtil.class.getSimpleName();

    public static String[] getMountedPaths(Context arrstorageVolume) {
        ArrayList<String> arrayList = new ArrayList<String>();
        for (StorageVolume storageVolume : StorageUtil.getStorageManager((Context)arrstorageVolume).getVolumeList()) {
            if (storageVolume.getPath() == null) continue;
            arrayList.add(storageVolume.getPath());
        }
        return arrayList.toArray(new String[0]);
    }

    private static String getPathFromConfig(Context context) {
        String string = context.getString(R.string.default_destination_to_save).toLowerCase(Locale.US);
        StorageVolume[] arrstorageVolume = StorageUtil.getStorageManager(context).getVolumeList();
        int n = arrstorageVolume.length;
        for (int i = 0; i < n; ++i) {
            String string2 = arrstorageVolume[i].getPath();
            if (!string.equals(StorageUtil.getStorageTypeFromPath(string2, context).name().toLowerCase(Locale.US))) continue;
            return string2;
        }
        return Environment.getExternalStorageDirectory().getPath();
    }

    public static String getPathFromSaveDestination(SaveDestination saveDestination, Context context) {
        return StorageUtil.getPathFromType(StorageUtil.getStorageTypeFromSaveDestination(saveDestination), context);
    }

    public static String getPathFromType(StorageManager.StorageType object, Context context) {
        try {
            object = StorageUtil.getStorageManager(context).getVolumePath((StorageManager.StorageType)object);
            return object;
        }
        catch (FileNotFoundException var0_1) {
            return StorageUtil.getPathFromConfig(context);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getPathFromUri(Context var0, Uri var1_5) {
        block30 : {
            if (var1_5 == null) {
                return null;
            }
            var7_9 = var1_5.getPath();
            if (var7_9 == null) {
                return null;
            }
            var8_10 = StorageUtil.getStorageManager((Context)var0).getVolumeList();
            var3_11 = var8_10.length;
            for (var2_12 = 0; var2_12 < var3_11; ++var2_12) {
                var5_8 = var6_13 = var8_10[var2_12].getPath();
                if (var7_9.contains((CharSequence)var6_13) != false) return var5_8;
            }
            var9_15 = var0.getContentResolver();
            var7_9 = null;
            var5_8 = null;
            var6_13 = var9_15.query((Uri)var1_5, new String[]{"_data"}, null, null, null);
            if (var6_13 == null) break block30;
            var5_8 = var6_13;
            var7_9 = var6_13;
            if (!var6_13.moveToFirst()) break block30;
            var5_8 = var6_13;
            var7_9 = var6_13;
            var2_12 = var6_13.getColumnIndexOrThrow("_data");
            var5_8 = var6_13;
            var7_9 = var6_13;
            var3_11 = var6_13.getType(var2_12);
            if (var3_11 != 3) {
                var5_8 = null;
                if (var6_13 == null) return var5_8;
                var6_13.close();
                return null;
            }
            var5_8 = var6_13;
            var7_9 = var6_13;
            var10_16 = var6_13.getString(var2_12);
            var5_8 = var6_13;
            var7_9 = var6_13;
            var11_17 = StorageUtil.getStorageManager((Context)var0).getVolumeList();
            var5_8 = var6_13;
            var7_9 = var6_13;
            try {
                var3_11 = var11_17.length;
            }
            catch (Exception var6_14) {
                if (var5_8 == null) ** GOTO lbl64
                var5_8.close();
                ** continue;
            }
            catch (Throwable var0_1) {
                if (var7_9 == null) throw var0_1;
                var7_9.close();
                throw var0_1;
            }
            for (var2_12 = 0; var2_12 < var3_11; ++var2_12) {
                var5_8 = var6_13;
                var7_9 = var6_13;
                var8_10 = var11_17[var2_12].getPath();
                var5_8 = var6_13;
                var7_9 = var6_13;
                var4_18 = var10_16.contains((CharSequence)var8_10);
                if (!var4_18) continue;
                var5_8 = var8_10;
                if (var6_13 == null) return var5_8;
                var6_13.close();
                return var8_10;
            }
        }
        if (var6_13 != null) {
            var6_13.close();
        }
lbl64: // 5 sources:
        do {
            var6_13 = null;
            var5_8 = null;
            var5_8 = var1_5 = var9_15.openOutputStream((Uri)var1_5);
            var6_13 = var1_5;
            var5_8 = var0 = StorageUtil.getStorageManager((Context)var0).getVolumePath(StorageManager.StorageType.INTERNAL);
            if (var1_5 == null) return var5_8;
            try {
                var1_5.close();
                return var0;
            }
            catch (Exception var1_6) {
                return var0;
            }
            break;
        } while (true);
        catch (Exception var0_2) {
            if (var5_8 == null) return null;
            var5_8.close();
            do {
                return null;
                break;
            } while (true);
        }
        catch (Throwable var0_3) {
            if (var6_13 == null) throw var0_3;
            var6_13.close();
            do {
                throw var0_3;
                break;
            } while (true);
        }
        {
            catch (Exception var0_4) {
                return null;
            }
        }
        {
            catch (Exception var1_7) {
                throw var0_3;
            }
        }
    }

    private static StorageManager getStorageManager(Context context) {
        return (StorageManager)context.getSystemService("storage");
    }

    public static StorageManager.StorageType getStorageTypeFromPath(String string, Context context) {
        StorageManager.StorageType storageType = StorageManager.StorageType.UNKNOWN;
        try {
            context = StorageUtil.getStorageManager(context).getVolumeType(string);
            return context;
        }
        catch (FileNotFoundException var1_2) {
            CameraLogger.w(TAG, "getVolumeType(" + string + ") failed.");
            return storageType;
        }
    }

    public static StorageManager.StorageType getStorageTypeFromSaveDestination(SaveDestination saveDestination) {
        switch (saveDestination) {
            default: {
                return StorageManager.StorageType.INTERNAL;
            }
            case SDCARD: 
        }
        return StorageManager.StorageType.EXTERNAL_CARD;
    }

    public static StorageManager.StorageType getStorageTypeFromUri(Uri object, Context context) {
        object = StorageUtil.getPathFromUri(context, (Uri)object);
        StorageUtil.getStorageTypeFromPath((String)object, context);
        return StorageUtil.getStorageTypeFromPath((String)object, context);
    }

    public static String getVolumeState(String string, Context context) {
        return StorageUtil.getStorageManager(context).getVolumeState(string);
    }

    public static class GetStatFsTask
    implements Callable<StatFs> {
        private final String mPath;

        public GetStatFsTask(String string) {
            if (string == null) {
                throw new IllegalArgumentException("Target path is null.");
            }
            this.mPath = string;
        }

        @Override
        public StatFs call() {
            try {
                StatFs statFs = new StatFs(this.mPath);
                return statFs;
            }
            catch (IllegalArgumentException var1_2) {
                CameraLogger.e(TAG, "Create StatFs failed.", var1_2);
                return null;
            }
        }
    }

}

