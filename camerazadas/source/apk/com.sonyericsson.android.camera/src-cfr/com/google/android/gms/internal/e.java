/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.util.Base64;
import com.google.android.gms.internal.m;

class e
implements m {
    e() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public String a(byte[] arrby, boolean bl) {
        int n;
        if (bl) {
            n = 11;
            do {
                return Base64.encodeToString(arrby, n);
                break;
            } while (true);
        }
        n = 2;
        return Base64.encodeToString(arrby, n);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public byte[] a(String string, boolean bl) throws IllegalArgumentException {
        int n;
        if (bl) {
            n = 11;
            do {
                return Base64.decode(string, n);
                break;
            } while (true);
        }
        n = 2;
        return Base64.decode(string, n);
    }
}

