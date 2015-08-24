/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ju;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.cg;

class bf
implements cg {
    private final long AN;
    private final int AO;
    private double AP;
    private long AQ;
    private final Object AR = new Object();
    private final String AS;
    private final long apL;
    private final ju yD;

    public bf(int n, long l, long l2, String string, ju ju) {
        this.AO = n;
        this.AP = this.AO;
        this.AN = l;
        this.apL = l2;
        this.AS = string;
        this.yD = ju;
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
            long l = this.yD.currentTimeMillis();
            if (l - this.AQ < this.apL) {
                bh.W("Excessive " + this.AS + " detected; call ignored.");
                return false;
            }
            if (this.AP < (double)this.AO && (d = (double)(l - this.AQ) / (double)this.AN) > 0.0) {
                this.AP = Math.min((double)this.AO, d + this.AP);
            }
            this.AQ = l;
            if (this.AP >= 1.0) {
                this.AP-=1.0;
                return true;
            }
            bh.W("Excessive " + this.AS + " detected; call ignored.");
            return false;
        }
    }
}

