/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.internal.constants.MatchResult;
import com.google.android.gms.games.multiplayer.ParticipantResultCreator;

public final class ParticipantResult
implements SafeParcelable {
    public static final ParticipantResultCreator CREATOR = new ParticipantResultCreator();
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

    public ParticipantResult(int n, String string, int n2, int n3) {
        this.BR = n;
        this.Xr = o.i(string);
        o.I(MatchResult.isValid(n2));
        this.acj = n2;
        this.ack = n3;
    }

    public ParticipantResult(String string, int n, int n2) {
        this(1, string, n, n2);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getParticipantId() {
        return this.Xr;
    }

    public int getPlacing() {
        return this.ack;
    }

    public int getResult() {
        return this.acj;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ParticipantResultCreator.a(this, parcel, n);
    }
}

