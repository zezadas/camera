/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

public class hp {
    private static final String[] Cm = new String[]{"text1", "text2", "icon", "intent_action", "intent_data", "intent_data_id", "intent_extra_data", "suggest_large_icon", "intent_activity"};
    private static final Map<String, Integer> Cn = new HashMap<String, Integer>(Cm.length);

    static {
        for (int i = 0; i < Cm.length; ++i) {
            Cn.put(Cm[i], i);
        }
    }

    public static String O(int n) {
        if (n < 0 || n >= Cm.length) {
            return null;
        }
        return Cm[n];
    }

    public static int as(String string) {
        Integer n = Cn.get(string);
        if (n == null) {
            throw new IllegalArgumentException("[" + string + "] is not a valid global search section name");
        }
        return n;
    }

    public static int fl() {
        return Cm.length;
    }
}

