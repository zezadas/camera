/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import java.util.LinkedHashMap;

/*
 * Exception performing whole class analysis.
 */
public class ja<K, V> {
    private final LinkedHashMap<K, V> Mj;
    private int Mk;
    private int Ml;
    private int Mm;
    private int Mn;
    private int Mo;
    private int Mp;
    private int size;

    public ja(int var1);

    private int c(K var1, V var2);

    protected V create(K var1);

    protected void entryRemoved(boolean var1, K var2, V var3, V var4);

    public final void evictAll();

    public final V get(K var1);

    public final V put(K var1, V var2);

    public final int size();

    protected int sizeOf(K var1, V var2);

    public final String toString();

    public void trimToSize(int var1);
}

