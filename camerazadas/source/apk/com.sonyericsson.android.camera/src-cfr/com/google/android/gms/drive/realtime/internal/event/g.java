/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.event.ValueChangedDetails;

public class g
implements Parcelable.Creator<ValueChangedDetails> {
    static void a(ValueChangedDetails valueChangedDetails, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, valueChangedDetails.BR);
        b.c(parcel, 2, valueChangedDetails.RM);
        b.H(parcel, n);
    }

    public ValueChangedDetails be(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        int n3 = 0;
        block4 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block4;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block4;
                }
                case 2: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ValueChangedDetails(n3, n);
    }

    public ValueChangedDetails[] cr(int n) {
        return new ValueChangedDetails[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.be(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cr(n);
    }
}

