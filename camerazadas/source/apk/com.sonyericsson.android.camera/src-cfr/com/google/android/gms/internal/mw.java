/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.mx;
import java.util.Locale;

public class mw {
    private static final String TAG = mw.class.getSimpleName();
    private final me<lx> Dh;
    private final mx aih;
    private final Locale aii;

    public mw(String string, me<lx> me, String string2) {
        this.Dh = me;
        this.aii = Locale.getDefault();
        this.aih = new mx(string, this.aii, string2);
    }
}

