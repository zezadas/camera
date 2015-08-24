/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.games.internal.constants.TimeSpan;
import java.util.HashMap;

public final class ScoreSubmissionData {
    private static final String[] abs = new String[]{"leaderboardId", "playerId", "timeSpan", "hasResult", "rawScore", "formattedScore", "newBest", "scoreTag"};
    private int HF;
    private String VK;
    private HashMap<Integer, Result> abY;
    private String abu;

    /*
     * Enabled aggressive block sorting
     */
    public ScoreSubmissionData(DataHolder dataHolder) {
        this.HF = dataHolder.getStatusCode();
        this.abY = new HashMap();
        int n = dataHolder.getCount();
        boolean bl = n == 3;
        o.K(bl);
        for (int i = 0; i < n; ++i) {
            int n2 = dataHolder.ar(i);
            if (i == 0) {
                this.abu = dataHolder.c("leaderboardId", i, n2);
                this.VK = dataHolder.c("playerId", i, n2);
            }
            if (!dataHolder.d("hasResult", i, n2)) continue;
            this.a(new Result(dataHolder.a("rawScore", i, n2), dataHolder.c("formattedScore", i, n2), dataHolder.c("scoreTag", i, n2), dataHolder.d("newBest", i, n2)), dataHolder.b("timeSpan", i, n2));
        }
    }

    private void a(Result result, int n) {
        this.abY.put(n, result);
    }

    public String getLeaderboardId() {
        return this.abu;
    }

    public String getPlayerId() {
        return this.VK;
    }

    public Result getScoreResult(int n) {
        return this.abY.get(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        n.a a = n.h(this).a("PlayerId", this.VK).a("StatusCode", this.HF);
        for (int i = 0; i < 3; ++i) {
            Object object = this.abY.get(i);
            a.a("TimesSpan", TimeSpan.dH(i));
            object = object == null ? "null" : object.toString();
            a.a("Result", object);
        }
        return a.toString();
    }

    public static final class Result {
        public final String formattedScore;
        public final boolean newBest;
        public final long rawScore;
        public final String scoreTag;

        public Result(long l, String string, String string2, boolean bl) {
            this.rawScore = l;
            this.formattedScore = string;
            this.scoreTag = string2;
            this.newBest = bl;
        }

        public String toString() {
            return n.h(this).a("RawScore", this.rawScore).a("FormattedScore", this.formattedScore).a("ScoreTag", this.scoreTag).a("NewBest", this.newBest).toString();
        }
    }

}

