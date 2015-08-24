/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ScoreSubmissionData {
    private static final String[] abs;
    private int HF;
    private String VK;
    private HashMap<Integer, Result> abY;
    private String abu;

    static;

    public ScoreSubmissionData(DataHolder var1);

    private void a(Result var1, int var2);

    public String getLeaderboardId();

    public String getPlayerId();

    public Result getScoreResult(int var1);

    public String toString();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Result {
        public final String formattedScore;
        public final boolean newBest;
        public final long rawScore;
        public final String scoreTag;

        public Result(long var1, String var3, String var4, boolean var5);

        public String toString();
    }

}

