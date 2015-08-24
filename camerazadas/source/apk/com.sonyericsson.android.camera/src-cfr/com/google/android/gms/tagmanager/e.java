/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.ay;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class e
extends aj {
    private static final String ID = a.Y.toString();
    private static final String anT = b.bW.toString();
    private static final String anU = b.bZ.toString();
    private final Context lB;

    public e(Context context) {
        super(ID, anU);
        this.lB = context;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public d.a C(Map<String, d.a> object) {
        Object object2 = (d.a)object.get(anU);
        if (object2 == null) {
            return di.pK();
        }
        object2 = di.j((d.a)object2);
        object = (object = (d.a)object.get(anT)) != null ? di.j((d.a)object) : null;
        if ((object = ay.f(this.lB, (String)object2, (String)object)) == null) return di.pK();
        return di.u(object);
    }

    @Override
    public boolean nN() {
        return true;
    }
}

