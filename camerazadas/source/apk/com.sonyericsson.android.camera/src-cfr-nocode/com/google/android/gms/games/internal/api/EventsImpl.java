/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;

/*
 * Exception performing whole class analysis ignored.
 */
public final class EventsImpl
implements Events {
    public EventsImpl();

    @Override
    public void increment(GoogleApiClient var1, String var2, int var3);

    @Override
    public PendingResult<Events.LoadEventsResult> load(GoogleApiClient var1, boolean var2);

    @Override
    public /* varargs */ PendingResult<Events.LoadEventsResult> loadByIds(GoogleApiClient var1, boolean var2, String ... var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadImpl
    extends Games.BaseGamesApiMethodImpl<Events.LoadEventsResult> {
        private LoadImpl();

        /* synthetic */ LoadImpl(com.google.android.gms.games.internal.api.EventsImpl$1 var1);

        public Events.LoadEventsResult O(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class UpdateImpl
    extends Games.BaseGamesApiMethodImpl<Result> {
        private UpdateImpl();

        /* synthetic */ UpdateImpl(com.google.android.gms.games.internal.api.EventsImpl$1 var1);

        @Override
        public Result c(Status var1);

    }

}

