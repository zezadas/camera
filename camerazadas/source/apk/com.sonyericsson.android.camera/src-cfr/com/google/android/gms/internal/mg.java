/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.mf;
import com.google.android.gms.internal.mp;
import com.google.android.gms.internal.mq;
import java.util.ArrayList;
import java.util.List;

public class mg
implements Parcelable.Creator<mf> {
    static void a(mf mf, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, mf.me());
        b.c(parcel, 1000, mf.BR);
        b.c(parcel, 2, mf.mf(), false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cx(parcel);
    }

    public mf cx(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        ArrayList arrayList = null;
        int n2 = 0;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    bl = a.c(parcel, n3);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            arrayList = a.c(parcel, n3, mp.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new mf(n2, bl, arrayList);
    }

    public mf[] en(int n) {
        return new mf[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.en(n);
    }
}

