/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.events;

import com.google.android.gms.games.internal.events.EventIncrementCache;
import java.util.concurrent.atomic.AtomicReference;

public abstract class EventIncrementManager {
    private final AtomicReference<EventIncrementCache> aaw = new AtomicReference();

    public void flush() {
        EventIncrementCache eventIncrementCache = this.aaw.get();
        if (eventIncrementCache != null) {
            eventIncrementCache.flush();
        }
    }

    protected abstract EventIncrementCache ky();

    public void n(String string, int n) {
        EventIncrementCache eventIncrementCache;
        EventIncrementCache eventIncrementCache2 = eventIncrementCache = this.aaw.get();
        if (eventIncrementCache == null) {
            eventIncrementCache2 = eventIncrementCache = this.ky();
            if (!this.aaw.compareAndSet((EventIncrementCache)null, eventIncrementCache)) {
                eventIncrementCache2 = this.aaw.get();
            }
        }
        eventIncrementCache2.w(string, n);
    }
}

