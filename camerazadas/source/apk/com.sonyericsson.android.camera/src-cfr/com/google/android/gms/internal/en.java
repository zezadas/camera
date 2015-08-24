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
import com.google.android.gms.internal.dz;
import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.ej;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public final class en
extends g<ej> {
    private static final en sK = new en();

    private en() {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    private static boolean c(Activity object) throws a {
        if (!(object = object.getIntent()).hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar")) {
            throw new a("InAppPurchaseManager requires the useClientJar flag in intent extras.");
        }
        return object.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
    }

    public static ei e(Activity object) {
        try {
            if (en.c((Activity)object)) {
                gs.S("Using AdOverlay from the client jar.");
                return new dz((Activity)object);
            }
            object = sK.f((Activity)object);
            return object;
        }
        catch (a var0_1) {
            gs.W(var0_1.getMessage());
            return null;
        }
    }

    private ei f(Activity object) {
        try {
            d d = e.k(object);
            object = ei.a.u(((ej)this.L((Context)object)).b(d));
            return object;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not create remote InAppPurchaseManager.", var1_2);
            return null;
        }
        catch (g.a var1_3) {
            gs.d("Could not create remote InAppPurchaseManager.", var1_3);
            return null;
        }
    }

    @Override
    protected /* synthetic */ Object d(IBinder iBinder) {
        return this.y(iBinder);
    }

    protected ej y(IBinder iBinder) {
        return ej.a.v(iBinder);
    }

    private static final class a
    extends Exception {
        public a(String string) {
            super(string);
        }
    }

}

