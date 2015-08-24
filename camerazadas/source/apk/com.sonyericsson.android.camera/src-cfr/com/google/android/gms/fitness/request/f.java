/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.request.e;

public class f
implements Parcelable.Creator<e> {
    static void a(e e, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, e.iW(), n, false);
        b.c(parcel, 1000, e.getVersionCode());
        b.H(parcel, n2);
    }

    public e bC(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        DataSet dataSet = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    dataSet = a.a(parcel, n3, DataSet.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new e(n2, dataSet);
    }

    public e[] cT(int n) {
        return new e[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bC(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cT(n);
    }
}

