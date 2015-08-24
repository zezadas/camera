/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.internal.multiplayer.InvitationClusterCreator;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ZInvitationCluster
implements SafeParcelable,
Invitation {
    public static final InvitationClusterCreator CREATOR;
    private final int BR;
    private final ArrayList<InvitationEntity> aaL;

    static;

    ZInvitationCluster(int var1, ArrayList<InvitationEntity> var2);

    private void li();

    @Override
    public int describeContents();

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

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    public ArrayList<Invitation> lj();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

