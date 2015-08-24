/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class cv
extends aj {
    private static final String ID = a.U.toString();

    public cv() {
        super(ID, new String[0]);
    }

    @Override
    public d.a C(Map<String, d.a> map) {
        return di.u(Build.VERSION.SDK_INT);
    }

    @Override
    public boolean nN() {
        return true;
    }
}

