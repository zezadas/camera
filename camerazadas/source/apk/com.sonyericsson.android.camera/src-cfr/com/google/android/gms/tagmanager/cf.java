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

class cf
extends aj {
    private static final String ID = a.Q.toString();
    private static final String aql = b.dz.toString();
    private static final String aqm = b.dy.toString();

    public cf() {
        super(ID, new String[0]);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public d.a C(Map<String, d.a> object) {
        double d;
        double d2;
        Object object2 = (d.a)object.get(aql);
        object = (d.a)object.get(aqm);
        if (object2 != null && object2 != di.pK() && object != null && object != di.pK()) {
            object2 = di.k((d.a)object2);
            object = di.k((d.a)object);
            if (object2 != di.pI() && object != di.pI() && (d2 = object2.doubleValue()) <= (d = object.doubleValue())) {
                do {
                    return di.u(Math.round((d - d2) * Math.random() + d2));
                    break;
                } while (true);
            }
        }
        d = 2.147483647E9;
        d2 = 0.0;
        return di.u(Math.round((d - d2) * Math.random() + d2));
    }

    @Override
    public boolean nN() {
        return false;
    }
}

