/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.event;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.event.Event;
import com.google.android.gms.games.event.EventRef;

public final class EventBuffer
extends DataBuffer<Event> {
    public EventBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    public Event get(int n) {
        return new EventRef(this.II, n);
    }
}

