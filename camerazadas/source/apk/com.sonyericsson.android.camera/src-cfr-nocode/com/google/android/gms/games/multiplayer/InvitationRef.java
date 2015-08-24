/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantRef;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public final class InvitationRef
extends d
implements Invitation {
    private final Game abx;
    private final ArrayList<Participant> acc;
    private final ParticipantRef acf;

    InvitationRef(DataHolder var1, int var2, int var3);

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public Invitation freeze();

    @Override
    public int getAvailableAutoMatchSlots();

    @Override
    public long getCreationTimestamp();

    @Override
    public Game getGame();

    @Override
    public String getInvitationId();

    @Override
    public int getInvitationType();

    @Override
    public Participant getInviter();

    @Override
    public ArrayList<Participant> getParticipants();

    @Override
    public int getVariant();

    @Override
    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

