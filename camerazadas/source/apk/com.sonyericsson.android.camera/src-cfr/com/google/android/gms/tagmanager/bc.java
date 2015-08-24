/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Locale;
import java.util.Map;

class bc
extends aj {
    private static final String ID = a.N.toString();

    public bc() {
        super(ID, new String[0]);
    }

    @Override
    public d.a C(Map<String, d.a> object) {
        object = Locale.getDefault();
        if (object == null) {
            return di.pK();
        }
        if ((object = object.getLanguage()) == null) {
            return di.pK();
        }
        return di.u(object.toLowerCase());
    }

    @Override
    public boolean nN() {
        return false;
    }
}

