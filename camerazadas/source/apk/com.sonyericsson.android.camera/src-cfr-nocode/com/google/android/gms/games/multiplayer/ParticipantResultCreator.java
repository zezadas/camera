/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.multiplayer.ParticipantResult;

/*
 * Exception performing whole class analysis ignored.
 */
public class ParticipantResultCreator
implements Parcelable.Creator<ParticipantResult> {
    public static final int CONTENT_DESCRIPTION = 0;

    public ParticipantResultCreator();

    static void a(ParticipantResult var0, Parcel var1, int var2);

    @Override
    public ParticipantResult createFromParcel(Parcel var1);

    public ParticipantResult[] newArray(int var1);
}

