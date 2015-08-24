/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;

class NavUtilsJB {
    NavUtilsJB();

    public static Intent getParentActivityIntent(Activity var0);

    public static String getParentActivityName(ActivityInfo var0);

    public static void navigateUpTo(Activity var0, Intent var1);

    public static boolean shouldUpRecreateTask(Activity var0, Intent var1);
}

