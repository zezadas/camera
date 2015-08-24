/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness;

import java.util.HashSet;
import java.util.List;

public final class a {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String bq(String string) {
        if (string.equals("https://www.googleapis.com/auth/fitness.activity.read")) {
            return "https://www.googleapis.com/auth/fitness.activity.write";
        }
        if (string.equals("https://www.googleapis.com/auth/fitness.location.read")) {
            return "https://www.googleapis.com/auth/fitness.location.write";
        }
        String string2 = string;
        if (!string.equals("https://www.googleapis.com/auth/fitness.body.read")) return string2;
        return "https://www.googleapis.com/auth/fitness.body.write";
    }

    public static String[] d(List<String> list) {
        HashSet<String> hashSet = new HashSet<String>(list.size());
        for (String string : list) {
            String string2 = a.bq(string);
            if (!string2.equals(string) && list.contains(string2)) continue;
            hashSet.add(string);
        }
        return hashSet.toArray(new String[hashSet.size()]);
    }
}

