/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.leaderboard.LeaderboardVariant;

public final class LeaderboardVariantRef
extends d
implements LeaderboardVariant {
    LeaderboardVariantRef(DataHolder var1, int var2);

    @Override
    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public int getCollection();

    @Override
    public String getDisplayPlayerRank();

    @Override
    public String getDisplayPlayerScore();

    @Override
    public long getNumScores();

    @Override
    public long getPlayerRank();

    @Override
    public String getPlayerScoreTag();

    @Override
    public long getRawPlayerScore();

    @Override
    public int getTimeSpan();

    @Override
    public boolean hasPlayerInfo();

    @Override
    public int hashCode();

    @Override
    public String lD();

    @Override
    public String lE();

    @Override
    public String lF();

    public LeaderboardVariant lG();

    public String toString();
}

