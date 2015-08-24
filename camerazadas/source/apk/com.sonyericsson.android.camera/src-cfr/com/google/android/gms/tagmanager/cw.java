/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.cg;

class cw
implements cg {
    private final long AN;
    private final int AO;
    private double AP;
    private final Object AR = new Object();
    private long arp;

    public cw() {
        this(60, 2000);
    }

    public cw(int n, long l) {
        this.AO = n;
        this.AP = this.AO;
        this.AN = l;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public boolean eJ() {
        Object object = this.AR;
        synchronized (object) {
            double d;
            long l = System.currentTimeMillis();
            if (this.AP < (double)this.AO && (d = (double)(l - this.arp) / (double)this.AN) > 0.0) {
                this.AP = Math.min((double)this.AO, d + this.AP);
            }
            this.arp = l;
            if (this.AP >= 1.0) {
                this.AP-=1.0;
                return true;
            }
            bh.W("No more tokens available.");
            return false;
        }
    }
}

