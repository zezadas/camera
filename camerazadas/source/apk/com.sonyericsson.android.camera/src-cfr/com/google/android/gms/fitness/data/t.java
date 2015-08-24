/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import java.util.List;

public class t {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static <T> int a(T t, List<T> list) {
        int n;
        if (t == null) {
            return -1;
        }
        int n2 = n = list.indexOf(t);
        if (n >= 0) return n2;
        list.add(t);
        return list.size() - 1;
    }
}

