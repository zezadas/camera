/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardVariant;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public final class LeaderboardRef
extends d
implements Leaderboard {
    private final int aaK;
    private final Game abx;

    LeaderboardRef(DataHolder var1, int var2, int var3);

    @Override
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

    @Override
    public int hashCode();

    public Leaderboard lz();

    public String toString();
}

