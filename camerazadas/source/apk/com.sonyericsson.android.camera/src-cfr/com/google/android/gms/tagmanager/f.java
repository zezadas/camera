/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class f
extends aj {
    private static final String ID = a.w.toString();
    private final Context mContext;

    public f(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override
    public d.a C(Map<String, d.a> map) {
        return di.u(this.mContext.getPackageName());
    }

    @Override
    public boolean nN() {
        return true;
    }
}

