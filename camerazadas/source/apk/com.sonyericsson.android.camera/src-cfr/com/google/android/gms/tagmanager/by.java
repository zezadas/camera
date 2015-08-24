/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.cd;
import com.google.android.gms.tagmanager.dh;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

abstract class by
extends cd {
    public by(String string) {
        super(string);
    }

    @Override
    protected boolean a(d.a object, d.a object2, Map<String, d.a> map) {
        object = di.k((d.a)object);
        object2 = di.k((d.a)object2);
        if (object == di.pI() || object2 == di.pI()) {
            return false;
        }
        return this.a((dh)object, (dh)object2, map);
    }

    protected abstract boolean a(dh var1, dh var2, Map<String, d.a> var3);
}

