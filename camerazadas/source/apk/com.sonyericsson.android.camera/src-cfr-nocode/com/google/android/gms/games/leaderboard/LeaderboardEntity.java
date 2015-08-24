/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardVariant;
import com.google.android.gms.games.leaderboard.LeaderboardVariantEntity;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public final class LeaderboardEntity
implements Leaderboard {
    private final String NH;
    private final Uri Vh;
    private final String Vs;
    private final String abu;
    private final int abv;
    private final ArrayList<LeaderboardVariantEntity> abw;
    private final Game abx;

    public LeaderboardEntity(Leaderboard var1);

    static int a(Leaderboard var0);

    static boolean a(Leaderboard var0, Object var1);

    static String b(Leaderboard var0);

    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public String getDisplayName();

    @Override
    public void getDisplayName(CharArrayBuffer var1);

    @Override
    public Game getGame();

    @Override
    public Uri getIconImageUri();

    @Override
    public String getIconImageUrl();

    @Override
    public String getLeaderboardId();

    @Override
    public int getScoreOrder();

    @Override
    public ArrayList<LeaderboardVariant> getVariants();

    public int hashCode();

    @Override
    public boolean isDataValid();

    public Leaderboard lz();

    public String toString();
}

