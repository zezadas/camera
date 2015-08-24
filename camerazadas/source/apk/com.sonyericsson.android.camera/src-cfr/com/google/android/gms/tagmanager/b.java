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

class b
extends aj {
    private static final String ID = com.google.android.gms.internal.a.u.toString();
    private final a anS;

    public b(Context context) {
        this(a.W(context));
    }

    b(a a) {
        super(ID, new String[0]);
        this.anS = a;
    }

    @Override
    public d.a C(Map<String, d.a> object) {
        object = this.anS.nJ();
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

