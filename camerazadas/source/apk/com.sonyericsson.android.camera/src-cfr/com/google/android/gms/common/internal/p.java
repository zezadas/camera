/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;

public final class p
extends g<m> {
    private static final p Mi = new p();

    private p() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View b(Context context, int n, int n2) throws g.a {
        return Mi.c(context, n, n2);
    }

    private View c(Context object, int n, int n2) throws g.a {
        try {
            d d = e.k(object);
            object = (View)e.f(((m)this.L((Context)object)).a(d, n, n2));
            return object;
        }
        catch (Exception var1_2) {
            throw new g.a("Could not get button with size " + n + " and color " + n2, var1_2);
        }
    }

    public m S(IBinder iBinder) {
        return m.a.R(iBinder);
    }

    @Override
    public /* synthetic */ Object d(IBinder iBinder) {
        return this.S(iBinder);
    }
}

