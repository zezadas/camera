/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.internal.game.GameBadgeRef;

public final class GameBadgeBuffer
extends DataBuffer<GameBadge> {
    public GameBadge dK(int n) {
        return new GameBadgeRef(this.II, n);
    }

    @Override
    public /* synthetic */ Object get(int n) {
        return this.dK(n);
    }
}

