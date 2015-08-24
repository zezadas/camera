/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Locale;

public final class ik {
    public static <T> boolean a(T t, T t2) {
        if (t == null && t2 == null || t != null && t2 != null && t.equals(t2)) {
            return true;
        }
        return false;
    }

    public static void aF(String string) throws IllegalArgumentException {
        if (TextUtils.isEmpty((CharSequence)string)) {
            throw new IllegalArgumentException("Namespace cannot be null or empty");
        }
        if (string.length() > 128) {
            throw new IllegalArgumentException("Invalid namespace length");
        }
        if (!string.startsWith("urn:x-cast:")) {
            throw new IllegalArgumentException("Namespace must begin with the prefix \"urn:x-cast:\"");
        }
        if (string.length() == "urn:x-cast:".length()) {
            throw new IllegalArgumentException("Namespace must begin with the prefix \"urn:x-cast:\" and have non-empty suffix");
        }
    }

    public static String aG(String string) {
        return "urn:x-cast:" + string;
    }

    public static long b(double d) {
        return (long)(1000.0 * d);
    }

    public static String b(Locale object) {
        StringBuilder stringBuilder = new StringBuilder(20);
        stringBuilder.append(object.getLanguage());
        String string = object.getCountry();
        if (!TextUtils.isEmpty((CharSequence)string)) {
            stringBuilder.append('-').append(string);
        }
        if (!TextUtils.isEmpty((CharSequence)(object = object.getVariant()))) {
            stringBuilder.append('-').append((String)object);
        }
        return stringBuilder.toString();
    }

    public static double o(long l) {
        return (double)l / 1000.0;
    }
}

