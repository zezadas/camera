/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.internal.multiplayer.InvitationClusterCreator;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import java.util.ArrayList;
import java.util.Collection;

public final class ZInvitationCluster
implements SafeParcelable,
Invitation {
    public static final InvitationClusterCreator CREATOR = new InvitationClusterCreator();
    private final int BR;
    private final ArrayList<InvitationEntity> aaL;

    ZInvitationCluster(int n, ArrayList<InvitationEntity> arrayList) {
        this.BR = n;
        this.aaL = arrayList;
        this.li();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void li() {
        boolean bl = !this.aaL.isEmpty();
        a.I(bl);
        Invitation invitation = this.aaL.get(0);
        int n = this.aaL.size();
        for (int i = 1; i < n; ++i) {
            Invitation invitation2 = this.aaL.get(i);
            a.a(invitation.getInviter().equals(invitation2.getInviter()), "All the invitations must be from the same inviter");
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (!(object instanceof ZInvitationCluster)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        object = (ZInvitationCluster)object;
        if (object.aaL.size() != this.aaL.size()) {
            return false;
        }
        int n = this.aaL.size();
        for (int i = 0; i < n; ++i) {
            if (((Invitation)this.aaL.get(i)).equals(object.aaL.get(i))) continue;
            return false;
        }
        return true;
    }

    @Override
    public Invitation freeze() {
        return this;
    }

    @Override
    public int getAvailableAutoMatchSlots() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public long getCreationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public Game getGame() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public String getInvitationId() {
        return this.aaL.get(0).getInvitationId();
    }

    @Override
    public int getInvitationType() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public Participant getInviter() {
        return this.aaL.get(0).getInviter();
    }

    @Override
    public ArrayList<Participant> getParticipants() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public int getVariant() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.aaL.toArray());
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public ArrayList<Invitation> lj() {
        return new ArrayList<Invitation>(this.aaL);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        InvitationClusterCreator.a(this, parcel, n);
    }
}

