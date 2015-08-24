/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

class aa {
    private final Map<String, Integer> AU = new HashMap<String, Integer>();
    private final Map<String, String> AV = new HashMap<String, String>();
    private final boolean AW;
    private final String AX;

    aa(String string, boolean bl) {
        this.AW = bl;
        this.AX = string;
    }

    void e(String string, int n) {
        Integer n2;
        if (!this.AW) {
            return;
        }
        Integer n3 = n2 = this.AU.get(string);
        if (n2 == null) {
            n3 = 0;
        }
        this.AU.put(string, n3 + n);
    }

    String eL() {
        if (!this.AW) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.AX);
        for (String string2 : this.AU.keySet()) {
            stringBuilder.append("&").append(string2).append("=").append(this.AU.get(string2));
        }
        for (String string2 : this.AV.keySet()) {
            stringBuilder.append("&").append(string2).append("=").append(this.AV.get(string2));
        }
        return stringBuilder.toString();
    }
}

