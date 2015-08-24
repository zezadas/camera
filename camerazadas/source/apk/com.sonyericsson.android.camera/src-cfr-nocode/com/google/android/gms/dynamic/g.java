/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;

/*
 * Exception performing whole class analysis.
 */
public abstract class g<T> {
    private final String Sl;
    private T Sm;

    protected g(String var1);

    protected final T L(Context var1) throws a;

    protected abstract T d(IBinder var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class a
    extends Exception {
        public a(String var1);

        public a(String var1, Throwable var2);
    }

}

