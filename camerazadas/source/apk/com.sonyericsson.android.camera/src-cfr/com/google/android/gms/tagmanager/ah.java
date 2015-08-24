/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.ct;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class ah
extends aj {
    private static final String ID = a.K.toString();
    private final ct aoe;

    public ah(ct ct) {
        super(ID, new String[0]);
        this.aoe = ct;
    }

    @Override
    public d.a C(Map<String, d.a> object) {
        object = this.aoe.pn();
        if (object == null) {
            return di.pK();
        }
        return di.u(object);
    }

    @Override
    public boolean nN() {
        return false;
    }
}

