/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.leaderboard.LeaderboardVariant;
import com.google.android.gms.games.leaderboard.LeaderboardVariantEntity;

public final class LeaderboardVariantRef
extends d
implements LeaderboardVariant {
    LeaderboardVariantRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    @Override
    public boolean equals(Object object) {
        return LeaderboardVariantEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lG();
    }

    @Override
    public int getCollection() {
        return this.getInteger("collection");
    }

    @Override
    public String getDisplayPlayerRank() {
        return this.getString("player_display_rank");
    }

    @Override
    public String getDisplayPlayerScore() {
        return this.getString("player_display_score");
    }

    @Override
    public long getNumScores() {
        if (this.aS("total_scores")) {
            return -1;
        }
        return this.getLong("total_scores");
    }

    @Override
    public long getPlayerRank() {
        if (this.aS("player_rank")) {
            return -1;
        }
        return this.getLong("player_rank");
    }

    @Override
    public String getPlayerScoreTag() {
        return this.getString("player_score_tag");
    }

    @Override
    public long getRawPlayerScore() {
        if (this.aS("player_raw_score")) {
            return -1;
        }
        return this.getLong("player_raw_score");
    }

    @Override
    public int getTimeSpan() {
        return this.getInteger("timespan");
    }

    @Override
    public boolean hasPlayerInfo() {
        if (!this.aS("player_raw_score")) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return LeaderboardVariantEntity.a(this);
    }

    @Override
    public String lD() {
        return this.getString("top_page_token_next");
    }

    @Override
    public String lE() {
        return this.getString("window_page_token_prev");
    }

    @Override
    public String lF() {
        return this.getString("window_page_token_next");
    }

    public LeaderboardVariant lG() {
        return new LeaderboardVariantEntity(this);
    }

    public String toString() {
        return LeaderboardVariantEntity.b(this);
    }
}

