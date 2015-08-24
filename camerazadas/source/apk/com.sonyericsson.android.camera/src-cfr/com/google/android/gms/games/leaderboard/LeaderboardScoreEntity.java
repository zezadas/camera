/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.internal.jv;

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

    /*
     * Enabled aggressive block sorting
     */
    public LeaderboardScoreEntity(LeaderboardScore leaderboardScore) {
        this.abz = leaderboardScore.getRank();
        this.abA = o.i(leaderboardScore.getDisplayRank());
        this.abB = o.i(leaderboardScore.getDisplayScore());
        this.abC = leaderboardScore.getRawScore();
        this.abD = leaderboardScore.getTimestampMillis();
        this.abE = leaderboardScore.getScoreHolderDisplayName();
        this.abF = leaderboardScore.getScoreHolderIconImageUri();
        this.abG = leaderboardScore.getScoreHolderHiResImageUri();
        Player player = leaderboardScore.getScoreHolder();
        player = player == null ? null : (PlayerEntity)player.freeze();
        this.abH = player;
        this.abI = leaderboardScore.getScoreTag();
        this.abJ = leaderboardScore.getScoreHolderIconImageUrl();
        this.abK = leaderboardScore.getScoreHolderHiResImageUrl();
    }

    static int a(LeaderboardScore leaderboardScore) {
        return n.hashCode(leaderboardScore.getRank(), leaderboardScore.getDisplayRank(), leaderboardScore.getRawScore(), leaderboardScore.getDisplayScore(), leaderboardScore.getTimestampMillis(), leaderboardScore.getScoreHolderDisplayName(), leaderboardScore.getScoreHolderIconImageUri(), leaderboardScore.getScoreHolderHiResImageUri(), leaderboardScore.getScoreHolder());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(LeaderboardScore leaderboardScore, Object object) {
        boolean bl = true;
        if (!(object instanceof LeaderboardScore)) {
            return false;
        }
        boolean bl2 = bl;
        if (leaderboardScore == object) return bl2;
        if (!n.equal((object = (LeaderboardScore)object).getRank(), leaderboardScore.getRank())) return false;
        if (!n.equal(object.getDisplayRank(), leaderboardScore.getDisplayRank())) return false;
        if (!n.equal(object.getRawScore(), leaderboardScore.getRawScore())) return false;
        if (!n.equal(object.getDisplayScore(), leaderboardScore.getDisplayScore())) return false;
        if (!n.equal(object.getTimestampMillis(), leaderboardScore.getTimestampMillis())) return false;
        if (!n.equal(object.getScoreHolderDisplayName(), leaderboardScore.getScoreHolderDisplayName())) return false;
        if (!n.equal(object.getScoreHolderIconImageUri(), leaderboardScore.getScoreHolderIconImageUri())) return false;
        if (!n.equal(object.getScoreHolderHiResImageUri(), leaderboardScore.getScoreHolderHiResImageUri())) return false;
        if (!n.equal(object.getScoreHolder(), leaderboardScore.getScoreHolder())) return false;
        bl2 = bl;
        if (n.equal(object.getScoreTag(), leaderboardScore.getScoreTag())) return bl2;
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static String b(LeaderboardScore leaderboardScore) {
        Player player;
        n.a a = n.h(leaderboardScore).a("Rank", leaderboardScore.getRank()).a("DisplayRank", leaderboardScore.getDisplayRank()).a("Score", leaderboardScore.getRawScore()).a("DisplayScore", leaderboardScore.getDisplayScore()).a("Timestamp", leaderboardScore.getTimestampMillis()).a("DisplayName", leaderboardScore.getScoreHolderDisplayName()).a("IconImageUri", leaderboardScore.getScoreHolderIconImageUri()).a("IconImageUrl", leaderboardScore.getScoreHolderIconImageUrl()).a("HiResImageUri", leaderboardScore.getScoreHolderHiResImageUri()).a("HiResImageUrl", leaderboardScore.getScoreHolderHiResImageUrl());
        if (leaderboardScore.getScoreHolder() == null) {
            player = null;
            do {
                return a.a("Player", player).a("ScoreTag", leaderboardScore.getScoreTag()).toString();
                break;
            } while (true);
        }
        player = leaderboardScore.getScoreHolder();
        return a.a("Player", player).a("ScoreTag", leaderboardScore.getScoreTag()).toString();
    }

    public boolean equals(Object object) {
        return LeaderboardScoreEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lC();
    }

    @Override
    public String getDisplayRank() {
        return this.abA;
    }

    @Override
    public void getDisplayRank(CharArrayBuffer charArrayBuffer) {
        jv.b(this.abA, charArrayBuffer);
    }

    @Override
    public String getDisplayScore() {
        return this.abB;
    }

    @Override
    public void getDisplayScore(CharArrayBuffer charArrayBuffer) {
        jv.b(this.abB, charArrayBuffer);
    }

    @Override
    public long getRank() {
        return this.abz;
    }

    @Override
    public long getRawScore() {
        return this.abC;
    }

    @Override
    public Player getScoreHolder() {
        return this.abH;
    }

    @Override
    public String getScoreHolderDisplayName() {
        if (this.abH == null) {
            return this.abE;
        }
        return this.abH.getDisplayName();
    }

    @Override
    public void getScoreHolderDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.abH == null) {
            jv.b(this.abE, charArrayBuffer);
            return;
        }
        this.abH.getDisplayName(charArrayBuffer);
    }

    @Override
    public Uri getScoreHolderHiResImageUri() {
        if (this.abH == null) {
            return this.abG;
        }
        return this.abH.getHiResImageUri();
    }

    @Override
    public String getScoreHolderHiResImageUrl() {
        if (this.abH == null) {
            return this.abK;
        }
        return this.abH.getHiResImageUrl();
    }

    @Override
    public Uri getScoreHolderIconImageUri() {
        if (this.abH == null) {
            return this.abF;
        }
        return this.abH.getIconImageUri();
    }

    @Override
    public String getScoreHolderIconImageUrl() {
        if (this.abH == null) {
            return this.abJ;
        }
        return this.abH.getIconImageUrl();
    }

    @Override
    public String getScoreTag() {
        return this.abI;
    }

    @Override
    public long getTimestampMillis() {
        return this.abD;
    }

    public int hashCode() {
        return LeaderboardScoreEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public LeaderboardScore lC() {
        return this;
    }

    public String toString() {
        return LeaderboardScoreEntity.b(this);
    }
}

