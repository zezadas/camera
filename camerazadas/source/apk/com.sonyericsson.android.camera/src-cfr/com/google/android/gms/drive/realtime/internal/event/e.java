/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.event.TextDeletedDetails;

public class e
implements Parcelable.Creator<TextDeletedDetails> {
    static void a(TextDeletedDetails textDeletedDetails, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, textDeletedDetails.BR);
        b.c(parcel, 2, textDeletedDetails.mIndex);
        b.c(parcel, 3, textDeletedDetails.RL);
        b.H(parcel, n);
    }

    public TextDeletedDetails bc(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        int n3 = 0;
        int n4 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block5;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block5;
                }
                case 2: {
                    n3 = a.g(parcel, n5);
                    continue block5;
                }
                case 3: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new TextDeletedDetails(n4, n3, n);
    }

    public TextDeletedDetails[] cp(int n) {
        return new TextDeletedDetails[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bc(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cp(n);
    }
}

