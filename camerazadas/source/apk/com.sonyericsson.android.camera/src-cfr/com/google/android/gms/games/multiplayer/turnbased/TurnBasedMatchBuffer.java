/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchRef;

public final class TurnBasedMatchBuffer
extends g<TurnBasedMatch> {
    public TurnBasedMatchBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    protected /* synthetic */ Object f(int n, int n2) {
        return this.l(n, n2);
    }

    @Override
    protected String gD() {
        return "external_match_id";
    }

    protected TurnBasedMatch l(int n, int n2) {
        return new TurnBasedMatchRef(this.II, n, n2);
    }
}

