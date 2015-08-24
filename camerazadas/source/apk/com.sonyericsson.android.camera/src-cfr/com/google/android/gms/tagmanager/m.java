/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import java.util.Map;

class m
extends aj {
    private static final String ID = a.A.toString();
    private static final String VALUE = b.ff.toString();

    public m() {
        super(ID, VALUE);
    }

    public static String nQ() {
        return ID;
    }

    public static String nR() {
        return VALUE;
    }

    @Override
    public d.a C(Map<String, d.a> map) {
        return map.get(VALUE);
    }

    @Override
    public boolean nN() {
        return true;
    }
}

