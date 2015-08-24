/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomEntityCreator;
import com.google.android.gms.internal.jv;
import java.util.ArrayList;
import java.util.Collection;

public final class RoomEntity
extends GamesDowngradeableSafeParcel
implements Room {
    public static final Parcelable.Creator<RoomEntity> CREATOR = new RoomEntityCreatorCompat();
    private final int BR;
    private final String Tr;
    private final String WQ;
    private final long abZ;
    private final ArrayList<ParticipantEntity> acc;
    private final int acd;
    private final Bundle acs;
    private final String acw;
    private final int acx;
    private final int acy;

    RoomEntity(int n, String string, String string2, long l, int n2, String string3, int n3, Bundle bundle, ArrayList<ParticipantEntity> arrayList, int n4) {
        this.BR = n;
        this.WQ = string;
        this.acw = string2;
        this.abZ = l;
        this.acx = n2;
        this.Tr = string3;
        this.acd = n3;
        this.acs = bundle;
        this.acc = arrayList;
        this.acy = n4;
    }

    public RoomEntity(Room room) {
        this.BR = 2;
        this.WQ = room.getRoomId();
        this.acw = room.getCreatorId();
        this.abZ = room.getCreationTimestamp();
        this.acx = room.getStatus();
        this.Tr = room.getDescription();
        this.acd = room.getVariant();
        this.acs = room.getAutoMatchCriteria();
        ArrayList<Participant> arrayList = room.getParticipants();
        int n = arrayList.size();
        this.acc = new ArrayList(n);
        for (int i = 0; i < n; ++i) {
            this.acc.add((ParticipantEntity)arrayList.get(i).freeze());
        }
        this.acy = room.getAutoMatchWaitEstimateSeconds();
    }

    static int a(Room room) {
        return n.hashCode(room.getRoomId(), room.getCreatorId(), room.getCreationTimestamp(), room.getStatus(), room.getDescription(), room.getVariant(), room.getAutoMatchCriteria(), room.getParticipants(), room.getAutoMatchWaitEstimateSeconds());
    }

    static int a(Room room, String string) {
        ArrayList<Participant> arrayList = room.getParticipants();
        int n = arrayList.size();
        for (int i = 0; i < n; ++i) {
            Participant participant = arrayList.get(i);
            if (!participant.getParticipantId().equals(string)) continue;
            return participant.getStatus();
        }
        throw new IllegalStateException("Participant " + string + " is not in room " + room.getRoomId());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(Room room, Object object) {
        boolean bl = true;
        if (!(object instanceof Room)) {
            return false;
        }
        boolean bl2 = bl;
        if (room == object) return bl2;
        if (!n.equal((object = (Room)object).getRoomId(), room.getRoomId())) return false;
        if (!n.equal(object.getCreatorId(), room.getCreatorId())) return false;
        if (!n.equal(object.getCreationTimestamp(), room.getCreationTimestamp())) return false;
        if (!n.equal(object.getStatus(), room.getStatus())) return false;
        if (!n.equal(object.getDescription(), room.getDescription())) return false;
        if (!n.equal(object.getVariant(), room.getVariant())) return false;
        if (!n.equal(object.getAutoMatchCriteria(), room.getAutoMatchCriteria())) return false;
        if (!n.equal(object.getParticipants(), room.getParticipants())) return false;
        bl2 = bl;
        if (n.equal(object.getAutoMatchWaitEstimateSeconds(), room.getAutoMatchWaitEstimateSeconds())) return bl2;
        return false;
    }

    static String b(Room room) {
        return n.h(room).a("RoomId", room.getRoomId()).a("CreatorId", room.getCreatorId()).a("CreationTimestamp", room.getCreationTimestamp()).a("RoomStatus", room.getStatus()).a("Description", room.getDescription()).a("Variant", room.getVariant()).a("AutoMatchCriteria", room.getAutoMatchCriteria()).a("Participants", room.getParticipants()).a("AutoMatchWaitEstimateSeconds", room.getAutoMatchWaitEstimateSeconds()).toString();
    }

    static String b(Room object, String string) {
        object = object.getParticipants();
        int n = object.size();
        for (int i = 0; i < n; ++i) {
            Participant participant = (Participant)object.get(i);
            Player player = participant.getPlayer();
            if (player == null || !player.getPlayerId().equals(string)) continue;
            return participant.getParticipantId();
        }
        return null;
    }

    static Participant c(Room room, String string) {
        ArrayList<Participant> arrayList = room.getParticipants();
        int n = arrayList.size();
        for (int i = 0; i < n; ++i) {
            Participant participant = arrayList.get(i);
            if (!participant.getParticipantId().equals(string)) continue;
            return participant;
        }
        throw new IllegalStateException("Participant " + string + " is not in match " + room.getRoomId());
    }

    static ArrayList<String> c(Room object) {
        object = object.getParticipants();
        int n = object.size();
        ArrayList<String> arrayList = new ArrayList<String>(n);
        for (int i = 0; i < n; ++i) {
            arrayList.add(((Participant)object.get(i)).getParticipantId());
        }
        return arrayList;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return RoomEntity.a((Room)this, object);
    }

    @Override
    public Room freeze() {
        return this;
    }

    @Override
    public Bundle getAutoMatchCriteria() {
        return this.acs;
    }

    @Override
    public int getAutoMatchWaitEstimateSeconds() {
        return this.acy;
    }

    @Override
    public long getCreationTimestamp() {
        return this.abZ;
    }

    @Override
    public String getCreatorId() {
        return this.acw;
    }

    @Override
    public String getDescription() {
        return this.Tr;
    }

    @Override
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        jv.b(this.Tr, charArrayBuffer);
    }

    @Override
    public Participant getParticipant(String string) {
        return RoomEntity.c(this, string);
    }

    @Override
    public String getParticipantId(String string) {
        return RoomEntity.b(this, string);
    }

    @Override
    public ArrayList<String> getParticipantIds() {
        return RoomEntity.c(this);
    }

    @Override
    public int getParticipantStatus(String string) {
        return RoomEntity.a((Room)this, string);
    }

    @Override
    public ArrayList<Participant> getParticipants() {
        return new ArrayList<Participant>(this.acc);
    }

    @Override
    public String getRoomId() {
        return this.WQ;
    }

    @Override
    public int getStatus() {
        return this.acx;
    }

    @Override
    public int getVariant() {
        return this.acd;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return RoomEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return RoomEntity.b(this);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (!this.gQ()) {
            RoomEntityCreator.a(this, parcel, n);
            return;
        }
        parcel.writeString(this.WQ);
        parcel.writeString(this.acw);
        parcel.writeLong(this.abZ);
        parcel.writeInt(this.acx);
        parcel.writeString(this.Tr);
        parcel.writeInt(this.acd);
        parcel.writeBundle(this.acs);
        int n2 = this.acc.size();
        parcel.writeInt(n2);
        for (int i = 0; i < n2; ++i) {
            this.acc.get(i).writeToParcel(parcel, n);
        }
    }

    static final class RoomEntityCreatorCompat
    extends RoomEntityCreator {
        RoomEntityCreatorCompat() {
        }

        @Override
        public RoomEntity co(Parcel parcel) {
            if (RoomEntity.c(RoomEntity.gP()) || RoomEntity.aV(RoomEntity.class.getCanonicalName())) {
                return super.co(parcel);
            }
            String string = parcel.readString();
            String string2 = parcel.readString();
            long l = parcel.readLong();
            int n = parcel.readInt();
            String string3 = parcel.readString();
            int n2 = parcel.readInt();
            Bundle bundle = parcel.readBundle();
            int n3 = parcel.readInt();
            ArrayList<ParticipantEntity> arrayList = new ArrayList<ParticipantEntity>(n3);
            for (int i = 0; i < n3; ++i) {
                arrayList.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }
            return new RoomEntity(2, string, string2, l, n, string3, n2, bundle, arrayList, -1);
        }

        @Override
        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return this.co(parcel);
        }
    }

}

