/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantResult;

/*
 * Exception performing whole class analysis.
 */
public final class ParticipantRef
extends d
implements Participant {
    private final PlayerRef aci;

    public ParticipantRef(DataHolder var1, int var2);

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public Participant freeze();

    @Override
    public int getCapabilities();

    @Override
    public String getDisplayName();

    @Override
    public void getDisplayName(CharArrayBuffer var1);

    @Override
    public Uri getHiResImageUri();

    @Override
    public String getHiResImageUrl();

    @Override
    public Uri getIconImageUri();

    @Override
    public String getIconImageUrl();

    @Override
    public String getParticipantId();

    @Override
    public Player getPlayer();

    @Override
    public ParticipantResult getResult();

    @Override
    public int getStatus();

    @Override
    public int hashCode();

    @Override
    public boolean isConnectedToRoom();

    @Override
    public String jX();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

