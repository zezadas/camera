/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.request.GameRequestEntity;

/*
 * Exception performing whole class analysis ignored.
 */
public class GameRequestEntityCreator
implements Parcelable.Creator<GameRequestEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    public GameRequestEntityCreator();

    static void a(GameRequestEntity var0, Parcel var1, int var2);

    @Override
    public GameRequestEntity createFromParcel(Parcel var1);

    public GameRequestEntity[] newArray(int var1);
}

