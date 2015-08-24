/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public final class TurnBasedMatchRef
extends d
implements TurnBasedMatch {
    private final int aaK;
    private final Game abx;

    TurnBasedMatchRef(DataHolder var1, int var2, int var3);

    @Override
    public boolean canRematch();

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public TurnBasedMatch freeze();

    @Override
    public Bundle getAutoMatchCriteria();

    @Override
    public int getAvailableAutoMatchSlots();

    @Override
    public long getCreationTimestamp();

    @Override
    public String getCreatorId();

    @Override
    public byte[] getData();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public Participant getDescriptionParticipant();

    @Override
    public String getDescriptionParticipantId();

    @Override
    public Game getGame();

    @Override
    public long getLastUpdatedTimestamp();

    @Override
    public String getLastUpdaterId();

    @Override
    public String getMatchId();

    @Override
    public int getMatchNumber();

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
    public String getPendingParticipantId();

    @Override
    public byte[] getPreviousMatchData();

    @Override
    public String getRematchId();

    @Override
    public int getStatus();

    @Override
    public int getTurnStatus();

    @Override
    public int getVariant();

    @Override
    public int getVersion();

    @Override
    public int hashCode();

    @Override
    public boolean isLocallyModified();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

