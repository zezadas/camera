/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import com.google.android.gms.games.leaderboard.LeaderboardVariant;

/*
 * Exception performing whole class analysis.
 */
public final class LeaderboardVariantEntity
implements LeaderboardVariant {
    private final int abM;
    private final int abN;
    private final boolean abO;
    private final long abP;
    private final String abQ;
    private final long abR;
    private final String abS;
    private final String abT;
    private final long abU;
    private final String abV;
    private final String abW;
    private final String abX;

    public LeaderboardVariantEntity(LeaderboardVariant var1);

    static int a(LeaderboardVariant var0);

    static boolean a(LeaderboardVariant var0, Object var1);

    static String b(LeaderboardVariant var0);

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

    public int hashCode();

    @Override
    public boolean isDataValid();

    @Override
    public String lD();

    @Override
    public String lE();

    @Override
    public String lF();

    public LeaderboardVariant lG();

    public String toString();
}

