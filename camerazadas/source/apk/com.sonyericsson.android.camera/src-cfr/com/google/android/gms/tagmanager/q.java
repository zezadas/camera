/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.dd;
import java.util.Map;

class q
extends dd {
    private static final String ID = a.as.toString();

    public q() {
        super(ID);
    }

    @Override
    protected boolean a(String string, String string2, Map<String, d.a> map) {
        return string.contains((CharSequence)string2);
    }
}

