/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.game.GameInstance;
import com.google.android.gms.games.internal.game.GameInstanceRef;

public final class GameInstanceBuffer
extends DataBuffer<GameInstance> {
    public GameInstanceBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    public GameInstance dM(int n) {
        return new GameInstanceRef(this.II, n);
    }

    @Override
    public /* synthetic */ Object get(int n) {
        return this.dM(n);
    }
}

