/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ef;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;

@ez
public class ee {
    private final String oA;

    public ee(String string) {
        this.oA = string;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean a(String string, int n, Intent object) {
        if (string == null) return false;
        if (object == null) {
            return false;
        }
        String string2 = ed.e((Intent)object);
        object = ed.f((Intent)object);
        if (string2 == null) return false;
        if (object == null) return false;
        if (!string.equals(ed.D(string2))) {
            gs.W("Developer payload not match.");
            return false;
        }
        if (this.oA == null) return true;
        if (ef.b(this.oA, string2, (String)object)) return true;
        gs.W("Fail to verify signature.");
        return false;
    }

    public String ct() {
        return gj.do();
    }
}

