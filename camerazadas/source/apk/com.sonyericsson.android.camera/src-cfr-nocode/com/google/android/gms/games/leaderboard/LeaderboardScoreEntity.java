/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.leaderboard.LeaderboardScore;

/*
 * Exception performing whole class analysis.
 */
public final class LeaderboardScoreEntity
implements LeaderboardScore {
    private final String abA;
    private final String abB;
    private final long abC;
    private final long abD;
    private final String abE;
    private final Uri abF;
    private final Uri abG;
    private final PlayerEntity abH;
    private final String abI;
    private final String abJ;
    private final String abK;
    private final long abz;

    public LeaderboardScoreEntity(LeaderboardScore var1);

    static int a(LeaderboardScore var0);

    static boolean a(LeaderboardScore var0, Object var1);

    static String b(LeaderboardScore var0);

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

    public int hashCode();

    @Override
    public boolean isDataValid();

    public LeaderboardScore lC();

    public String toString();
}

