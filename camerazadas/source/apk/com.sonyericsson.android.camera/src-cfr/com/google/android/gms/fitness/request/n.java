/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.m;

public class n
implements Parcelable.Creator<m> {
    static void a(m m, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, m.getDataType(), n, false);
        b.c(parcel, 1000, m.getVersionCode());
        b.H(parcel, n2);
    }

    public m bH(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        DataType dataType = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    dataType = a.a(parcel, n3, DataType.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new m(n2, dataType);
    }

    public m[] cY(int n) {
        return new m[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bH(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cY(n);
    }
}

