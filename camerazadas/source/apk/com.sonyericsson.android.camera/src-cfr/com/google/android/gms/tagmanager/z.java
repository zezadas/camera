/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class z
extends aj {
    private static final String ID = a.Z.toString();
    private final Context mContext;

    public z(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override
    public d.a C(Map<String, d.a> object) {
        object = this.Y(this.mContext);
        if (object == null) {
            return di.pK();
        }
        return di.u(object);
    }

    protected String Y(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    @Override
    public boolean nN() {
        return true;
    }
}

