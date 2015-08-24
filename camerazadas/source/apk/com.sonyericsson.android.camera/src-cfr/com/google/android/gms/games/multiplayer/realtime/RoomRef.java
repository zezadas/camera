/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantRef;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import java.util.ArrayList;

public final class RoomRef
extends d
implements Room {
    private final int aaK;

    RoomRef(DataHolder dataHolder, int n, int n2) {
        super(dataHolder, n);
        this.aaK = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return RoomEntity.a((Room)this, object);
    }

    @Override
    public Room freeze() {
        return new RoomEntity(this);
    }

    @Override
    public Bundle getAutoMatchCriteria() {
        if (!this.getBoolean("has_automatch_criteria")) {
            return null;
        }
        return RoomConfig.createAutoMatchCriteria(this.getInteger("automatch_min_players"), this.getInteger("automatch_max_players"), this.getLong("automatch_bit_mask"));
    }

    @Override
    public int getAutoMatchWaitEstimateSeconds() {
        return this.getInteger("automatch_wait_estimate_sec");
    }

    @Override
    public long getCreationTimestamp() {
        return this.getLong("creation_timestamp");
    }

    @Override
    public String getCreatorId() {
        return this.getString("creator_external");
    }

    @Override
    public String getDescription() {
        return this.getString("description");
    }

    @Override
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        this.a("description", charArrayBuffer);
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
        ArrayList<Participant> arrayList = new ArrayList<Participant>(this.aaK);
        for (int i = 0; i < this.aaK; ++i) {
            arrayList.add(new ParticipantRef(this.II, this.JX + i));
        }
        return arrayList;
    }

    @Override
    public String getRoomId() {
        return this.getString("external_match_id");
    }

    @Override
    public int getStatus() {
        return this.getInteger("status");
    }

    @Override
    public int getVariant() {
        return this.getInteger("variant");
    }

    @Override
    public int hashCode() {
        return RoomEntity.a(this);
    }

    public String toString() {
        return RoomEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((RoomEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

