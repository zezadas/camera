/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntityCreator;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;
import java.util.Collection;

public final class InvitationEntity
extends GamesDowngradeableSafeParcel
implements Invitation {
    public static final Parcelable.Creator<InvitationEntity> CREATOR = new InvitationEntityCreatorCompat();
    private final int BR;
    private final String WO;
    private final GameEntity aay;
    private final long abZ;
    private final int aca;
    private final ParticipantEntity acb;
    private final ArrayList<ParticipantEntity> acc;
    private final int acd;
    private final int ace;

    InvitationEntity(int n, GameEntity gameEntity, String string, long l, int n2, ParticipantEntity participantEntity, ArrayList<ParticipantEntity> arrayList, int n3, int n4) {
        this.BR = n;
        this.aay = gameEntity;
        this.WO = string;
        this.abZ = l;
        this.aca = n2;
        this.acb = participantEntity;
        this.acc = arrayList;
        this.acd = n3;
        this.ace = n4;
    }

    InvitationEntity(Invitation parcelable) {
        this.BR = 2;
        this.aay = new GameEntity(parcelable.getGame());
        this.WO = parcelable.getInvitationId();
        this.abZ = parcelable.getCreationTimestamp();
        this.aca = parcelable.getInvitationType();
        this.acd = parcelable.getVariant();
        this.ace = parcelable.getAvailableAutoMatchSlots();
        String string = parcelable.getInviter().getParticipantId();
        Participant participant = null;
        ArrayList<Participant> arrayList = parcelable.getParticipants();
        int n = arrayList.size();
        this.acc = new ArrayList(n);
        parcelable = participant;
        for (int i = 0; i < n; ++i) {
            participant = arrayList.get(i);
            if (participant.getParticipantId().equals(string)) {
                parcelable = participant;
            }
            this.acc.add((ParticipantEntity)participant.freeze());
        }
        o.b(parcelable, (Object)"Must have a valid inviter!");
        this.acb = (ParticipantEntity)parcelable.freeze();
    }

    static int a(Invitation invitation) {
        return n.hashCode(invitation.getGame(), invitation.getInvitationId(), invitation.getCreationTimestamp(), invitation.getInvitationType(), invitation.getInviter(), invitation.getParticipants(), invitation.getVariant(), invitation.getAvailableAutoMatchSlots());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(Invitation invitation, Object object) {
        boolean bl = true;
        if (!(object instanceof Invitation)) {
            return false;
        }
        boolean bl2 = bl;
        if (invitation == object) return bl2;
        if (!n.equal((object = (Invitation)object).getGame(), invitation.getGame())) return false;
        if (!n.equal(object.getInvitationId(), invitation.getInvitationId())) return false;
        if (!n.equal(object.getCreationTimestamp(), invitation.getCreationTimestamp())) return false;
        if (!n.equal(object.getInvitationType(), invitation.getInvitationType())) return false;
        if (!n.equal(object.getInviter(), invitation.getInviter())) return false;
        if (!n.equal(object.getParticipants(), invitation.getParticipants())) return false;
        if (!n.equal(object.getVariant(), invitation.getVariant())) return false;
        bl2 = bl;
        if (n.equal(object.getAvailableAutoMatchSlots(), invitation.getAvailableAutoMatchSlots())) return bl2;
        return false;
    }

    static String b(Invitation invitation) {
        return n.h(invitation).a("Game", invitation.getGame()).a("InvitationId", invitation.getInvitationId()).a("CreationTimestamp", invitation.getCreationTimestamp()).a("InvitationType", invitation.getInvitationType()).a("Inviter", invitation.getInviter()).a("Participants", invitation.getParticipants()).a("Variant", invitation.getVariant()).a("AvailableAutoMatchSlots", invitation.getAvailableAutoMatchSlots()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return InvitationEntity.a(this, object);
    }

    @Override
    public Invitation freeze() {
        return this;
    }

    @Override
    public int getAvailableAutoMatchSlots() {
        return this.ace;
    }

    @Override
    public long getCreationTimestamp() {
        return this.abZ;
    }

    @Override
    public Game getGame() {
        return this.aay;
    }

    @Override
    public String getInvitationId() {
        return this.WO;
    }

    @Override
    public int getInvitationType() {
        return this.aca;
    }

    @Override
    public Participant getInviter() {
        return this.acb;
    }

    @Override
    public ArrayList<Participant> getParticipants() {
        return new ArrayList<Participant>(this.acc);
    }

    @Override
    public int getVariant() {
        return this.acd;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return InvitationEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return InvitationEntity.b(this);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (!this.gQ()) {
            InvitationEntityCreator.a(this, parcel, n);
            return;
        }
        this.aay.writeToParcel(parcel, n);
        parcel.writeString(this.WO);
        parcel.writeLong(this.abZ);
        parcel.writeInt(this.aca);
        this.acb.writeToParcel(parcel, n);
        int n2 = this.acc.size();
        parcel.writeInt(n2);
        for (int i = 0; i < n2; ++i) {
            this.acc.get(i).writeToParcel(parcel, n);
        }
    }

    static final class InvitationEntityCreatorCompat
    extends InvitationEntityCreator {
        InvitationEntityCreatorCompat() {
        }

        @Override
        public InvitationEntity cl(Parcel parcel) {
            if (InvitationEntity.c(InvitationEntity.gP()) || InvitationEntity.aV(InvitationEntity.class.getCanonicalName())) {
                return super.cl(parcel);
            }
            GameEntity gameEntity = GameEntity.CREATOR.createFromParcel(parcel);
            String string = parcel.readString();
            long l = parcel.readLong();
            int n = parcel.readInt();
            ParticipantEntity participantEntity = ParticipantEntity.CREATOR.createFromParcel(parcel);
            int n2 = parcel.readInt();
            ArrayList<ParticipantEntity> arrayList = new ArrayList<ParticipantEntity>(n2);
            for (int i = 0; i < n2; ++i) {
                arrayList.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }
            return new InvitationEntity(2, gameEntity, string, l, n, participantEntity, arrayList, -1, 0);
        }

        @Override
        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return this.cl(parcel);
        }
    }

}

