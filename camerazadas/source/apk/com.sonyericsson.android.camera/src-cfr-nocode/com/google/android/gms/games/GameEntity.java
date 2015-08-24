/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntityCreator;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class GameEntity
extends GamesDowngradeableSafeParcel
implements Game {
    public static final Parcelable.Creator<GameEntity> CREATOR;
    private final int BR;
    private final String Ez;
    private final String NH;
    private final String Tr;
    private final String Ve;
    private final String Vf;
    private final String Vg;
    private final Uri Vh;
    private final Uri Vi;
    private final Uri Vj;
    private final boolean Vk;
    private final boolean Vl;
    private final String Vm;
    private final int Vn;
    private final int Vo;
    private final int Vp;
    private final boolean Vq;
    private final boolean Vr;
    private final String Vs;
    private final String Vt;
    private final String Vu;
    private final boolean Vv;
    private final boolean Vw;
    private final boolean Vx;
    private final String Vy;

    static;

    GameEntity(int var1, String var2, String var3, String var4, String var5, String var6, String var7, Uri var8, Uri var9, Uri var10, boolean var11, boolean var12, String var13, int var14, int var15, int var16, boolean var17, boolean var18, String var19, String var20, String var21, boolean var22, boolean var23, boolean var24, String var25);

    public GameEntity(Game var1);

    static int a(Game var0);

    static boolean a(Game var0, Object var1);

    static String b(Game var0);

    static /* synthetic */ boolean b(Integer var0);

    static /* synthetic */ boolean bw(String var0);

    static /* synthetic */ Integer jT();

    @Override
    public boolean areSnapshotsEnabled();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public Game freeze();

    @Override
    public int getAchievementTotalCount();

    @Override
    public String getApplicationId();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public String getDeveloperName();

    @Override
    public void getDeveloperName(CharArrayBuffer var1);

    @Override
    public String getDisplayName();

    @Override
    public void getDisplayName(CharArrayBuffer var1);

    @Override
    public Uri getFeaturedImageUri();

    @Override
    public String getFeaturedImageUrl();

    @Override
    public Uri getHiResImageUri();

    @Override
    public String getHiResImageUrl();

    @Override
    public Uri getIconImageUri();

    @Override
    public String getIconImageUrl();

    @Override
    public int getLeaderboardCount();

    @Override
    public String getPrimaryCategory();

    @Override
    public String getSecondaryCategory();

    @Override
    public String getThemeColor();

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    @Override
    public boolean isMuted();

    @Override
    public boolean isRealTimeMultiplayerEnabled();

    @Override
    public boolean isTurnBasedMultiplayerEnabled();

    @Override
    public boolean jO();

    @Override
    public boolean jP();

    @Override
    public boolean jQ();

    @Override
    public String jR();

    @Override
    public int jS();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static final class GameEntityCreatorCompat
    extends GameEntityCreator {
        GameEntityCreatorCompat();

        @Override
        public GameEntity cd(Parcel var1);

        @Override
        public /* synthetic */ Object createFromParcel(Parcel var1);
    }

}

