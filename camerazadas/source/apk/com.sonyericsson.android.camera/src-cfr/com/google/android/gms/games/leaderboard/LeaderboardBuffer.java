/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardRef;

public final class LeaderboardBuffer
extends g<Leaderboard> {
    public LeaderboardBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    protected /* synthetic */ Object f(int n, int n2) {
        return this.i(n, n2);
    }

    @Override
    protected String gD() {
        return "external_leaderboard_id";
    }

    protected Leaderboard i(int n, int n2) {
        return new LeaderboardRef(this.II, n, n2);
    }
}

