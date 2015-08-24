/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.event.ReferenceShiftedDetails;

public class d
implements Parcelable.Creator<ReferenceShiftedDetails> {
    static void a(ReferenceShiftedDetails referenceShiftedDetails, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, referenceShiftedDetails.BR);
        b.a(parcel, 2, referenceShiftedDetails.RH, false);
        b.a(parcel, 3, referenceShiftedDetails.RI, false);
        b.c(parcel, 4, referenceShiftedDetails.RJ);
        b.c(parcel, 5, referenceShiftedDetails.RK);
        b.H(parcel, n);
    }

    public ReferenceShiftedDetails bb(Parcel parcel) {
        String string = null;
        int n = 0;
        int n2 = a.C(parcel);
        int n3 = 0;
        String string2 = null;
        int n4 = 0;
        block7 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block7;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block7;
                }
                case 2: {
                    string2 = a.o(parcel, n5);
                    continue block7;
                }
                case 3: {
                    string = a.o(parcel, n5);
                    continue block7;
                }
                case 4: {
                    n3 = a.g(parcel, n5);
                    continue block7;
                }
                case 5: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ReferenceShiftedDetails(n4, string2, string, n3, n);
    }

    public ReferenceShiftedDetails[] co(int n) {
        return new ReferenceShiftedDetails[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bb(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.co(n);
    }
}

