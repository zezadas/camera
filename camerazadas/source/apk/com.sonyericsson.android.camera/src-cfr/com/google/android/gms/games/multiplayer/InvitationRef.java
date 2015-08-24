/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantRef;
import java.util.ArrayList;

public final class InvitationRef
extends d
implements Invitation {
    private final Game abx;
    private final ArrayList<Participant> acc;
    private final ParticipantRef acf;

    InvitationRef(DataHolder parcelable, int n, int n2) {
        super((DataHolder)parcelable, n);
        this.abx = new GameRef((DataHolder)parcelable, n);
        this.acc = new ArrayList(n2);
        String string = this.getString("external_inviter_id");
        parcelable = null;
        for (n = 0; n < n2; ++n) {
            ParticipantRef participantRef = new ParticipantRef(this.II, this.JX + n);
            if (participantRef.getParticipantId().equals(string)) {
                parcelable = participantRef;
            }
            this.acc.add(participantRef);
        }
        this.acf = (ParticipantRef)o.b(parcelable, (Object)"Must have a valid inviter!");
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return InvitationEntity.a(this, object);
    }

    @Override
    public Invitation freeze() {
        return new InvitationEntity(this);
    }

    @Override
    public int getAvailableAutoMatchSlots() {
        if (!this.getBoolean("has_automatch_criteria")) {
            return 0;
        }
        return this.getInteger("automatch_max_players");
    }

    @Override
    public long getCreationTimestamp() {
        return Math.max(this.getLong("creation_timestamp"), this.getLong("last_modified_timestamp"));
    }

    @Override
    public Game getGame() {
        return this.abx;
    }

    @Override
    public String getInvitationId() {
        return this.getString("external_invitation_id");
    }

    @Override
    public int getInvitationType() {
        return this.getInteger("type");
    }

    @Override
    public Participant getInviter() {
        return this.acf;
    }

    @Override
    public ArrayList<Participant> getParticipants() {
        return this.acc;
    }

    @Override
    public int getVariant() {
        return this.getInteger("variant");
    }

    @Override
    public int hashCode() {
        return InvitationEntity.a(this);
    }

    public String toString() {
        return InvitationEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((InvitationEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

