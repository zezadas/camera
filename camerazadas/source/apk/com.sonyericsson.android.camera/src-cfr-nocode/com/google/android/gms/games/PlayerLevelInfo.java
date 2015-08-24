/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.PlayerLevel;
import com.google.android.gms.games.PlayerLevelInfoCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class PlayerLevelInfo
implements SafeParcelable {
    public static final PlayerLevelInfoCreator CREATOR;
    private final int BR;
    private final long VU;
    private final long VV;
    private final PlayerLevel VW;
    private final PlayerLevel VX;

    static;

    PlayerLevelInfo(int var1, long var2, long var4, PlayerLevel var6, PlayerLevel var7);

    public PlayerLevelInfo(long var1, long var3, PlayerLevel var5, PlayerLevel var6);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public PlayerLevel getCurrentLevel();

    public long getCurrentXpTotal();

    public long getLastLevelUpTimestamp();

    public PlayerLevel getNextLevel();

    public int getVersionCode();

    public int hashCode();

    public boolean isMaxLevel();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

