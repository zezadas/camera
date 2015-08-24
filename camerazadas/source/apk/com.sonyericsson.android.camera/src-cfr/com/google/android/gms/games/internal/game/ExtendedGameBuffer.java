/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.games.internal.game.ExtendedGame;
import com.google.android.gms.games.internal.game.ExtendedGameRef;

public final class ExtendedGameBuffer
extends g<ExtendedGame> {
    public ExtendedGameBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    protected /* synthetic */ Object f(int n, int n2) {
        return this.h(n, n2);
    }

    @Override
    protected String gD() {
        return "external_game_id";
    }

    protected ExtendedGame h(int n, int n2) {
        return new ExtendedGameRef(this.II, n, n2);
    }
}

