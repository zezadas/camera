/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntityCreator;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class InvitationEntity
extends GamesDowngradeableSafeParcel
implements Invitation {
    public static final Parcelable.Creator<InvitationEntity> CREATOR;
    private final int BR;
    private final String WO;
    private final GameEntity aay;
    private final long abZ;
    private final int aca;
    private final ParticipantEntity acb;
    private final ArrayList<ParticipantEntity> acc;
    private final int acd;
    private final int ace;

    static;

    InvitationEntity(int var1, GameEntity var2, String var3, long var4, int var6, ParticipantEntity var7, ArrayList<ParticipantEntity> var8, int var9, int var10);

    InvitationEntity(Invitation var1);

    static int a(Invitation var0);

    static boolean a(Invitation var0, Object var1);

    static String b(Invitation var0);

    static /* synthetic */ boolean b(Integer var0);

    static /* synthetic */ boolean bw(String var0);

    static /* synthetic */ Integer jT();

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

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static final class InvitationEntityCreatorCompat
    extends InvitationEntityCreator {
        InvitationEntityCreatorCompat();

        @Override
        public InvitationEntity cl(Parcel var1);

        @Override
        public /* synthetic */ Object createFromParcel(Parcel var1);
    }

}

