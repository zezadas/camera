/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import com.google.android.gms.analytics.i;

class v
implements i {
    String As;
    int At = -1;
    int Au = -1;
    String xL;
    String xM;

    v() {
    }

    public int eA() {
        return this.At;
    }

    public boolean eB() {
        if (this.Au != -1) {
            return true;
        }
        return false;
    }

    public boolean eC() {
        if (this.Au == 1) {
            return true;
        }
        return false;
    }

    public boolean et() {
        if (this.xL != null) {
            return true;
        }
        return false;
    }

    public String eu() {
        return this.xL;
    }

    public boolean ev() {
        if (this.xM != null) {
            return true;
        }
        return false;
    }

    public String ew() {
        return this.xM;
    }

    public boolean ex() {
        if (this.As != null) {
            return true;
        }
        return false;
    }

    public String ey() {
        return this.As;
    }

    public boolean ez() {
        if (this.At >= 0) {
            return true;
        }
        return false;
    }
}

