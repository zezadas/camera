/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.event.ValuesRemovedDetails;

public class i
implements Parcelable.Creator<ValuesRemovedDetails> {
    static void a(ValuesRemovedDetails valuesRemovedDetails, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, valuesRemovedDetails.BR);
        b.c(parcel, 2, valuesRemovedDetails.mIndex);
        b.c(parcel, 3, valuesRemovedDetails.Rr);
        b.c(parcel, 4, valuesRemovedDetails.Rs);
        b.a(parcel, 5, valuesRemovedDetails.RP, false);
        b.c(parcel, 6, valuesRemovedDetails.RQ);
        b.H(parcel, n);
    }

    public ValuesRemovedDetails bg(Parcel parcel) {
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
        return new ValuesRemovedDetails(n6, n5, n4, n3, string, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bg(parcel);
    }

    public ValuesRemovedDetails[] ct(int n) {
        return new ValuesRemovedDetails[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ct(n);
    }
}

