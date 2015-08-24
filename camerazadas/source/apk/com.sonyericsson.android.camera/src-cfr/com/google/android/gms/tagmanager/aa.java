/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class aa
extends aj {
    private static final String ID = a.F.toString();

    public aa() {
        super(ID, new String[0]);
    }

    @Override
    public d.a C(Map<String, d.a> object) {
        String string;
        String string2 = Build.MANUFACTURER;
        object = string = Build.MODEL;
        if (!string.startsWith(string2)) {
            object = string;
            if (!string2.equals("unknown")) {
                object = string2 + " " + string;
            }
        }
        return di.u(object);
    }

    @Override
    public boolean nN() {
        return true;
    }
}

