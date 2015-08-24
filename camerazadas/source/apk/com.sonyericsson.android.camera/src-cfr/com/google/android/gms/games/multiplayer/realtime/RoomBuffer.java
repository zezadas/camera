/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.realtime;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomRef;

public final class RoomBuffer
extends g<Room> {
    public RoomBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    protected /* synthetic */ Object f(int n, int n2) {
        return this.k(n, n2);
    }

    @Override
    protected String gD() {
        return "external_match_id";
    }

    protected Room k(int n, int n2) {
        return new RoomRef(this.II, n, n2);
    }
}

