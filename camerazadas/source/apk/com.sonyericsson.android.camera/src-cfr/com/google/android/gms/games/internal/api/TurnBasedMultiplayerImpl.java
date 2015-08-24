/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import java.util.List;

public final class TurnBasedMultiplayerImpl
implements TurnBasedMultiplayer {
    @Override
    public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> acceptInvitation(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new InitiateMatchImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.e(this, string);
            }
        });
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.CancelMatchResult> cancelMatch(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new CancelMatchImpl(string){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.g(this, string);
            }
        });
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> createMatch(GoogleApiClient googleApiClient, final TurnBasedMatchConfig turnBasedMatchConfig) {
        return googleApiClient.b(new InitiateMatchImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, turnBasedMatchConfig);
            }
        });
    }

    @Override
    public void declineInvitation(GoogleApiClient googleApiClient, String string) {
        Games.c(googleApiClient).p(string, 1);
    }

    @Override
    public void dismissInvitation(GoogleApiClient googleApiClient, String string) {
        Games.c(googleApiClient).o(string, 1);
    }

    @Override
    public void dismissMatch(GoogleApiClient googleApiClient, String string) {
        Games.c(googleApiClient).by(string);
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient googleApiClient, String string) {
        return this.finishMatch(googleApiClient, string, null, (ParticipantResult[])null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient googleApiClient, String string, byte[] arrby, List<ParticipantResult> arrparticipantResult) {
        if (arrparticipantResult == null) {
            arrparticipantResult = null;
            do {
                return this.finishMatch(googleApiClient, string, arrby, arrparticipantResult);
                break;
            } while (true);
        }
        arrparticipantResult = arrparticipantResult.toArray(new ParticipantResult[arrparticipantResult.size()]);
        return this.finishMatch(googleApiClient, string, arrby, arrparticipantResult);
    }

    @Override
    public /* varargs */ PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient googleApiClient, final String string, final byte[] arrby, final ParticipantResult ... arrparticipantResult) {
        return googleApiClient.b(new UpdateMatchImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, string, arrby, arrparticipantResult);
            }
        });
    }

    @Override
    public Intent getInboxIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kg();
    }

    @Override
    public int getMaxMatchDataSize(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kq();
    }

    @Override
    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int n, int n2) {
        return Games.c(googleApiClient).a(n, n2, true);
    }

    @Override
    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int n, int n2, boolean bl) {
        return Games.c(googleApiClient).a(n, n2, bl);
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatch(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new LeaveMatchImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.f(this, string);
            }
        });
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatchDuringTurn(GoogleApiClient googleApiClient, final String string, final String string2) {
        return googleApiClient.b(new LeaveMatchImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, string, string2);
            }
        });
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.LoadMatchResult> loadMatch(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.a(new LoadMatchImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.h(this, string);
            }
        });
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient googleApiClient, final int n, final int[] arrn) {
        return googleApiClient.a(new LoadMatchesImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, n, arrn);
            }
        });
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient googleApiClient, int[] arrn) {
        return this.loadMatchesByStatus(googleApiClient, 0, arrn);
    }

    @Override
    public void registerMatchUpdateListener(GoogleApiClient googleApiClient, OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
        Games.c(googleApiClient).a(onTurnBasedMatchUpdateReceivedListener);
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> rematch(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new InitiateMatchImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.d(this, string);
            }
        });
    }

    @Override
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient googleApiClient, String string, byte[] arrby, String string2) {
        return this.takeTurn(googleApiClient, string, arrby, string2, (ParticipantResult[])null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient googleApiClient, String string, byte[] arrby, String string2, List<ParticipantResult> arrparticipantResult) {
        if (arrparticipantResult == null) {
            arrparticipantResult = null;
            do {
                return this.takeTurn(googleApiClient, string, arrby, string2, arrparticipantResult);
                break;
            } while (true);
        }
        arrparticipantResult = arrparticipantResult.toArray(new ParticipantResult[arrparticipantResult.size()]);
        return this.takeTurn(googleApiClient, string, arrby, string2, arrparticipantResult);
    }

    @Override
    public /* varargs */ PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient googleApiClient, final String string, final byte[] arrby, final String string2, final ParticipantResult ... arrparticipantResult) {
        return googleApiClient.b(new UpdateMatchImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, string, arrby, string2, arrparticipantResult);
            }
        });
    }

    @Override
    public void unregisterMatchUpdateListener(GoogleApiClient googleApiClient) {
        Games.c(googleApiClient).kj();
    }

    private static abstract class CancelMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.CancelMatchResult> {
        private final String BL;

        public CancelMatchImpl(String string) {
            this.BL = string;
        }

        public TurnBasedMultiplayer.CancelMatchResult as(final Status status) {
            return new TurnBasedMultiplayer.CancelMatchResult(){

                @Override
                public String getMatchId() {
                    return CancelMatchImpl.this.BL;
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.as(status);
        }

    }

    private static abstract class InitiateMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.InitiateMatchResult> {
        private InitiateMatchImpl() {
        }

        public TurnBasedMultiplayer.InitiateMatchResult at(final Status status) {
            return new TurnBasedMultiplayer.InitiateMatchResult(){

                @Override
                public TurnBasedMatch getMatch() {
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
            return this.at(status);
        }

    }

    private static abstract class LeaveMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.LeaveMatchResult> {
        private LeaveMatchImpl() {
        }

        public TurnBasedMultiplayer.LeaveMatchResult au(final Status status) {
            return new TurnBasedMultiplayer.LeaveMatchResult(){

                @Override
                public TurnBasedMatch getMatch() {
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
            return this.au(status);
        }

    }

    private static abstract class LoadMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.LoadMatchResult> {
        private LoadMatchImpl() {
        }

        public TurnBasedMultiplayer.LoadMatchResult av(final Status status) {
            return new TurnBasedMultiplayer.LoadMatchResult(){

                @Override
                public TurnBasedMatch getMatch() {
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
            return this.av(status);
        }

    }

    private static abstract class LoadMatchesImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.LoadMatchesResult> {
        private LoadMatchesImpl() {
        }

        public TurnBasedMultiplayer.LoadMatchesResult aw(final Status status) {
            return new TurnBasedMultiplayer.LoadMatchesResult(){

                @Override
                public LoadMatchesResponse getMatches() {
                    return new LoadMatchesResponse(new Bundle());
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
            return this.aw(status);
        }

    }

    private static abstract class UpdateMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.UpdateMatchResult> {
        private UpdateMatchImpl() {
        }

        public TurnBasedMultiplayer.UpdateMatchResult ax(final Status status) {
            return new TurnBasedMultiplayer.UpdateMatchResult(){

                @Override
                public TurnBasedMatch getMatch() {
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
            return this.ax(status);
        }

    }

}

