/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.events;

import com.google.android.gms.games.internal.events.EventIncrementCache;
import java.util.concurrent.atomic.AtomicReference;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class EventIncrementManager {
    private final AtomicReference<EventIncrementCache> aaw;

    public EventIncrementManager();

    public void flush();

    protected abstract EventIncrementCache ky();

    public void n(String var1, int var2);
}

