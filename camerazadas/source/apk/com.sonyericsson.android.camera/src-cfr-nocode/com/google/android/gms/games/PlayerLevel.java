/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.PlayerLevelCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class PlayerLevel
implements SafeParcelable {
    public static final PlayerLevelCreator CREATOR;
    private final int BR;
    private final int VR;
    private final long VS;
    private final long VT;

    static;

    PlayerLevel(int var1, int var2, long var3, long var5);

    public PlayerLevel(int var1, long var2, long var4);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int getLevelNumber();

    public long getMaxXp();

    public long getMinXp();

    public int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

