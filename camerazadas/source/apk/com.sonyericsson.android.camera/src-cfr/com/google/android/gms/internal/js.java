/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.util.Base64;

public final class js {
    public static String d(byte[] arrby) {
        if (arrby == null) {
            return null;
        }
        return Base64.encodeToString(arrby, 0);
    }

    public static String e(byte[] arrby) {
        if (arrby == null) {
            return null;
        }
        return Base64.encodeToString(arrby, 10);
    }
}

