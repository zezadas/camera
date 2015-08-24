/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.database.CharArrayBuffer;

public final class jv {
    /*
     * Enabled aggressive block sorting
     */
    public static void b(String string, CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer.data == null || charArrayBuffer.data.length < string.length()) {
            charArrayBuffer.data = string.toCharArray();
        } else {
            string.getChars(0, string.length(), charArrayBuffer.data, 0);
        }
        charArrayBuffer.sizeCopied = string.length();
    }
}

