/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;

public final class LeaderboardsImpl
implements Leaderboards {
    @Override
    public Intent getAllLeaderboardsIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).ke();
    }

    @Override
    public Intent getLeaderboardIntent(GoogleApiClient googleApiClient, String string) {
        return Games.c(googleApiClient).bx(string);
    }

    @Override
    public PendingResult<Leaderboards.LoadPlayerScoreResult> loadCurrentPlayerLeaderboardScore(GoogleApiClient googleApiClient, final String string, final int n, final int n2) {
        return googleApiClient.a(new LoadPlayerScoreImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, null, string, n, n2);
            }
        });
    }

    @Override
    public PendingResult<Leaderboards.LeaderboardMetadataResult> loadLeaderboardMetadata(GoogleApiClient googleApiClient, final String string, final boolean bl) {
        return googleApiClient.a(new LoadMetadataImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, string, bl);
            }
        });
    }

    @Override
    public PendingResult<Leaderboards.LeaderboardMetadataResult> loadLeaderboardMetadata(GoogleApiClient googleApiClient, final boolean bl) {
        return googleApiClient.a(new LoadMetadataImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(this, bl);
            }
        });
    }

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadMoreScores(GoogleApiClient googleApiClient, final LeaderboardScoreBuffer leaderboardScoreBuffer, final int n, final int n2) {
        return googleApiClient.a(new LoadScoresImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, leaderboardScoreBuffer, n, n2);
            }
        });
    }

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadPlayerCenteredScores(GoogleApiClient googleApiClient, String string, int n, int n2, int n3) {
        return this.loadPlayerCenteredScores(googleApiClient, string, n, n2, n3, false);
    }

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadPlayerCenteredScores(GoogleApiClient googleApiClient, final String string, final int n, final int n2, final int n3, final boolean bl) {
        return googleApiClient.a(new LoadScoresImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(this, string, n, n2, n3, bl);
            }
        });
    }

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadTopScores(GoogleApiClient googleApiClient, String string, int n, int n2, int n3) {
        return this.loadTopScores(googleApiClient, string, n, n2, n3, false);
    }

    @Override
    public PendingResult<Leaderboards.LoadScoresResult> loadTopScores(GoogleApiClient googleApiClient, final String string, final int n, final int n2, final int n3, final boolean bl) {
        return googleApiClient.a(new LoadScoresImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, string, n, n2, n3, bl);
            }
        });
    }

    @Override
    public void submitScore(GoogleApiClient googleApiClient, String string, long l) {
        this.submitScore(googleApiClient, string, l, null);
    }

    @Override
    public void submitScore(GoogleApiClient googleApiClient, String string, long l, String string2) {
        Games.c(googleApiClient).a(null, string, l, string2);
    }

    @Override
    public PendingResult<Leaderboards.SubmitScoreResult> submitScoreImmediate(GoogleApiClient googleApiClient, String string, long l) {
        return this.submitScoreImmediate(googleApiClient, string, l, null);
    }

    @Override
    public PendingResult<Leaderboards.SubmitScoreResult> submitScoreImmediate(GoogleApiClient googleApiClient, final String string, final long l, final String string2) {
        return googleApiClient.b(new SubmitScoreImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, string, l, string2);
            }
        });
    }

    private static abstract class LoadMetadataImpl
    extends Games.BaseGamesApiMethodImpl<Leaderboards.LeaderboardMetadataResult> {
        private LoadMetadataImpl() {
        }

        public Leaderboards.LeaderboardMetadataResult U(final Status status) {
            return new Leaderboards.LeaderboardMetadataResult(){

                @Override
                public LeaderboardBuffer getLeaderboards() {
                    return new LeaderboardBuffer(DataHolder.as(14));
                }

                @Override
                public Status getStatus() {
                    return status;
                }

                @Override
                public void release() {
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.U(status);
        }

    }

    private static abstract class LoadPlayerScoreImpl
    extends Games.BaseGamesApiMethodImpl<Leaderboards.LoadPlayerScoreResult> {
        private LoadPlayerScoreImpl() {
        }

        public Leaderboards.LoadPlayerScoreResult V(final Status status) {
            return new Leaderboards.LoadPlayerScoreResult(){

                @Override
                public LeaderboardScore getScore() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.V(status);
        }

    }

    private static abstract class LoadScoresImpl
    extends Games.BaseGamesApiMethodImpl<Leaderboards.LoadScoresResult> {
        private LoadScoresImpl() {
        }

        public Leaderboards.LoadScoresResult W(final Status status) {
            return new Leaderboards.LoadScoresResult(){

                @Override
                public Leaderboard getLeaderboard() {
                    return null;
                }

                @Override
                public LeaderboardScoreBuffer getScores() {
                    return new LeaderboardScoreBuffer(DataHolder.as(14));
                }

                @Override
                public Status getStatus() {
                    return status;
                }

                @Override
                public void release() {
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.W(status);
        }

    }

    protected static abstract class SubmitScoreImpl
    extends Games.BaseGamesApiMethodImpl<Leaderboards.SubmitScoreResult> {
        protected SubmitScoreImpl() {
        }

        public Leaderboards.SubmitScoreResult X(final Status status) {
            return new Leaderboards.SubmitScoreResult(){

                @Override
                public ScoreSubmissionData getScoreData() {
                    return new ScoreSubmissionData(DataHolder.as(14));
                }

                @Override
                public Status getStatus() {
                    return status;
                }

                @Override
                public void release() {
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.X(status);
        }

    }

}

