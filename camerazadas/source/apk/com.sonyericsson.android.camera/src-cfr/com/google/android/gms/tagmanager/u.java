/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class u
extends aj {
    private static final String ID = a.C.toString();
    private static final String NAME = b.dB.toString();
    private static final String aoP = b.cr.toString();
    private final DataLayer aod;

    public u(DataLayer dataLayer) {
        super(ID, NAME);
        this.aod = dataLayer;
    }

    @Override
    public d.a C(Map<String, d.a> object) {
        Object object2 = this.aod.get(di.j(object.get(NAME)));
        if (object2 == null) {
            if ((object = object.get(aoP)) != null) {
                return object;
            }
            return di.pK();
        }
        return di.u(object2);
    }

    @Override
    public boolean nN() {
        return false;
    }
}

