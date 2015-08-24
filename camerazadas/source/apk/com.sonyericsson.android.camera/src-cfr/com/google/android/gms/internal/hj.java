/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.hi;
import com.google.android.gms.internal.hq;
import com.google.android.gms.internal.hr;

public class hj
implements Parcelable.Creator<hi> {
    static void a(hi hi, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, hi.Ce, false);
        b.c(parcel, 1000, hi.BR);
        b.a(parcel, 3, hi.Cf, n, false);
        b.c(parcel, 4, hi.Cg);
        b.a(parcel, 5, hi.Ch, false);
        b.H(parcel, n2);
    }

    public hi[] K(int n) {
        return new hi[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.n(parcel);
    }

    public hi n(Parcel parcel) {
        Object object = null;
        int n = a.C(parcel);
        int n2 = 0;
        int n3 = -1;
        hq hq = null;
        String string = null;
        block7 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block7;
                }
                case 1: {
                    string = a.o(parcel, n4);
                    continue block7;
                }
                case 1000: {
                    n2 = a.g(parcel, n4);
                    continue block7;
                }
                case 3: {
                    hq = (hq)a.a(parcel, n4, hq.CREATOR);
                    continue block7;
                }
                case 4: {
                    n3 = a.g(parcel, n4);
                    continue block7;
                }
                case 5: 
            }
            object = a.r(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new hi(n2, string, hq, n3, (byte[])object);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.K(n);
    }
}

