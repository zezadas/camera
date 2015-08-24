/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.internal.ez;

@ez
public final class bm {
    private String oU = null;
    private String oV = null;
    private String oW = null;

    public bm() {
        this.oU = "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html";
        this.oV = null;
        this.oW = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public bm(String string, String string2, String string3) {
        this.oU = TextUtils.isEmpty((CharSequence)string) ? "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html" : string;
        this.oV = string2;
        this.oW = string3;
    }

    public String bp() {
        return this.oU;
    }

    public String bq() {
        return this.oV;
    }

    public String br() {
        return this.oW;
    }
}

