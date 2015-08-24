/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.dt;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public final class dr
extends g<dt> {
    private static final dr sh = new dr();

    private dr() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public static ds b(Activity object) {
        try {
            if (dr.c((Activity)object)) {
                gs.S("Using AdOverlay from the client jar.");
                return new dk((Activity)object);
            }
            object = sh.d((Activity)object);
            return object;
        }
        catch (a var0_1) {
            gs.W(var0_1.getMessage());
            return null;
        }
    }

    private static boolean c(Activity object) throws a {
        if (!(object = object.getIntent()).hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            throw new a("Ad overlay requires the useClientJar flag in intent extras.");
        }
        return object.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
    }

    private ds d(Activity object) {
        try {
            d d = e.k(object);
            object = ds.a.p(((dt)this.L((Context)object)).a(d));
            return object;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not create remote AdOverlay.", var1_2);
            return null;
        }
        catch (g.a var1_3) {
            gs.d("Could not create remote AdOverlay.", var1_3);
            return null;
        }
    }

    @Override
    protected /* synthetic */ Object d(IBinder iBinder) {
        return this.o(iBinder);
    }

    protected dt o(IBinder iBinder) {
        return dt.a.q(iBinder);
    }

    private static final class a
    extends Exception {
        public a(String string) {
            super(string);
        }
    }

}

