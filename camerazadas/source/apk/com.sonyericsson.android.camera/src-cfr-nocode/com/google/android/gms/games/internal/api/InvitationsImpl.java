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
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;

/*
 * Exception performing whole class analysis ignored.
 */
public final class InvitationsImpl
implements Invitations {
    public InvitationsImpl();

    @Override
    public Intent getInvitationInboxIntent(GoogleApiClient var1);

    @Override
    public PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient var1);

    @Override
    public PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient var1, int var2);

    @Override
    public void registerInvitationListener(GoogleApiClient var1, OnInvitationReceivedListener var2);

    @Override
    public void unregisterInvitationListener(GoogleApiClient var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadInvitationsImpl
    extends Games.BaseGamesApiMethodImpl<Invitations.LoadInvitationsResult> {
        private LoadInvitationsImpl();

        /* synthetic */ LoadInvitationsImpl(com.google.android.gms.games.internal.api.InvitationsImpl$1 var1);

        public Invitations.LoadInvitationsResult T(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

