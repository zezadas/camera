/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.by;
import com.google.android.gms.tagmanager.dh;
import java.util.Map;

class be
extends by {
    private static final String ID = a.au.toString();

    public be() {
        super(ID);
    }

    @Override
    protected boolean a(dh dh, dh dh2, Map<String, d.a> map) {
        if (dh.a(dh2) < 0) {
            return true;
        }
        return false;
    }
}

