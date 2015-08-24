/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardVariant;
import com.google.android.gms.games.leaderboard.LeaderboardVariantEntity;
import com.google.android.gms.internal.jv;
import java.util.ArrayList;
import java.util.Collection;

public final class LeaderboardEntity
implements Leaderboard {
    private final String NH;
    private final Uri Vh;
    private final String Vs;
    private final String abu;
    private final int abv;
    private final ArrayList<LeaderboardVariantEntity> abw;
    private final Game abx;

    /*
     * Enabled aggressive block sorting
     */
    public LeaderboardEntity(Leaderboard arrayList) {
        this.abu = arrayList.getLeaderboardId();
        this.NH = arrayList.getDisplayName();
        this.Vh = arrayList.getIconImageUri();
        this.Vs = arrayList.getIconImageUrl();
        this.abv = arrayList.getScoreOrder();
        Game game = arrayList.getGame();
        game = game == null ? null : new GameEntity(game);
        this.abx = game;
        arrayList = arrayList.getVariants();
        int n = arrayList.size();
        this.abw = new ArrayList(n);
        for (int i = 0; i < n; ++i) {
            this.abw.add((LeaderboardVariantEntity)arrayList.get(i).freeze());
        }
    }

    static int a(Leaderboard leaderboard) {
        return n.hashCode(leaderboard.getLeaderboardId(), leaderboard.getDisplayName(), leaderboard.getIconImageUri(), leaderboard.getScoreOrder(), leaderboard.getVariants());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(Leaderboard leaderboard, Object object) {
        boolean bl = true;
        if (!(object instanceof Leaderboard)) {
            return false;
        }
        boolean bl2 = bl;
        if (leaderboard == object) return bl2;
        if (!n.equal((object = (Leaderboard)object).getLeaderboardId(), leaderboard.getLeaderboardId())) return false;
        if (!n.equal(object.getDisplayName(), leaderboard.getDisplayName())) return false;
        if (!n.equal(object.getIconImageUri(), leaderboard.getIconImageUri())) return false;
        if (!n.equal(object.getScoreOrder(), leaderboard.getScoreOrder())) return false;
        bl2 = bl;
        if (n.equal(object.getVariants(), leaderboard.getVariants())) return bl2;
        return false;
    }

    static String b(Leaderboard leaderboard) {
        return n.h(leaderboard).a("LeaderboardId", leaderboard.getLeaderboardId()).a("DisplayName", leaderboard.getDisplayName()).a("IconImageUri", leaderboard.getIconImageUri()).a("IconImageUrl", leaderboard.getIconImageUrl()).a("ScoreOrder", leaderboard.getScoreOrder()).a("Variants", leaderboard.getVariants()).toString();
    }

    public boolean equals(Object object) {
        return LeaderboardEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lz();
    }

    @Override
    public String getDisplayName() {
        return this.NH;
    }

    @Override
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        jv.b(this.NH, charArrayBuffer);
    }

    @Override
    public Game getGame() {
        return this.abx;
    }

    @Override
    public Uri getIconImageUri() {
        return this.Vh;
    }

    @Override
    public String getIconImageUrl() {
        return this.Vs;
    }

    @Override
    public String getLeaderboardId() {
        return this.abu;
    }

    @Override
    public int getScoreOrder() {
        return this.abv;
    }

    @Override
    public ArrayList<LeaderboardVariant> getVariants() {
        return new ArrayList<LeaderboardVariant>(this.abw);
    }

    public int hashCode() {
        return LeaderboardEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public Leaderboard lz() {
        return this;
    }

    public String toString() {
        return LeaderboardEntity.b(this);
    }
}

