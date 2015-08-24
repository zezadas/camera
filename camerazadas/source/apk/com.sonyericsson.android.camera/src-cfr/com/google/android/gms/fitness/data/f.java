/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawDataPoint;
import java.util.ArrayList;
import java.util.List;

public class f
implements Parcelable.Creator<DataSet> {
    static void a(DataSet dataSet, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, dataSet.getDataSource(), n, false);
        b.c(parcel, 1000, dataSet.getVersionCode());
        b.a(parcel, 2, dataSet.getDataType(), n, false);
        b.d(parcel, 3, dataSet.iK(), false);
        b.c(parcel, 4, dataSet.iL(), false);
        b.a(parcel, 5, dataSet.iC());
        b.H(parcel, n2);
    }

    public DataSet bm(Parcel parcel) {
        boolean bl = false;
        ArrayList<DataSource> arrayList = null;
        int n = a.C(parcel);
        ArrayList<RawDataPoint> arrayList2 = new ArrayList<RawDataPoint>();
        DataType dataType = null;
        DataSource dataSource = null;
        int n2 = 0;
        block8 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block8;
                }
                case 1: {
                    dataSource = a.a(parcel, n3, DataSource.CREATOR);
                    continue block8;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block8;
                }
                case 2: {
                    dataType = a.a(parcel, n3, DataType.CREATOR);
                    continue block8;
                }
                case 3: {
                    a.a(parcel, n3, arrayList2, this.getClass().getClassLoader());
                    continue block8;
                }
                case 4: {
                    arrayList = a.c(parcel, n3, DataSource.CREATOR);
                    continue block8;
                }
                case 5: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new DataSet(n2, dataSource, dataType, arrayList2, arrayList, bl);
    }

    public DataSet[] cC(int n) {
        return new DataSet[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bm(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cC(n);
    }
}

