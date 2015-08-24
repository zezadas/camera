/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntityCreator;
import com.google.android.gms.games.multiplayer.ParticipantResult;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ParticipantEntity
extends GamesDowngradeableSafeParcel
implements Participant {
    public static final Parcelable.Creator<ParticipantEntity> CREATOR;
    private final int BR;
    private final int EZ;
    private final int Fa;
    private final String NH;
    private final Uri Vh;
    private final Uri Vi;
    private final String Vs;
    private final String Vt;
    private final PlayerEntity Wh;
    private final String Wq;
    private final String Xr;
    private final boolean acg;
    private final ParticipantResult ach;

    static;

    ParticipantEntity(int var1, String var2, String var3, Uri var4, Uri var5, int var6, String var7, boolean var8, PlayerEntity var9, int var10, ParticipantResult var11, String var12, String var13);

    public ParticipantEntity(Participant var1);

    static int a(Participant var0);

    static boolean a(Participant var0, Object var1);

    static String b(Participant var0);

    static /* synthetic */ boolean b(Integer var0);

    static /* synthetic */ boolean bw(String var0);

    static /* synthetic */ Integer jT();

    @Override
    public int describeContents();

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

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isConnectedToRoom();

    @Override
    public boolean isDataValid();

    @Override
    public String jX();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static final class ParticipantEntityCreatorCompat
    extends ParticipantEntityCreator {
        ParticipantEntityCreatorCompat();

        @Override
        public ParticipantEntity cm(Parcel var1);

        @Override
        public /* synthetic */ Object createFromParcel(Parcel var1);
    }

}

