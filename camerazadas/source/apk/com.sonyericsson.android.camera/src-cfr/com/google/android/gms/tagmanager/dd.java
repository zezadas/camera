/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.cd;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

abstract class dd
extends cd {
    public dd(String string) {
        super(string);
    }

    @Override
    protected boolean a(d.a object, d.a object2, Map<String, d.a> map) {
        object = di.j((d.a)object);
        object2 = di.j((d.a)object2);
        if (object == di.pJ() || object2 == di.pJ()) {
            return false;
        }
        return this.a((String)object, (String)object2, map);
    }

    protected abstract boolean a(String var1, String var2, Map<String, d.a> var3);
}

