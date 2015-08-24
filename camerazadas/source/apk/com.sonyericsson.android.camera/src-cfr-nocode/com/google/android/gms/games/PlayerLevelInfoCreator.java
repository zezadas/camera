/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.PlayerLevelInfo;

/*
 * Exception performing whole class analysis ignored.
 */
public class PlayerLevelInfoCreator
implements Parcelable.Creator<PlayerLevelInfo> {
    public static final int CONTENT_DESCRIPTION = 0;

    public PlayerLevelInfoCreator();

    static void a(PlayerLevelInfo var0, Parcel var1, int var2);

    @Override
    public PlayerLevelInfo createFromParcel(Parcel var1);

    public PlayerLevelInfo[] newArray(int var1);
}

