/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.plus.PlusOneDummyView;
import com.google.android.gms.plus.internal.c;

public final class g
extends com.google.android.gms.dynamic.g<c> {
    private static final g alC = new g();

    private g() {
        super("com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static View a(Context context, int n, int n2, String object, int n3) {
        if (object != null) return (View)e.f(((c)alC.L(context)).a(e.k(context), n, n2, (String)object, n3));
        try {
            throw new NullPointerException();
        }
        catch (Exception var3_4) {
            return new PlusOneDummyView(context, n);
        }
    }

    protected c bI(IBinder iBinder) {
        return c.a.bF(iBinder);
    }

    @Override
    protected /* synthetic */ Object d(IBinder iBinder) {
        return this.bI(iBinder);
    }
}

