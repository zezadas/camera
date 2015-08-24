/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import com.google.android.gms.analytics.z;

public final class n {
    public static String A(int n) {
        return n.d("&promo", n);
    }

    public static String B(int n) {
        return n.d("pi", n);
    }

    public static String C(int n) {
        return n.d("&il", n);
    }

    public static String D(int n) {
        return n.d("cd", n);
    }

    public static String E(int n) {
        return n.d("cm", n);
    }

    private static String d(String string, int n) {
        if (n < 1) {
            z.T("index out of range for " + string + " (" + n + ")");
            return "";
        }
        return string + n;
    }

    static String x(int n) {
        return n.d("&cd", n);
    }

    static String y(int n) {
        return n.d("&cm", n);
    }

    public static String z(int n) {
        return n.d("&pr", n);
    }
}

