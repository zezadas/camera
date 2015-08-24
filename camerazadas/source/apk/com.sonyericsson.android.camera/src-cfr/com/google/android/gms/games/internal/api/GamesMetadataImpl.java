/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class GamesMetadataImpl
implements GamesMetadata {
    @Override
    public Game getCurrentGame(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kd();
    }

    @Override
    public PendingResult<GamesMetadata.LoadGamesResult> loadGame(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new LoadGamesImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.f(this);
            }
        });
    }

    private static abstract class LoadExtendedGamesImpl
    extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadExtendedGamesResult> {
        private LoadExtendedGamesImpl() {
        }

        public GamesMetadata.LoadExtendedGamesResult P(final Status status) {
            return new GamesMetadata.LoadExtendedGamesResult(){

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
            return this.P(status);
        }

    }

    private static abstract class LoadGameInstancesImpl
    extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGameInstancesResult> {
        private LoadGameInstancesImpl() {
        }

        public GamesMetadata.LoadGameInstancesResult Q(final Status status) {
            return new GamesMetadata.LoadGameInstancesResult(){

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
            return this.Q(status);
        }

    }

    private static abstract class LoadGameSearchSuggestionsImpl
    extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGameSearchSuggestionsResult> {
        private LoadGameSearchSuggestionsImpl() {
        }

        public GamesMetadata.LoadGameSearchSuggestionsResult R(final Status status) {
            return new GamesMetadata.LoadGameSearchSuggestionsResult(){

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
            return this.R(status);
        }

    }

    private static abstract class LoadGamesImpl
    extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGamesResult> {
        private LoadGamesImpl() {
        }

        public GamesMetadata.LoadGamesResult S(final Status status) {
            return new GamesMetadata.LoadGamesResult(){

                @Override
                public GameBuffer getGames() {
                    return new GameBuffer(DataHolder.as(14));
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
            return this.S(status);
        }

    }

}

