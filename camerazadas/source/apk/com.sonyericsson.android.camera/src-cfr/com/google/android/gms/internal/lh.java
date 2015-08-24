/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.lg;
import java.util.ArrayList;
import java.util.List;

public class lh
implements Parcelable.Creator<lg> {
    static void a(lg lg, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, lg.getDataTypes(), false);
        b.c(parcel, 1000, lg.getVersionCode());
        b.H(parcel, n);
    }

    public lg by(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<DataType> arrayList = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    arrayList = a.c(parcel, n3, DataType.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new lg(n2, arrayList);
    }

    public lg[] cP(int n) {
        return new lg[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.by(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cP(n);
    }
}

