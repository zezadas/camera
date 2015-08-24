/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.Value;

public class e
implements Parcelable.Creator<DataPoint> {
    static void a(DataPoint dataPoint, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, dataPoint.getDataSource(), n, false);
        b.c(parcel, 1000, dataPoint.getVersionCode());
        b.a(parcel, 3, dataPoint.getTimestampNanos());
        b.a(parcel, 4, dataPoint.iJ());
        b.a((Parcel)parcel, (int)5, (Parcelable[])dataPoint.iG(), (int)n, (boolean)false);
        b.a(parcel, 6, dataPoint.getOriginalDataSource(), n, false);
        b.a(parcel, 7, dataPoint.iH());
        b.a(parcel, 8, dataPoint.iI());
        b.H(parcel, n2);
    }

    public DataPoint bl(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        DataSource dataSource = null;
        long l = 0;
        long l2 = 0;
        Value[] arrvalue = null;
        DataSource dataSource2 = null;
        long l3 = 0;
        long l4 = 0;
        block10 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block10;
                }
                case 1: {
                    dataSource = a.a(parcel, n3, DataSource.CREATOR);
                    continue block10;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block10;
                }
                case 3: {
                    l = a.i(parcel, n3);
                    continue block10;
                }
                case 4: {
                    l2 = a.i(parcel, n3);
                    continue block10;
                }
                case 5: {
                    arrvalue = a.b(parcel, n3, Value.CREATOR);
                    continue block10;
                }
                case 6: {
                    dataSource2 = a.a(parcel, n3, DataSource.CREATOR);
                    continue block10;
                }
                case 7: {
                    l3 = a.i(parcel, n3);
                    continue block10;
                }
                case 8: 
            }
            l4 = a.i(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new DataPoint(n2, dataSource, l, l2, arrvalue, dataSource2, l3, l4);
    }

    public DataPoint[] cB(int n) {
        return new DataPoint[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bl(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cB(n);
    }
}

