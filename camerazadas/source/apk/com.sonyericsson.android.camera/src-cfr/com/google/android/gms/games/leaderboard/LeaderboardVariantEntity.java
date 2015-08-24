/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.internal.constants.LeaderboardCollection;
import com.google.android.gms.games.internal.constants.TimeSpan;
import com.google.android.gms.games.leaderboard.LeaderboardVariant;

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

    public LeaderboardVariantEntity(LeaderboardVariant leaderboardVariant) {
        this.abM = leaderboardVariant.getTimeSpan();
        this.abN = leaderboardVariant.getCollection();
        this.abO = leaderboardVariant.hasPlayerInfo();
        this.abP = leaderboardVariant.getRawPlayerScore();
        this.abQ = leaderboardVariant.getDisplayPlayerScore();
        this.abR = leaderboardVariant.getPlayerRank();
        this.abS = leaderboardVariant.getDisplayPlayerRank();
        this.abT = leaderboardVariant.getPlayerScoreTag();
        this.abU = leaderboardVariant.getNumScores();
        this.abV = leaderboardVariant.lD();
        this.abW = leaderboardVariant.lE();
        this.abX = leaderboardVariant.lF();
    }

    static int a(LeaderboardVariant leaderboardVariant) {
        return n.hashCode(leaderboardVariant.getTimeSpan(), leaderboardVariant.getCollection(), leaderboardVariant.hasPlayerInfo(), leaderboardVariant.getRawPlayerScore(), leaderboardVariant.getDisplayPlayerScore(), leaderboardVariant.getPlayerRank(), leaderboardVariant.getDisplayPlayerRank(), leaderboardVariant.getNumScores(), leaderboardVariant.lD(), leaderboardVariant.lF(), leaderboardVariant.lE());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(LeaderboardVariant leaderboardVariant, Object object) {
        boolean bl = true;
        if (!(object instanceof LeaderboardVariant)) {
            return false;
        }
        boolean bl2 = bl;
        if (leaderboardVariant == object) return bl2;
        if (!n.equal((object = (LeaderboardVariant)object).getTimeSpan(), leaderboardVariant.getTimeSpan())) return false;
        if (!n.equal(object.getCollection(), leaderboardVariant.getCollection())) return false;
        if (!n.equal(object.hasPlayerInfo(), leaderboardVariant.hasPlayerInfo())) return false;
        if (!n.equal(object.getRawPlayerScore(), leaderboardVariant.getRawPlayerScore())) return false;
        if (!n.equal(object.getDisplayPlayerScore(), leaderboardVariant.getDisplayPlayerScore())) return false;
        if (!n.equal(object.getPlayerRank(), leaderboardVariant.getPlayerRank())) return false;
        if (!n.equal(object.getDisplayPlayerRank(), leaderboardVariant.getDisplayPlayerRank())) return false;
        if (!n.equal(object.getNumScores(), leaderboardVariant.getNumScores())) return false;
        if (!n.equal(object.lD(), leaderboardVariant.lD())) return false;
        if (!n.equal(object.lF(), leaderboardVariant.lF())) return false;
        bl2 = bl;
        if (n.equal(object.lE(), leaderboardVariant.lE())) return bl2;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    static String b(LeaderboardVariant leaderboardVariant) {
        n.a a = n.h(leaderboardVariant).a("TimeSpan", TimeSpan.dH(leaderboardVariant.getTimeSpan())).a("Collection", LeaderboardCollection.dH(leaderboardVariant.getCollection()));
        Object object = leaderboardVariant.hasPlayerInfo() ? Long.valueOf(leaderboardVariant.getRawPlayerScore()) : "none";
        a = a.a("RawPlayerScore", object);
        object = leaderboardVariant.hasPlayerInfo() ? leaderboardVariant.getDisplayPlayerScore() : "none";
        a = a.a("DisplayPlayerScore", object);
        object = leaderboardVariant.hasPlayerInfo() ? Long.valueOf(leaderboardVariant.getPlayerRank()) : "none";
        a = a.a("PlayerRank", object);
        if (leaderboardVariant.hasPlayerInfo()) {
            object = leaderboardVariant.getDisplayPlayerRank();
            return a.a("DisplayPlayerRank", object).a("NumScores", leaderboardVariant.getNumScores()).a("TopPageNextToken", leaderboardVariant.lD()).a("WindowPageNextToken", leaderboardVariant.lF()).a("WindowPagePrevToken", leaderboardVariant.lE()).toString();
        }
        object = "none";
        return a.a("DisplayPlayerRank", object).a("NumScores", leaderboardVariant.getNumScores()).a("TopPageNextToken", leaderboardVariant.lD()).a("WindowPageNextToken", leaderboardVariant.lF()).a("WindowPagePrevToken", leaderboardVariant.lE()).toString();
    }

    public boolean equals(Object object) {
        return LeaderboardVariantEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lG();
    }

    @Override
    public int getCollection() {
        return this.abN;
    }

    @Override
    public String getDisplayPlayerRank() {
        return this.abS;
    }

    @Override
    public String getDisplayPlayerScore() {
        return this.abQ;
    }

    @Override
    public long getNumScores() {
        return this.abU;
    }

    @Override
    public long getPlayerRank() {
        return this.abR;
    }

    @Override
    public String getPlayerScoreTag() {
        return this.abT;
    }

    @Override
    public long getRawPlayerScore() {
        return this.abP;
    }

    @Override
    public int getTimeSpan() {
        return this.abM;
    }

    @Override
    public boolean hasPlayerInfo() {
        return this.abO;
    }

    public int hashCode() {
        return LeaderboardVariantEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public String lD() {
        return this.abV;
    }

    @Override
    public String lE() {
        return this.abW;
    }

    @Override
    public String lF() {
        return this.abX;
    }

    public LeaderboardVariant lG() {
        return this;
    }

    public String toString() {
        return LeaderboardVariantEntity.b(this);
    }
}

