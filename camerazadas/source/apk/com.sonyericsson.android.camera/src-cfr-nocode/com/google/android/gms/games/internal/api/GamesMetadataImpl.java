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
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.internal.GamesClientImpl;

/*
 * Exception performing whole class analysis ignored.
 */
public final class GamesMetadataImpl
implements GamesMetadata {
    public GamesMetadataImpl();

    @Override
    public Game getCurrentGame(GoogleApiClient var1);

    @Override
    public PendingResult<GamesMetadata.LoadGamesResult> loadGame(GoogleApiClient var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadExtendedGamesImpl
    extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadExtendedGamesResult> {
        private LoadExtendedGamesImpl();

        public GamesMetadata.LoadExtendedGamesResult P(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadGameInstancesImpl
    extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGameInstancesResult> {
        private LoadGameInstancesImpl();

        public GamesMetadata.LoadGameInstancesResult Q(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadGameSearchSuggestionsImpl
    extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGameSearchSuggestionsResult> {
        private LoadGameSearchSuggestionsImpl();

        public GamesMetadata.LoadGameSearchSuggestionsResult R(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadGamesImpl
    extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGamesResult> {
        private LoadGamesImpl();

        /* synthetic */ LoadGamesImpl(com.google.android.gms.games.internal.api.GamesMetadataImpl$1 var1);

        public GamesMetadata.LoadGamesResult S(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

