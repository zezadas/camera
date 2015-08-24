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
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import java.util.List;

/*
 * Exception performing whole class analysis ignored.
 */
public final class TurnBasedMultiplayerImpl
implements TurnBasedMultiplayer {
    public TurnBasedMultiplayerImpl();

    @Override
    public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> acceptInvitation(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<TurnBasedMultiplayer.CancelMatchResult> cancelMatch(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> createMatch(GoogleApiClient var1, TurnBasedMatchConfig var2);

    @Override
    public void declineInvitation(GoogleApiClient var1, String var2);

    @Override
    public void dismissInvitation(GoogleApiClient var1, String var2);

    @Override
    public void dismissMatch(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient var1, String var2, byte[] var3, List<ParticipantResult> var4);

    @Override
    public /* varargs */ PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient var1, String var2, byte[] var3, ParticipantResult ... var4);

    @Override
    public Intent getInboxIntent(GoogleApiClient var1);

    @Override
    public int getMaxMatchDataSize(GoogleApiClient var1);

    @Override
    public Intent getSelectOpponentsIntent(GoogleApiClient var1, int var2, int var3);

    @Override
    public Intent getSelectOpponentsIntent(GoogleApiClient var1, int var2, int var3, boolean var4);

    @Override
    public PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatch(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatchDuringTurn(GoogleApiClient var1, String var2, String var3);

    @Override
    public PendingResult<TurnBasedMultiplayer.LoadMatchResult> loadMatch(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient var1, int var2, int[] var3);

    @Override
    public PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient var1, int[] var2);

    @Override
    public void registerMatchUpdateListener(GoogleApiClient var1, OnTurnBasedMatchUpdateReceivedListener var2);

    @Override
    public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> rematch(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient var1, String var2, byte[] var3, String var4);

    @Override
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient var1, String var2, byte[] var3, String var4, List<ParticipantResult> var5);

    @Override
    public /* varargs */ PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient var1, String var2, byte[] var3, String var4, ParticipantResult ... var5);

    @Override
    public void unregisterMatchUpdateListener(GoogleApiClient var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class CancelMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.CancelMatchResult> {
        private final String BL;

        public CancelMatchImpl(String var1);

        static /* synthetic */ String a(CancelMatchImpl var0);

        public TurnBasedMultiplayer.CancelMatchResult as(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class InitiateMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.InitiateMatchResult> {
        private InitiateMatchImpl();

        /* synthetic */ InitiateMatchImpl(com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl$1 var1);

        public TurnBasedMultiplayer.InitiateMatchResult at(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LeaveMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.LeaveMatchResult> {
        private LeaveMatchImpl();

        /* synthetic */ LeaveMatchImpl(com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl$1 var1);

        public TurnBasedMultiplayer.LeaveMatchResult au(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.LoadMatchResult> {
        private LoadMatchImpl();

        /* synthetic */ LoadMatchImpl(com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl$1 var1);

        public TurnBasedMultiplayer.LoadMatchResult av(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadMatchesImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.LoadMatchesResult> {
        private LoadMatchesImpl();

        /* synthetic */ LoadMatchesImpl(com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl$1 var1);

        public TurnBasedMultiplayer.LoadMatchesResult aw(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class UpdateMatchImpl
    extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.UpdateMatchResult> {
        private UpdateMatchImpl();

        /* synthetic */ UpdateMatchImpl(com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl$1 var1);

        public TurnBasedMultiplayer.UpdateMatchResult ax(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

