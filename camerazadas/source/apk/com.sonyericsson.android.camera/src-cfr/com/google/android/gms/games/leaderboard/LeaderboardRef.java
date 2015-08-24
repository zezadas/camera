/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardEntity;
import com.google.android.gms.games.leaderboard.LeaderboardVariant;
import com.google.android.gms.games.leaderboard.LeaderboardVariantRef;
import java.util.ArrayList;

public final class LeaderboardRef
extends d
implements Leaderboard {
    private final int aaK;
    private final Game abx;

    LeaderboardRef(DataHolder dataHolder, int n, int n2) {
        super(dataHolder, n);
        this.aaK = n2;
        this.abx = new GameRef(dataHolder, n);
    }

    @Override
    public boolean equals(Object object) {
        return LeaderboardEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lz();
    }

    @Override
    public String getDisplayName() {
        return this.getString("name");
    }

    @Override
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        this.a("name", charArrayBuffer);
    }

    @Override
    public Game getGame() {
        return this.abx;
    }

    @Override
    public Uri getIconImageUri() {
        return this.aR("board_icon_image_uri");
    }

    @Override
    public String getIconImageUrl() {
        return this.getString("board_icon_image_url");
    }

    @Override
    public String getLeaderboardId() {
        return this.getString("external_leaderboard_id");
    }

    @Override
    public int getScoreOrder() {
        return this.getInteger("score_order");
    }

    @Override
    public ArrayList<LeaderboardVariant> getVariants() {
        ArrayList<LeaderboardVariant> arrayList = new ArrayList<LeaderboardVariant>(this.aaK);
        for (int i = 0; i < this.aaK; ++i) {
            arrayList.add(new LeaderboardVariantRef(this.II, this.JX + i));
        }
        return arrayList;
    }

    @Override
    public int hashCode() {
        return LeaderboardEntity.a(this);
    }

    public Leaderboard lz() {
        return new LeaderboardEntity(this);
    }

    public String toString() {
        return LeaderboardEntity.b(this);
    }
}

