/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.regex.Pattern;

public final class jt {
    private static Pattern MR = null;

    public static boolean K(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    public static int aN(int n) {
        return n / 1000;
    }

    public static int aO(int n) {
        return n % 1000 / 100;
    }

    public static boolean aP(int n) {
        if (jt.aO(n) == 3) {
            return true;
        }
        return false;
    }
}

