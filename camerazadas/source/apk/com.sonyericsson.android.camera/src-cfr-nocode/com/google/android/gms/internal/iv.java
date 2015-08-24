/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class iv<T> {
    private static a JN;
    private static final Object mw;
    protected final String JO;
    protected final T JP;
    private T JQ;

    static;

    protected iv(String var1, T var2);

    public static void H(Context var0);

    public static iv<Integer> a(String var0, Integer var1);

    public static iv<Boolean> g(String var0, boolean var1);

    public static iv<String> m(String var0, String var1);

    public String getKey();

    private static interface a {
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b
    implements a {
        private final ContentResolver mContentResolver;

        public b(ContentResolver var1);
    }

}

