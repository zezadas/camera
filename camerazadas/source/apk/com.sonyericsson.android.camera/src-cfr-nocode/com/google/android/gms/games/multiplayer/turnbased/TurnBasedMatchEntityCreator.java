/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchEntity;

/*
 * Exception performing whole class analysis ignored.
 */
public class TurnBasedMatchEntityCreator
implements Parcelable.Creator<TurnBasedMatchEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    public TurnBasedMatchEntityCreator();

    static void a(TurnBasedMatchEntity var0, Parcel var1, int var2);

    @Override
    public TurnBasedMatchEntity createFromParcel(Parcel var1);

    public TurnBasedMatchEntity[] newArray(int var1);
}

