/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.RawDataPoint;
import com.google.android.gms.fitness.data.RawDataSet;
import java.util.ArrayList;
import java.util.List;

public class o
implements Parcelable.Creator<RawDataSet> {
    static void a(RawDataSet rawDataSet, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, rawDataSet.Tm);
        b.c(parcel, 1000, rawDataSet.BR);
        b.c(parcel, 2, rawDataSet.To);
        b.c(parcel, 3, rawDataSet.Tp, false);
        b.a(parcel, 4, rawDataSet.SF);
        b.H(parcel, n);
    }

    public RawDataSet bt(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        ArrayList<RawDataPoint> arrayList = null;
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        block7 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block7;
                }
                case 1: {
                    n3 = a.g(parcel, n5);
                    continue block7;
                }
                case 1000: {
                    n4 = a.g(parcel, n5);
                    continue block7;
                }
                case 2: {
                    n2 = a.g(parcel, n5);
                    continue block7;
                }
                case 3: {
                    arrayList = a.c(parcel, n5, RawDataPoint.CREATOR);
                    continue block7;
                }
                case 4: 
            }
            bl = a.c(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new RawDataSet(n4, n3, n2, arrayList, bl);
    }

    public RawDataSet[] cJ(int n) {
        return new RawDataSet[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bt(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cJ(n);
    }
}

