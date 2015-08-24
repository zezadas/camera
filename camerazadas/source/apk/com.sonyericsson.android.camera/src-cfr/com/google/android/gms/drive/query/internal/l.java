/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.query.internal.Operator;

public class l
implements Parcelable.Creator<Operator> {
    static void a(Operator operator, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1000, operator.BR);
        b.a(parcel, 1, operator.mTag, false);
        b.H(parcel, n);
    }

    public Operator aT(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 1: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new Operator(n2, string);
    }

    public Operator[] cf(int n) {
        return new Operator[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aT(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cf(n);
    }
}

