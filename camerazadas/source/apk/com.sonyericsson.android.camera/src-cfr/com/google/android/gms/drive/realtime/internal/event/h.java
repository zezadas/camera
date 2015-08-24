/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.event.ValuesAddedDetails;

public class h
implements Parcelable.Creator<ValuesAddedDetails> {
    static void a(ValuesAddedDetails valuesAddedDetails, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, valuesAddedDetails.BR);
        b.c(parcel, 2, valuesAddedDetails.mIndex);
        b.c(parcel, 3, valuesAddedDetails.Rr);
        b.c(parcel, 4, valuesAddedDetails.Rs);
        b.a(parcel, 5, valuesAddedDetails.RN, false);
        b.c(parcel, 6, valuesAddedDetails.RO);
        b.H(parcel, n);
    }

    public ValuesAddedDetails bf(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        String string = null;
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        int n6 = 0;
        block8 : while (parcel.dataPosition() < n2) {
            int n7 = a.B(parcel);
            switch (a.aD(n7)) {
                default: {
                    a.b(parcel, n7);
                    continue block8;
                }
                case 1: {
                    n6 = a.g(parcel, n7);
                    continue block8;
                }
                case 2: {
                    n5 = a.g(parcel, n7);
                    continue block8;
                }
                case 3: {
                    n4 = a.g(parcel, n7);
                    continue block8;
                }
                case 4: {
                    n3 = a.g(parcel, n7);
                    continue block8;
                }
                case 5: {
                    string = a.o(parcel, n7);
                    continue block8;
                }
                case 6: 
            }
            n = a.g(parcel, n7);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ValuesAddedDetails(n6, n5, n4, n3, string, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bf(parcel);
    }

    public ValuesAddedDetails[] cs(int n) {
        return new ValuesAddedDetails[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cs(n);
    }
}

