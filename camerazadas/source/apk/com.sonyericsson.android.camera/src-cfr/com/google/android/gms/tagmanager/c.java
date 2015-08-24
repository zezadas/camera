/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.a;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class c
extends aj {
    private static final String ID = com.google.android.gms.internal.a.v.toString();
    private final a anS;

    public c(Context context) {
        this(a.W(context));
    }

    c(a a) {
        super(ID, new String[0]);
        this.anS = a;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public d.a C(Map<String, d.a> map) {
        boolean bl;
        if (!this.anS.isLimitAdTrackingEnabled()) {
            bl = true;
            do {
                return di.u(bl);
                break;
            } while (true);
        }
        bl = false;
        return di.u(bl);
    }

    @Override
    public boolean nN() {
        return false;
    }
}

