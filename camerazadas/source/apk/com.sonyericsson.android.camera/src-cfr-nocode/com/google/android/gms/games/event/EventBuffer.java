/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.event;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.event.Event;

public final class EventBuffer
extends DataBuffer<Event> {
    public EventBuffer(DataHolder var1);

    @Override
    public Event get(int var1);
}

