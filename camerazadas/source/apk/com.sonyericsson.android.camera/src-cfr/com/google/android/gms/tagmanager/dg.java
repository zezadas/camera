/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

abstract class dg
extends aj {
    public /* varargs */ dg(String string, String ... arrstring) {
        super(string, arrstring);
    }

    @Override
    public d.a C(Map<String, d.a> map) {
        this.E(map);
        return di.pK();
    }

    public abstract void E(Map<String, d.a> var1);

    @Override
    public boolean nN() {
        return false;
    }
}

