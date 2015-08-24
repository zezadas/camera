/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;

/*
 * Exception performing whole class analysis.
 */
public final class LoadMatchesResponse {
    private final TurnBasedMatchBuffer acA;
    private final TurnBasedMatchBuffer acB;
    private final TurnBasedMatchBuffer acC;
    private final InvitationBuffer acz;

    public LoadMatchesResponse(Bundle var1);

    private static DataHolder a(Bundle var0, int var1);

    public void close();

    public TurnBasedMatchBuffer getCompletedMatches();

    public InvitationBuffer getInvitations();

    public TurnBasedMatchBuffer getMyTurnMatches();

    public TurnBasedMatchBuffer getTheirTurnMatches();

    public boolean hasData();
}

