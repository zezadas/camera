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
import com.google.android.gms.games.leaderboard.LeaderboardScoreEntity;

public final class LeaderboardScoreRef
extends d
implements LeaderboardScore {
    private final PlayerRef abL;

    LeaderboardScoreRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
        this.abL = new PlayerRef(dataHolder, n);
    }

    @Override
    public boolean equals(Object object) {
        return LeaderboardScoreEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lC();
    }

    @Override
    public String getDisplayRank() {
        return this.getString("display_rank");
    }

    @Override
    public void getDisplayRank(CharArrayBuffer charArrayBuffer) {
        this.a("display_rank", charArrayBuffer);
    }

    @Override
    public String getDisplayScore() {
        return this.getString("display_score");
    }

    @Override
    public void getDisplayScore(CharArrayBuffer charArrayBuffer) {
        this.a("display_score", charArrayBuffer);
    }

    @Override
    public long getRank() {
        return this.getLong("rank");
    }

    @Override
    public long getRawScore() {
        return this.getLong("raw_score");
    }

    @Override
    public Player getScoreHolder() {
        if (this.aS("external_player_id")) {
            return null;
        }
        return this.abL;
    }

    @Override
    public String getScoreHolderDisplayName() {
        if (this.aS("external_player_id")) {
            return this.getString("default_display_name");
        }
        return this.abL.getDisplayName();
    }

    @Override
    public void getScoreHolderDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.aS("external_player_id")) {
            this.a("default_display_name", charArrayBuffer);
            return;
        }
        this.abL.getDisplayName(charArrayBuffer);
    }

    @Override
    public Uri getScoreHolderHiResImageUri() {
        if (this.aS("external_player_id")) {
            return null;
        }
        return this.abL.getHiResImageUri();
    }

    @Override
    public String getScoreHolderHiResImageUrl() {
        if (this.aS("external_player_id")) {
            return null;
        }
        return this.abL.getHiResImageUrl();
    }

    @Override
    public Uri getScoreHolderIconImageUri() {
        if (this.aS("external_player_id")) {
            return this.aR("default_display_image_uri");
        }
        return this.abL.getIconImageUri();
    }

    @Override
    public String getScoreHolderIconImageUrl() {
        if (this.aS("external_player_id")) {
            return this.getString("default_display_image_url");
        }
        return this.abL.getIconImageUrl();
    }

    @Override
    public String getScoreTag() {
        return this.getString("score_tag");
    }

    @Override
    public long getTimestampMillis() {
        return this.getLong("achieved_timestamp");
    }

    @Override
    public int hashCode() {
        return LeaderboardScoreEntity.a(this);
    }

    public LeaderboardScore lC() {
        return new LeaderboardScoreEntity(this);
    }

    public String toString() {
        return LeaderboardScoreEntity.b(this);
    }
}

