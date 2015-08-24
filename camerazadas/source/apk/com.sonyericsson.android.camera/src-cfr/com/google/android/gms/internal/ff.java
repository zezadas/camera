/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fg;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;

@ez
public final class ff {
    public static gg a(Context context, fi fi, a a) {
        if (fi.lD.wG) {
            return ff.b(context, fi, a);
        }
        return ff.c(context, fi, a);
    }

    private static gg b(Context object, fi fi, a a) {
        gs.S("Fetching ad response from local ad request service.");
        object = new fg.a((Context)object, fi, a);
        object.start();
        return object;
    }

    private static gg c(Context context, fi fi, a a) {
        gs.S("Fetching ad response from remote ad request service.");
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) != 0) {
            gs.W("Failed to connect to remote ad request service.");
            return null;
        }
        return new fg.b(context, fi, a);
    }

    public static interface a {
        public void a(fk var1);
    }

}

