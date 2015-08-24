/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.internal.game.GameBadge;

public final class GameBadgeRef
extends d
implements GameBadge {
    GameBadgeRef(DataHolder var1, int var2);

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public String getDescription();

    @Override
    public Uri getIconImageUri();

    @Override
    public String getTitle();

    @Override
    public int getType();

    @Override
    public int hashCode();

    public GameBadge ld();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

