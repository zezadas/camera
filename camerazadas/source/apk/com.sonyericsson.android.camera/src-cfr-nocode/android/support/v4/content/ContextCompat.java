/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.io.File;

/*
 * Exception performing whole class analysis ignored.
 */
public class ContextCompat {
    private static final String DIR_ANDROID = "Android";
    private static final String DIR_CACHE = "cache";
    private static final String DIR_DATA = "data";
    private static final String DIR_FILES = "files";
    private static final String DIR_OBB = "obb";

    public ContextCompat();

    private static /* varargs */ File buildPath(File var0, String ... var1);

    public static File[] getExternalCacheDirs(Context var0);

    public static File[] getExternalFilesDirs(Context var0, String var1);

    public static File[] getObbDirs(Context var0);

    public static boolean startActivities(Context var0, Intent[] var1);

    public static boolean startActivities(Context var0, Intent[] var1, Bundle var2);
}

