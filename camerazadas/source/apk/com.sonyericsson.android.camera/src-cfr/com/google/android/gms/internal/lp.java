/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.lq;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.me;

public class lp {
    private final String Dd;
    private final me<lx> Dh;
    private final String IM;
    private lq aeA;
    private final Context mContext;

    private lp(Context context, String string, String string2, me<lx> me) {
        this.mContext = context;
        this.Dd = string;
        this.Dh = me;
        this.aeA = null;
        this.IM = string2;
    }

    public static lp a(Context context, String string, String string2, me<lx> me) {
        return new lp(context, string, string2, me);
    }
}

