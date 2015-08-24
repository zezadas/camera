/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.me;

public class ie {
    private final me<lx> Dh;
    private final Context mContext;

    private ie(Context context, me<lx> me) {
        this.mContext = context;
        this.Dh = me;
    }

    public static ie a(Context context, me<lx> me) {
        return new ie(context, me);
    }
}

