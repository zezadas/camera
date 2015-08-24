/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.bs;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public class bp
extends bs.a
implements bq.a {
    private final Object mw = new Object();
    private final String pl;
    private final Drawable pm;
    private final String pn;
    private final String pp;
    private bq pt;
    private final Drawable pu;
    private final String pv;

    public bp(String string, Drawable drawable, String string2, Drawable drawable2, String string3, String string4) {
        this.pl = string;
        this.pm = drawable;
        this.pn = string2;
        this.pu = drawable2;
        this.pp = string3;
        this.pv = string4;
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
                gs.T("Attempt to record impression before content ad initialized.");
                return;
            }
            this.pt.as();
            return;
        }
    }

    @Override
    public d bA() {
        return e.k(this.pu);
    }

    @Override
    public String bB() {
        return this.pv;
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
    public String bw() {
        return this.pp;
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
                gs.T("Attempt to perform click before content ad initialized.");
                return;
            }
            this.pt.b("1", n);
            return;
        }
    }
}

