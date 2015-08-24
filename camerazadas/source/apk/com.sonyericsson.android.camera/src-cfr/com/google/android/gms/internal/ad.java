/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gt;
import org.json.JSONObject;

@ez
public final class ad {
    private final String ms;
    private final JSONObject mt;
    private final String mu;
    private final String mv;

    public ad(String string, gt gt, String string2, JSONObject jSONObject) {
        this.mv = gt.wD;
        this.mt = jSONObject;
        this.mu = string;
        this.ms = string2;
    }

    public String aA() {
        return this.mv;
    }

    public JSONObject aB() {
        return this.mt;
    }

    public String aC() {
        return this.mu;
    }

    public String az() {
        return this.ms;
    }
}

