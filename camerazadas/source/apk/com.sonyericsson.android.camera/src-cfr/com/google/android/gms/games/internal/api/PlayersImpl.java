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
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class PlayersImpl
implements Players {
    @Override
    public Player getCurrentPlayer(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kc();
    }

    @Override
    public String getCurrentPlayerId(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kb();
    }

    @Override
    public Intent getPlayerSearchIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).km();
    }

    @Override
    public PendingResult<Players.LoadPlayersResult> loadConnectedPlayers(GoogleApiClient googleApiClient, final boolean bl) {
        return googleApiClient.a(new LoadPlayersImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, bl);
            }
        });
    }

    @Override
    public PendingResult<Players.LoadPlayersResult> loadInvitablePlayers(GoogleApiClient googleApiClient, final int n, final boolean bl) {
        return googleApiClient.a(new LoadPlayersImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, n, false, bl);
            }
        });
    }

    @Override
    public PendingResult<Players.LoadPlayersResult> loadMoreInvitablePlayers(GoogleApiClient googleApiClient, final int n) {
        return googleApiClient.a(new LoadPlayersImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, n, true, false);
            }
        });
    }

    @Override
    public PendingResult<Players.LoadPlayersResult> loadMoreRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, final int n) {
        return googleApiClient.a(new LoadPlayersImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, "played_with", n, true, false);
            }
        });
    }

    @Override
    public PendingResult<Players.LoadPlayersResult> loadPlayer(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.a(new LoadPlayersImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, string);
            }
        });
    }

    @Override
    public PendingResult<Players.LoadPlayersResult> loadRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, final int n, final boolean bl) {
        return googleApiClient.a(new LoadPlayersImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, "played_with", n, false, bl);
            }
        });
    }

    private static abstract class LoadOwnerCoverPhotoUrisImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadOwnerCoverPhotoUrisResult> {
        private LoadOwnerCoverPhotoUrisImpl() {
        }

        public Players.LoadOwnerCoverPhotoUrisResult ac(final Status status) {
            return new Players.LoadOwnerCoverPhotoUrisResult(){

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.ac(status);
        }

    }

    private static abstract class LoadPlayersImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadPlayersResult> {
        private LoadPlayersImpl() {
        }

        public Players.LoadPlayersResult ad(final Status status) {
            return new Players.LoadPlayersResult(){

                @Override
                public PlayerBuffer getPlayers() {
                    return new PlayerBuffer(DataHolder.as(14));
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
            return this.ad(status);
        }

    }

    private static abstract class LoadProfileSettingsResultImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadProfileSettingsResult> {
        private LoadProfileSettingsResultImpl() {
        }

        protected Players.LoadProfileSettingsResult ae(final Status status) {
            return new Players.LoadProfileSettingsResult(){

                @Override
                public Status getStatus() {
                    return status;
                }

                @Override
                public boolean isProfileVisible() {
                    return true;
                }

                @Override
                public boolean isVisibilityExplicitlySet() {
                    return false;
                }
            };
        }

        @Override
        protected /* synthetic */ Result c(Status status) {
            return this.ae(status);
        }

    }

    private static abstract class LoadXpForGameCategoriesResultImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadXpForGameCategoriesResult> {
        private LoadXpForGameCategoriesResultImpl() {
        }

        public Players.LoadXpForGameCategoriesResult af(final Status status) {
            return new Players.LoadXpForGameCategoriesResult(){

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.af(status);
        }

    }

    private static abstract class LoadXpStreamResultImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadXpStreamResult> {
        private LoadXpStreamResultImpl() {
        }

        public Players.LoadXpStreamResult ag(final Status status) {
            return new Players.LoadXpStreamResult(){

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.ag(status);
        }

    }

    private static abstract class UpdateProfileSettingsResultImpl
    extends Games.BaseGamesApiMethodImpl<Status> {
        private UpdateProfileSettingsResultImpl() {
        }

        @Override
        protected /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        protected Status d(Status status) {
            return status;
        }
    }

}

