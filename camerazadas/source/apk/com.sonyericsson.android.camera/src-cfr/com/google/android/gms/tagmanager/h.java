/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class h
extends aj {
    private static final String ID = a.y.toString();
    private final Context mContext;

    public h(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override
    public d.a C(Map<String, d.a> object) {
        try {
            object = di.u(this.mContext.getPackageManager().getPackageInfo((String)this.mContext.getPackageName(), (int)0).versionCode);
            return object;
        }
        catch (PackageManager.NameNotFoundException var1_2) {
            bh.T("Package name " + this.mContext.getPackageName() + " not found. " + var1_2.getMessage());
            return di.pK();
        }
    }

    @Override
    public boolean nN() {
        return true;
    }
}

