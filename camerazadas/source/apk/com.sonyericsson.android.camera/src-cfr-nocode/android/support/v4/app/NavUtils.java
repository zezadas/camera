/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.support.annotation.Nullable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NavUtils {
    private static final NavUtilsImpl IMPL;
    public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
    private static final String TAG = "NavUtils";

    static;

    private NavUtils();

    public static Intent getParentActivityIntent(Activity var0);

    public static Intent getParentActivityIntent(Context var0, ComponentName var1) throws PackageManager.NameNotFoundException;

    public static Intent getParentActivityIntent(Context var0, Class<?> var1) throws PackageManager.NameNotFoundException;

    @Nullable
    public static String getParentActivityName(Activity var0);

    @Nullable
    public static String getParentActivityName(Context var0, ComponentName var1) throws PackageManager.NameNotFoundException;

    public static void navigateUpFromSameTask(Activity var0);

    public static void navigateUpTo(Activity var0, Intent var1);

    public static boolean shouldUpRecreateTask(Activity var0, Intent var1);

    static interface NavUtilsImpl {
        public Intent getParentActivityIntent(Activity var1);

        public String getParentActivityName(Context var1, ActivityInfo var2);

        public void navigateUpTo(Activity var1, Intent var2);

        public boolean shouldUpRecreateTask(Activity var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NavUtilsImplBase
    implements NavUtilsImpl {
        NavUtilsImplBase();

        @Override
        public Intent getParentActivityIntent(Activity var1);

        @Override
        public String getParentActivityName(Context var1, ActivityInfo var2);

        @Override
        public void navigateUpTo(Activity var1, Intent var2);

        @Override
        public boolean shouldUpRecreateTask(Activity var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NavUtilsImplJB
    extends NavUtilsImplBase {
        NavUtilsImplJB();

        @Override
        public Intent getParentActivityIntent(Activity var1);

        @Override
        public String getParentActivityName(Context var1, ActivityInfo var2);

        @Override
        public void navigateUpTo(Activity var1, Intent var2);

        @Override
        public boolean shouldUpRecreateTask(Activity var1, Intent var2);

        Intent superGetParentActivityIntent(Activity var1);
    }

}

