/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.constants.TurnBasedMatchTurnStatus;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;

public final class LoadMatchesResponse {
    private final TurnBasedMatchBuffer acA;
    private final TurnBasedMatchBuffer acB;
    private final TurnBasedMatchBuffer acC;
    private final InvitationBuffer acz;

    /*
     * Enabled aggressive block sorting
     */
    public LoadMatchesResponse(Bundle parcelable) {
        DataHolder dataHolder = LoadMatchesResponse.a(parcelable, 0);
        this.acz = dataHolder != null ? new InvitationBuffer(dataHolder) : null;
        dataHolder = LoadMatchesResponse.a(parcelable, 1);
        this.acA = dataHolder != null ? new TurnBasedMatchBuffer(dataHolder) : null;
        dataHolder = LoadMatchesResponse.a(parcelable, 2);
        this.acB = dataHolder != null ? new TurnBasedMatchBuffer(dataHolder) : null;
        DataHolder dataHolder2 = LoadMatchesResponse.a(parcelable, 3);
        if (dataHolder2 != null) {
            this.acC = new TurnBasedMatchBuffer(dataHolder2);
            return;
        }
        this.acC = null;
    }

    private static DataHolder a(Bundle bundle, int n) {
        String string = TurnBasedMatchTurnStatus.dH(n);
        if (!bundle.containsKey(string)) {
            return null;
        }
        return (DataHolder)bundle.getParcelable(string);
    }

    public void close() {
        if (this.acz != null) {
            this.acz.close();
        }
        if (this.acA != null) {
            this.acA.close();
        }
        if (this.acB != null) {
            this.acB.close();
        }
        if (this.acC != null) {
            this.acC.close();
        }
    }

    public TurnBasedMatchBuffer getCompletedMatches() {
        return this.acC;
    }

    public InvitationBuffer getInvitations() {
        return this.acz;
    }

    public TurnBasedMatchBuffer getMyTurnMatches() {
        return this.acA;
    }

    public TurnBasedMatchBuffer getTheirTurnMatches() {
        return this.acB;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean hasData() {
        if (this.acz != null && this.acz.getCount() > 0 || this.acA != null && this.acA.getCount() > 0 || this.acB != null && this.acB.getCount() > 0 || this.acC != null && this.acC.getCount() > 0) {
            return true;
        }
        return false;
    }
}

