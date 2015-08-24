/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import com.google.android.gms.analytics.ac;
import com.google.android.gms.analytics.z;

class y
implements ac {
    private final long AN;
    private final int AO;
    private double AP;
    private long AQ;
    private final Object AR = new Object();
    private final String AS;

    public y(int n, long l, String string) {
        this.AO = n;
        this.AP = this.AO;
        this.AN = l;
        this.AS = string;
    }

    public y(String string) {
        this(60, 2000, string);
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
            if (this.AP < (double)this.AO && (d = (double)(l - this.AQ) / (double)this.AN) > 0.0) {
                this.AP = Math.min((double)this.AO, d + this.AP);
            }
            this.AQ = l;
            if (this.AP >= 1.0) {
                this.AP-=1.0;
                return true;
            }
            z.W("Excessive " + this.AS + " detected; call ignored.");
            return false;
        }
    }
}

