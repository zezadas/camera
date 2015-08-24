/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.os.Looper;
import android.text.TextUtils;

public final class o {
    public static void I(boolean bl) {
        if (!bl) {
            throw new IllegalStateException();
        }
    }

    public static void K(boolean bl) {
        if (!bl) {
            throw new IllegalArgumentException();
        }
    }

    public static void a(boolean bl, Object object) {
        if (!bl) {
            throw new IllegalStateException(String.valueOf(object));
        }
    }

    public static /* varargs */ void a(boolean bl, String string, Object ... arrobject) {
        if (!bl) {
            throw new IllegalStateException(String.format(string, arrobject));
        }
    }

    public static void aT(String string) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException(string);
        }
    }

    public static void aU(String string) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException(string);
        }
    }

    public static String aZ(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return string;
    }

    public static <T> T b(T t, Object object) {
        if (t == null) {
            throw new NullPointerException(String.valueOf(object));
        }
        return t;
    }

    public static String b(String string, Object object) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            throw new IllegalArgumentException(String.valueOf(object));
        }
        return string;
    }

    public static void b(boolean bl, Object object) {
        if (!bl) {
            throw new IllegalArgumentException(String.valueOf(object));
        }
    }

    public static /* varargs */ void b(boolean bl, String string, Object ... arrobject) {
        if (!bl) {
            throw new IllegalArgumentException(String.format(string, arrobject));
        }
    }

    public static <T> T i(T t) {
        if (t == null) {
            throw new NullPointerException("null reference");
        }
        return t;
    }
}

