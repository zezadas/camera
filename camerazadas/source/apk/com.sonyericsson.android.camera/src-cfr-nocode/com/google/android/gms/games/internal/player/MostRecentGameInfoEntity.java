/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntityCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class MostRecentGameInfoEntity
implements SafeParcelable,
MostRecentGameInfo {
    public static final MostRecentGameInfoEntityCreator CREATOR;
    private final int BR;
    private final String aaM;
    private final String aaN;
    private final long aaO;
    private final Uri aaP;
    private final Uri aaQ;
    private final Uri aaR;

    static;

    MostRecentGameInfoEntity(int var1, String var2, String var3, long var4, Uri var6, Uri var7, Uri var8);

    public MostRecentGameInfoEntity(MostRecentGameInfo var1);

    static int a(MostRecentGameInfo var0);

    static boolean a(MostRecentGameInfo var0, Object var1);

    static String b(MostRecentGameInfo var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    @Override
    public String lp();

    @Override
    public String lq();

    @Override
    public long lr();

    @Override
    public Uri ls();

    @Override
    public Uri lt();

    @Override
    public Uri lu();

    public MostRecentGameInfo lv();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

