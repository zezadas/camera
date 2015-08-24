/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.PlayerColumnNames;

/*
 * Exception performing whole class analysis.
 */
public final class MostRecentGameInfoRef
extends d
implements MostRecentGameInfo {
    private final PlayerColumnNames VY;

    public MostRecentGameInfoRef(DataHolder var1, int var2, PlayerColumnNames var3);

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public int hashCode();

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

