/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;

/*
 * Exception performing whole class analysis ignored.
 */
public class ActivityCompat
extends ContextCompat {
    public ActivityCompat();

    public static void finishAffinity(Activity var0);

    public static boolean invalidateOptionsMenu(Activity var0);

    public static void startActivity(Activity var0, Intent var1, @Nullable Bundle var2);

    public static void startActivityForResult(Activity var0, Intent var1, int var2, @Nullable Bundle var3);
}

