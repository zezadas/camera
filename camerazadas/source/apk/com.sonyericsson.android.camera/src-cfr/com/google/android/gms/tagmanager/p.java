/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class p
extends aj {
    private static final String ID = a.D.toString();
    private final String Sx;

    public p(String string) {
        super(ID, new String[0]);
        this.Sx = string;
    }

    @Override
    public d.a C(Map<String, d.a> map) {
        if (this.Sx == null) {
            return di.pK();
        }
        return di.u(this.Sx);
    }

    @Override
    public boolean nN() {
        return true;
    }
}

