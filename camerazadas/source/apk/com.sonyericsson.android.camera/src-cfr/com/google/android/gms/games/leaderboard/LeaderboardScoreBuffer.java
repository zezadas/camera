/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import android.os.Bundle;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader;
import com.google.android.gms.games.leaderboard.LeaderboardScoreRef;

public final class LeaderboardScoreBuffer
extends DataBuffer<LeaderboardScore> {
    private final LeaderboardScoreBufferHeader aby;

    public LeaderboardScoreBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.aby = new LeaderboardScoreBufferHeader(dataHolder.gy());
    }

    @Override
    public LeaderboardScore get(int n) {
        return new LeaderboardScoreRef(this.II, n);
    }

    public LeaderboardScoreBufferHeader lA() {
        return this.aby;
    }
}

