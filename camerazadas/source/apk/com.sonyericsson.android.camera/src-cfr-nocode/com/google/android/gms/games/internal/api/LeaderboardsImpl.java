/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;

/*
 * Exception performing whole class analysis ignored.
 */
public final class LeaderboardsImpl
implements Leaderboards {
    public LeaderboardsImpl();

    @Override
    public Intent getAllLeaderboardsIntent(GoogleApiClient var1);

    @Override
    public Intent getLeaderboardIntent(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<Leaderboards.LoadPlayerScoreResult> loadCurrentPlayerLeaderboardScore(GoogleApiClient var1, String var2, int var3, int var4);

    @Override
    public PendingResult<Leaderboards.LeaderboardMetadataResult> loadLeaderboardMetadata(GoogleApiClient var1, String var2, boolean var3);

    @Override
    public PendingResult<Leaderboards.LeaderboardMetadataResult> loadLeaderboardMetadata(GoogleApiClient var1, boolean var2);

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadMoreScores(GoogleApiClient var1, LeaderboardScoreBuffer var2, int var3, int var4);

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadPlayerCenteredScores(GoogleApiClient var1, String var2, int var3, int var4, int var5);

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadPlayerCenteredScores(GoogleApiClient var1, String var2, int var3, int var4, int var5, boolean var6);

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadTopScores(GoogleApiClient var1, String var2, int var3, int var4, int var5);

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadTopScores(GoogleApiClient var1, String var2, int var3, int var4, int var5, boolean var6);

    @Override
    public void submitScore(GoogleApiClient var1, String var2, long var3);

    @Override
    public void submitScore(GoogleApiClient var1, String var2, long var3, String var5);

    @Override
    public PendingResult<Leaderboards.SubmitScoreResult> submitScoreImmediate(GoogleApiClient var1, String var2, long var3);

    @Override
    public PendingResult<Leaderboards.SubmitScoreResult> submitScoreImmediate(GoogleApiClient var1, String var2, long var3, String var5);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadMetadataImpl
    extends Games.BaseGamesApiMethodImpl<Leaderboards.LeaderboardMetadataResult> {
        private LoadMetadataImpl();

        /* synthetic */ LoadMetadataImpl(com.google.android.gms.games.internal.api.LeaderboardsImpl$1 var1);

        public Leaderboards.LeaderboardMetadataResult U(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadPlayerScoreImpl
    extends Games.BaseGamesApiMethodImpl<Leaderboards.LoadPlayerScoreResult> {
        private LoadPlayerScoreImpl();

        /* synthetic */ LoadPlayerScoreImpl(com.google.android.gms.games.internal.api.LeaderboardsImpl$1 var1);

        public Leaderboards.LoadPlayerScoreResult V(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadScoresImpl
    extends Games.BaseGamesApiMethodImpl<Leaderboards.LoadScoresResult> {
        private LoadScoresImpl();

        /* synthetic */ LoadScoresImpl(com.google.android.gms.games.internal.api.LeaderboardsImpl$1 var1);

        public Leaderboards.LoadScoresResult W(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    protected static abstract class SubmitScoreImpl
    extends Games.BaseGamesApiMethodImpl<Leaderboards.SubmitScoreResult> {
        protected SubmitScoreImpl();

        public Leaderboards.SubmitScoreResult X(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

