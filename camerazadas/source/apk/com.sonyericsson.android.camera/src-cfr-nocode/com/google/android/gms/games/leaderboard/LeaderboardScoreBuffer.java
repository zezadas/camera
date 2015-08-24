/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader;

/*
 * Exception performing whole class analysis.
 */
public final class LeaderboardScoreBuffer
extends DataBuffer<LeaderboardScore> {
    private final LeaderboardScoreBufferHeader aby;

    public LeaderboardScoreBuffer(DataHolder var1);

    @Override
    public LeaderboardScore get(int var1);

    public LeaderboardScoreBufferHeader lA();
}

