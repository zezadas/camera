/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomEntityCreator;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class RoomEntity
extends GamesDowngradeableSafeParcel
implements Room {
    public static final Parcelable.Creator<RoomEntity> CREATOR;
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

    static;

    RoomEntity(int var1, String var2, String var3, long var4, int var6, String var7, int var8, Bundle var9, ArrayList<ParticipantEntity> var10, int var11);

    public RoomEntity(Room var1);

    static int a(Room var0);

    static int a(Room var0, String var1);

    static boolean a(Room var0, Object var1);

    static String b(Room var0);

    static String b(Room var0, String var1);

    static /* synthetic */ boolean b(Integer var0);

    static /* synthetic */ boolean bw(String var0);

    static Participant c(Room var0, String var1);

    static ArrayList<String> c(Room var0);

    static /* synthetic */ Integer jT();

    @Override
    public int describeContents();

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
    static final class RoomEntityCreatorCompat
    extends RoomEntityCreator {
        RoomEntityCreatorCompat();

        @Override
        public RoomEntity co(Parcel var1);

        @Override
        public /* synthetic */ Object createFromParcel(Parcel var1);
    }

}

