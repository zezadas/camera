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
import com.google.android.gms.games.multiplayer.realtime.Room;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public final class RoomRef
extends d
implements Room {
    private final int aaK;

    RoomRef(DataHolder var1, int var2, int var3);

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public Room freeze();

    @Override
    public Bundle getAutoMatchCriteria();

    @Override
    public int getAutoMatchWaitEstimateSeconds();

    @Override
    public long getCreationTimestamp();

    @Override
    public String getCreatorId();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public Participant getParticipant(String var1);

    @Override
    public String getParticipantId(String var1);

    @Override
    public ArrayList<String> getParticipantIds();

    @Override
    public int getParticipantStatus(String var1);

    @Override
    public ArrayList<Participant> getParticipants();

    @Override
    public String getRoomId();

    @Override
    public int getStatus();

    @Override
    public int getVariant();

    @Override
    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

