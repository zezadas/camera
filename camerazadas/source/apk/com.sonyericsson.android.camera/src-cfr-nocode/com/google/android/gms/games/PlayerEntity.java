/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntityCreator;
import com.google.android.gms.games.PlayerLevelInfo;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class PlayerEntity
extends GamesDowngradeableSafeParcel
implements Player {
    public static final Parcelable.Creator<PlayerEntity> CREATOR;
    private final int BR;
    private final String NH;
    private final String Nw;
    private final String VK;
    private final long VL;
    private final int VM;
    private final long VN;
    private final MostRecentGameInfoEntity VO;
    private final PlayerLevelInfo VP;
    private final boolean VQ;
    private final Uri Vh;
    private final Uri Vi;
    private final String Vs;
    private final String Vt;

    static;

    PlayerEntity(int var1, String var2, String var3, Uri var4, Uri var5, long var6, int var8, long var9, String var11, String var12, String var13, MostRecentGameInfoEntity var14, PlayerLevelInfo var15, boolean var16);

    public PlayerEntity(Player var1);

    static boolean a(Player var0, Object var1);

    static int b(Player var0);

    static /* synthetic */ boolean b(Integer var0);

    static /* synthetic */ boolean bw(String var0);

    static String c(Player var0);

    static /* synthetic */ Integer jT();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public Player freeze();

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
    public long getLastPlayedWithTimestamp();

    @Override
    public PlayerLevelInfo getLevelInfo();

    @Override
    public String getPlayerId();

    @Override
    public long getRetrievedTimestamp();

    @Override
    public String getTitle();

    @Override
    public void getTitle(CharArrayBuffer var1);

    public int getVersionCode();

    @Override
    public boolean hasHiResImage();

    @Override
    public boolean hasIconImage();

    public int hashCode();

    @Override
    public boolean isDataValid();

    @Override
    public boolean isProfileVisible();

    @Override
    public int jU();

    @Override
    public MostRecentGameInfo jV();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static final class PlayerEntityCreatorCompat
    extends PlayerEntityCreator {
        PlayerEntityCreatorCompat();

        @Override
        public PlayerEntity ce(Parcel var1);

        @Override
        public /* synthetic */ Object createFromParcel(Parcel var1);
    }

}

