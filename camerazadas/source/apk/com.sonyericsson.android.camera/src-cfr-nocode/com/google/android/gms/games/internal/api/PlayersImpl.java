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
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.internal.GamesClientImpl;

/*
 * Exception performing whole class analysis ignored.
 */
public final class PlayersImpl
implements Players {
    public PlayersImpl();

    @Override
    public Player getCurrentPlayer(GoogleApiClient var1);

    @Override
    public String getCurrentPlayerId(GoogleApiClient var1);

    @Override
    public Intent getPlayerSearchIntent(GoogleApiClient var1);

    @Override
    public PendingResult<Players.LoadPlayersResult> loadConnectedPlayers(GoogleApiClient var1, boolean var2);

    @Override
    public PendingResult<Players.LoadPlayersResult> loadInvitablePlayers(GoogleApiClient var1, int var2, boolean var3);

    @Override
    public PendingResult<Players.LoadPlayersResult> loadMoreInvitablePlayers(GoogleApiClient var1, int var2);

    @Override
    public PendingResult<Players.LoadPlayersResult> loadMoreRecentlyPlayedWithPlayers(GoogleApiClient var1, int var2);

    @Override
    public PendingResult<Players.LoadPlayersResult> loadPlayer(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<Players.LoadPlayersResult> loadRecentlyPlayedWithPlayers(GoogleApiClient var1, int var2, boolean var3);

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadOwnerCoverPhotoUrisImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadOwnerCoverPhotoUrisResult> {
        private LoadOwnerCoverPhotoUrisImpl();

        public Players.LoadOwnerCoverPhotoUrisResult ac(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadPlayersImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadPlayersResult> {
        private LoadPlayersImpl();

        /* synthetic */ LoadPlayersImpl(com.google.android.gms.games.internal.api.PlayersImpl$1 var1);

        public Players.LoadPlayersResult ad(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadProfileSettingsResultImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadProfileSettingsResult> {
        private LoadProfileSettingsResultImpl();

        protected Players.LoadProfileSettingsResult ae(Status var1);

        @Override
        protected /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadXpForGameCategoriesResultImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadXpForGameCategoriesResult> {
        private LoadXpForGameCategoriesResultImpl();

        public Players.LoadXpForGameCategoriesResult af(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadXpStreamResultImpl
    extends Games.BaseGamesApiMethodImpl<Players.LoadXpStreamResult> {
        private LoadXpStreamResultImpl();

        public Players.LoadXpStreamResult ag(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class UpdateProfileSettingsResultImpl
    extends Games.BaseGamesApiMethodImpl<Status> {
        private UpdateProfileSettingsResultImpl();

        @Override
        protected /* synthetic */ Result c(Status var1);

        protected Status d(Status var1);
    }

}

