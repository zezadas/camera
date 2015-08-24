/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationRef;

public final class InvitationBuffer
extends g<Invitation> {
    public InvitationBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    protected /* synthetic */ Object f(int n, int n2) {
        return this.j(n, n2);
    }

    @Override
    protected String gD() {
        return "external_invitation_id";
    }

    protected Invitation j(int n, int n2) {
        return new InvitationRef(this.II, n, n2);
    }
}

