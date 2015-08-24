/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.text.TextUtils;

class ap {
    private final long AF;
    private final long AG;
    private final long apm;
    private String apn;

    ap(long l, long l2, long l3) {
        this.AF = l;
        this.AG = l2;
        this.apm = l3;
    }

    void ak(String string) {
        if (string == null || TextUtils.isEmpty((CharSequence)string.trim())) {
            return;
        }
        this.apn = string;
    }

    long eG() {
        return this.AF;
    }

    long ot() {
        return this.apm;
    }

    String ou() {
        return this.apn;
    }
}

