/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.pm;
import java.io.IOException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class pn {
    protected volatile int awU;

    public pn();

    public static final <T extends pn> T a(T var0, byte[] var1) throws pm;

    public static final void a(pn var0, byte[] var1, int var2, int var3);

    public static final <T extends pn> T b(T var0, byte[] var1, int var2, int var3) throws pm;

    public static final byte[] f(pn var0);

    public void a(pg var1) throws IOException;

    public abstract pn b(pf var1) throws IOException;

    protected int c();

    public int qH();

    public int qI();

    public String toString();
}

