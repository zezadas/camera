/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantRef;

public final class ParticipantBuffer
extends DataBuffer<Participant> {
    @Override
    public Participant get(int n) {
        return new ParticipantRef(this.II, n);
    }
}

