/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.jm;
import com.google.android.gms.internal.jn;
import com.google.android.gms.internal.jp;

public class jq
implements Parcelable.Creator<jp> {
    static void a(jp jp, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, jp.getVersionCode());
        b.a(parcel, 2, jp.hx(), false);
        b.a(parcel, 3, jp.hy(), n, false);
        b.H(parcel, n2);
    }

    public jp M(Parcel parcel) {
        jm jm = null;
        int n = a.C(parcel);
        int n2 = 0;
        Parcel parcel2 = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    parcel2 = a.D(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            jm = (jm)a.a(parcel, n3, jm.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new jp(n2, parcel2, jm);
    }

    public jp[] aM(int n) {
        return new jp[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.M(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aM(n);
    }
}

