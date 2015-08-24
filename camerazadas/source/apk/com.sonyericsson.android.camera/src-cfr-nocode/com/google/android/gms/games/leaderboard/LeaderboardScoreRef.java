/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.games.leaderboard.LeaderboardScore;

/*
 * Exception performing whole class analysis.
 */
public final class LeaderboardScoreRef
extends d
implements LeaderboardScore {
    private final PlayerRef abL;

    LeaderboardScoreRef(DataHolder var1, int var2);

    @Override
    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public String getDisplayRank();

    @Override
    public void getDisplayRank(CharArrayBuffer var1);

    @Override
    public String getDisplayScore();

    @Override
    public void getDisplayScore(CharArrayBuffer var1);

    @Override
    public long getRank();

    @Override
    public long getRawScore();

    @Override
    public Player getScoreHolder();

    @Override
    public String getScoreHolderDisplayName();

    @Override
    public void getScoreHolderDisplayName(CharArrayBuffer var1);

    @Override
    public Uri getScoreHolderHiResImageUri();

    @Override
    public String getScoreHolderHiResImageUrl();

    @Override
    public Uri getScoreHolderIconImageUri();

    @Override
    public String getScoreHolderIconImageUrl();

    @Override
    public String getScoreTag();

    @Override
    public long getTimestampMillis();

    @Override
    public int hashCode();

    public LeaderboardScore lC();

    public String toString();
}

