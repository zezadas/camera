/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class bj
extends aj {
    private static final String ID = a.ai.toString();
    private static final String apf = b.bw.toString();

    public bj() {
        super(ID, apf);
    }

    @Override
    public d.a C(Map<String, d.a> map) {
        return di.u(di.j(map.get(apf)).toLowerCase());
    }

    @Override
    public boolean nN() {
        return true;
    }
}

