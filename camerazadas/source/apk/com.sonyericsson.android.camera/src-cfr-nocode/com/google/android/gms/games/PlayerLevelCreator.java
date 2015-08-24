/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.PlayerLevel;

/*
 * Exception performing whole class analysis ignored.
 */
public class PlayerLevelCreator
implements Parcelable.Creator<PlayerLevel> {
    public static final int CONTENT_DESCRIPTION = 0;

    public PlayerLevelCreator();

    static void a(PlayerLevel var0, Parcel var1, int var2);

    @Override
    public PlayerLevel createFromParcel(Parcel var1);

    public PlayerLevel[] newArray(int var1);
}

