/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

abstract class cd
extends aj {
    private static final String apf = b.bw.toString();
    private static final String aqb = b.bx.toString();

    public cd(String string) {
        super(string, apf, aqb);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public d.a C(Map<String, d.a> map) {
        boolean bl;
        Object object = map.values().iterator();
        while (object.hasNext()) {
            if (object.next() != di.pK()) continue;
            return di.u(false);
        }
        object = map.get(apf);
        d.a a = map.get(aqb);
        if (object == null || a == null) {
            bl = false;
            do {
                return di.u(bl);
                break;
            } while (true);
        }
        bl = this.a((d.a)object, a, map);
        return di.u(bl);
    }

    protected abstract boolean a(d.a var1, d.a var2, Map<String, d.a> var3);

    @Override
    public boolean nN() {
        return true;
    }
}

