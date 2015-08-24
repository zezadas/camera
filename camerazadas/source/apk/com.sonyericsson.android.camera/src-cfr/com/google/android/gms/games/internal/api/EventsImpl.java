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
import com.google.android.gms.games.Games;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class EventsImpl
implements Events {
    @Override
    public void increment(GoogleApiClient googleApiClient, final String string, final int n) {
        GamesClientImpl gamesClientImpl = Games.d(googleApiClient);
        if (gamesClientImpl.isConnected()) {
            gamesClientImpl.n(string, n);
            return;
        }
        googleApiClient.b(new UpdateImpl(){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.n(string, n);
            }
        });
    }

    @Override
    public PendingResult<Events.LoadEventsResult> load(GoogleApiClient googleApiClient, final boolean bl) {
        return googleApiClient.a(new LoadImpl(){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.d(this, bl);
            }
        });
    }

    @Override
    public /* varargs */ PendingResult<Events.LoadEventsResult> loadByIds(GoogleApiClient googleApiClient, final boolean bl, final String ... arrstring) {
        return googleApiClient.a(new LoadImpl(){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, bl, arrstring);
            }
        });
    }

    private static abstract class LoadImpl
    extends Games.BaseGamesApiMethodImpl<Events.LoadEventsResult> {
        private LoadImpl() {
        }

        public Events.LoadEventsResult O(final Status status) {
            return new Events.LoadEventsResult(){

                @Override
                public EventBuffer getEvents() {
                    return new EventBuffer(DataHolder.as(14));
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
            return this.O(status);
        }

    }

    private static abstract class UpdateImpl
    extends Games.BaseGamesApiMethodImpl<Result> {
        private UpdateImpl() {
        }

        @Override
        public Result c(final Status status) {
            return new Result(){

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

    }

}

