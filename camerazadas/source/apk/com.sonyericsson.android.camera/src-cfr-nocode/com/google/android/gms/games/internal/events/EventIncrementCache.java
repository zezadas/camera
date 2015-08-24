/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.events;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/*
 * Exception performing whole class analysis.
 */
public abstract class EventIncrementCache {
    final Object aaq;
    private Handler aar;
    private boolean aas;
    private HashMap<String, AtomicInteger> aat;
    private int aau;

    public EventIncrementCache(Looper var1, int var2);

    static /* synthetic */ void a(EventIncrementCache var0);

    private void kQ();

    public void flush();

    protected abstract void q(String var1, int var2);

    public void w(String var1, int var2);

}

