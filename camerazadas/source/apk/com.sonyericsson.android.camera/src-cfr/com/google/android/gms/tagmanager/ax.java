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

class ax
extends aj {
    private static final String ID = a.ad.toString();
    private static final String anT = b.bW.toString();
    private final Context lB;

    public ax(Context context) {
        super(ID, new String[0]);
        this.lB = context;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public d.a C(Map<String, d.a> object) {
        object = (d.a)object.get(anT) != null ? di.j((d.a)object.get(anT)) : null;
        if ((object = ay.e(this.lB, (String)object)) == null) return di.pK();
        return di.u(object);
    }

    @Override
    public boolean nN() {
        return true;
    }
}

