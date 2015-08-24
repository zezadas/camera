/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.common.internal.o;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Promotion {
    public static final String ACTION_CLICK = "click";
    public static final String ACTION_VIEW = "view";
    Map<String, String> BK = new HashMap<String, String>();

    public Map<String, String> aq(String string) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        for (Map.Entry<String, String> entry : this.BK.entrySet()) {
            hashMap.put(string + entry.getKey(), entry.getValue());
        }
        return hashMap;
    }

    void put(String string, String string2) {
        o.b(string, (Object)"Name should be non-null");
        this.BK.put(string, string2);
    }

    public Promotion setCreative(String string) {
        this.put("cr", string);
        return this;
    }

    public Promotion setId(String string) {
        this.put("id", string);
        return this;
    }

    public Promotion setName(String string) {
        this.put("nm", string);
        return this;
    }

    public Promotion setPosition(String string) {
        this.put("ps", string);
        return this;
    }
}

