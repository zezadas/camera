/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.aa;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.ez;

@ez
public final class er
extends es.a {
    private final aa sM;
    private final String sN;
    private final String sO;

    public er(aa aa, String string, String string2) {
        this.sM = aa;
        this.sN = string;
        this.sO = string2;
    }

    @Override
    public void ar() {
        this.sM.ar();
    }

    @Override
    public void as() {
        this.sM.as();
    }

    @Override
    public void c(d d) {
        if (d == null) {
            return;
        }
        this.sM.b((View)e.f(d));
    }

    @Override
    public String cu() {
        return this.sN;
    }

    @Override
    public String cv() {
        return this.sO;
    }
}

