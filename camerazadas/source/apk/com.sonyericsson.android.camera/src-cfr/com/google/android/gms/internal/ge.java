/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gb;

@ez
public class ge {
    private final Object mw = new Object();
    private final String vA;
    private final gb vx;
    private int wc;
    private int wd;

    ge(gb gb, String string) {
        this.vx = gb;
        this.vA = string;
    }

    public ge(String string) {
        this(gb.cU(), string);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void d(int n, int n2) {
        Object object = this.mw;
        synchronized (object) {
            this.wc = n;
            this.wd = n2;
            this.vx.a(this.vA, this);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public Bundle toBundle() {
        Object object = this.mw;
        synchronized (object) {
            Bundle bundle = new Bundle();
            bundle.putInt("pmnli", this.wc);
            bundle.putInt("pmnll", this.wd);
            return bundle;
        }
    }
}

