/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class cc
extends aj {
    private static final String ID = a.P.toString();
    private static final d.a aqa = di.u("Android");

    public cc() {
        super(ID, new String[0]);
    }

    @Override
    public d.a C(Map<String, d.a> map) {
        return aqa;
    }

    @Override
    public boolean nN() {
        return true;
    }
}

