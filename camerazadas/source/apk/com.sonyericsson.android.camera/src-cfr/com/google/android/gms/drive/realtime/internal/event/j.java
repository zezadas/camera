/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.event.ValuesSetDetails;

public class j
implements Parcelable.Creator<ValuesSetDetails> {
    static void a(ValuesSetDetails valuesSetDetails, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, valuesSetDetails.BR);
        b.c(parcel, 2, valuesSetDetails.mIndex);
        b.c(parcel, 3, valuesSetDetails.Rr);
        b.c(parcel, 4, valuesSetDetails.Rs);
        b.H(parcel, n);
    }

    public ValuesSetDetails bh(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block6;
                }
                case 1: {
                    n5 = a.g(parcel, n6);
                    continue block6;
                }
                case 2: {
                    n4 = a.g(parcel, n6);
                    continue block6;
                }
                case 3: {
                    n3 = a.g(parcel, n6);
                    continue block6;
                }
                case 4: 
            }
            n = a.g(parcel, n6);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ValuesSetDetails(n5, n4, n3, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bh(parcel);
    }

    public ValuesSetDetails[] cu(int n) {
        return new ValuesSetDetails[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cu(n);
    }
}

