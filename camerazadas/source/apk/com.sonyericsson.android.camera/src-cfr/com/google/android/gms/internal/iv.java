/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;

public abstract class iv<T> {
    private static a JN;
    private static final Object mw;
    protected final String JO;
    protected final T JP;
    private T JQ = null;

    static {
        mw = new Object();
        JN = null;
    }

    protected iv(String string, T t) {
        this.JO = string;
        this.JP = t;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void H(Context context) {
        Object object = mw;
        synchronized (object) {
            if (JN == null) {
                JN = new b(context.getContentResolver());
            }
            return;
        }
    }

    public static iv<Integer> a(String string, Integer n) {
        return new iv<Integer>(string, n){};
    }

    public static iv<Boolean> g(String string, boolean bl) {
        return new iv<Boolean>(string, Boolean.valueOf(bl)){};
    }

    public static iv<String> m(String string, String string2) {
        return new iv<String>(string, string2){};
    }

    public String getKey() {
        return this.JO;
    }

    private static interface a {
    }

    private static class b
    implements a {
        private final ContentResolver mContentResolver;

        public b(ContentResolver contentResolver) {
            this.mContentResolver = contentResolver;
        }
    }

}

