/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Build;

public final class kc {
    private static boolean aR(int n) {
        if (Build.VERSION.SDK_INT >= n) {
            return true;
        }
        return false;
    }

    public static boolean hB() {
        return kc.aR(11);
    }

    public static boolean hC() {
        return kc.aR(12);
    }

    public static boolean hD() {
        return kc.aR(13);
    }

    public static boolean hE() {
        return kc.aR(14);
    }

    public static boolean hF() {
        return kc.aR(16);
    }

    public static boolean hG() {
        return kc.aR(17);
    }

    @Deprecated
    public static boolean hH() {
        return kc.hI();
    }

    public static boolean hI() {
        return kc.aR(19);
    }
}

