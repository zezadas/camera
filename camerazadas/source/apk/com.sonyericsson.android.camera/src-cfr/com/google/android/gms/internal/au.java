/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.be;
import com.google.android.gms.internal.cs;
import com.google.android.gms.internal.ct;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.u;

@ez
public final class au
extends g<be> {
    private static final au nS = new au();

    private au() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static bd a(Context context, ay ay, String string, cs cs) {
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) == 0) {
            bd bd;
            bd bd2 = bd = nS.b(context, ay, string, cs);
            if (bd != null) return bd2;
        }
        gs.S("Using AdManager from the client jar.");
        return new u(context, ay, string, cs, new gt(6171000, 6171000, true));
    }

    private bd b(Context object, ay ay, String string, cs cs) {
        try {
            d d = e.k(object);
            object = bd.a.f(((be)this.L((Context)object)).a(d, ay, string, cs, 6171000));
            return object;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not create remote AdManager.", var1_2);
            return null;
        }
        catch (g.a var1_3) {
            gs.d("Could not create remote AdManager.", var1_3);
            return null;
        }
    }

    protected be c(IBinder iBinder) {
        return be.a.g(iBinder);
    }

    @Override
    protected /* synthetic */ Object d(IBinder iBinder) {
        return this.c(iBinder);
    }
}

