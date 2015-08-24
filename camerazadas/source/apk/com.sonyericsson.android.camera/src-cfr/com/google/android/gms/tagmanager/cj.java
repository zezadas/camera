/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class cj
extends aj {
    private static final String ID = a.S.toString();
    private final Context mContext;

    public cj(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override
    public d.a C(Map<String, d.a> object) {
        object = new DisplayMetrics();
        ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics((DisplayMetrics)object);
        int n = object.widthPixels;
        int n2 = object.heightPixels;
        return di.u("" + n + "x" + n2);
    }

    @Override
    public boolean nN() {
        return true;
    }
}

