/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.multiplayer.ParticipantResultCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ParticipantResult
implements SafeParcelable {
    public static final ParticipantResultCreator CREATOR;
    public static final int MATCH_RESULT_DISAGREED = 5;
    public static final int MATCH_RESULT_DISCONNECT = 4;
    public static final int MATCH_RESULT_LOSS = 1;
    public static final int MATCH_RESULT_NONE = 3;
    public static final int MATCH_RESULT_TIE = 2;
    public static final int MATCH_RESULT_UNINITIALIZED = -1;
    public static final int MATCH_RESULT_WIN = 0;
    public static final int PLACING_UNINITIALIZED = -1;
    private final int BR;
    private final String Xr;
    private final int acj;
    private final int ack;

    static;

    public ParticipantResult(int var1, String var2, int var3, int var4);

    public ParticipantResult(String var1, int var2, int var3);

    @Override
    public int describeContents();

    public String getParticipantId();

    public int getPlacing();

    public int getResult();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

