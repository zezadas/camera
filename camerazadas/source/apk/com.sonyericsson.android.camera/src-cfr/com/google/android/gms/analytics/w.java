/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.text.TextUtils;

class w {
    private String AE;
    private final long AF;
    private final long AG;
    private String AH = "https:";

    w(String string, long l, long l2) {
        this.AE = string;
        this.AF = l;
        this.AG = l2;
    }

    void aj(String string) {
        this.AE = string;
    }

    /*
     * Enabled aggressive block sorting
     */
    void ak(String string) {
        if (string == null || TextUtils.isEmpty((CharSequence)string.trim()) || !string.toLowerCase().startsWith("http:")) {
            return;
        }
        this.AH = "http:";
    }

    String eF() {
        return this.AE;
    }

    long eG() {
        return this.AF;
    }

    long eH() {
        return this.AG;
    }

    String eI() {
        return this.AH;
    }
}

