/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.br;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public class bo
extends br.a
implements bq.a {
    private final Object mw = new Object();
    private final String pl;
    private final Drawable pm;
    private final String pn;
    private final Drawable po;
    private final String pp;
    private final double pq;
    private final String pr;
    private final String ps;
    private bq pt;

    public bo(String string, Drawable drawable, String string2, Drawable drawable2, String string3, double d, String string4, String string5) {
        this.pl = string;
        this.pm = drawable;
        this.pn = string2;
        this.po = drawable2;
        this.pp = string3;
        this.pq = d;
        this.pr = string4;
        this.ps = string5;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void a(bq bq) {
        Object object = this.mw;
        synchronized (object) {
            this.pt = bq;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void as() {
        Object object = this.mw;
        synchronized (object) {
            if (this.pt == null) {
                gs.T("Attempt to record impression before app install ad initialized.");
                return;
            }
            this.pt.as();
            return;
        }
    }

    @Override
    public String bt() {
        return this.pl;
    }

    @Override
    public d bu() {
        return e.k(this.pm);
    }

    @Override
    public d bv() {
        return e.k(this.po);
    }

    @Override
    public String bw() {
        return this.pp;
    }

    @Override
    public double bx() {
        return this.pq;
    }

    @Override
    public String by() {
        return this.pr;
    }

    @Override
    public String bz() {
        return this.ps;
    }

    @Override
    public String getBody() {
        return this.pn;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void i(int n) {
        Object object = this.mw;
        synchronized (object) {
            if (this.pt == null) {
                gs.T("Attempt to perform click before app install ad initialized.");
                return;
            }
            this.pt.b("2", n);
            return;
        }
    }
}

