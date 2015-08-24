/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.multiplayer.ParticipantResult;

public class ParticipantResultCreator
implements Parcelable.Creator<ParticipantResult> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(ParticipantResult participantResult, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, participantResult.getParticipantId(), false);
        b.c(parcel, 1000, participantResult.getVersionCode());
        b.c(parcel, 2, participantResult.getResult());
        b.c(parcel, 3, participantResult.getPlacing());
        b.H(parcel, n);
    }

    @Override
    public ParticipantResult createFromParcel(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        String string = null;
        int n3 = 0;
        int n4 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block6;
                }
                case 1: {
                    string = a.o(parcel, n5);
                    continue block6;
                }
                case 1000: {
                    n4 = a.g(parcel, n5);
                    continue block6;
                }
                case 2: {
                    n3 = a.g(parcel, n5);
                    continue block6;
                }
                case 3: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ParticipantResult(n4, string, n3, n);
    }

    public ParticipantResult[] newArray(int n) {
        return new ParticipantResult[n];
    }
}

