/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.DataReadRequest;
import java.util.ArrayList;
import java.util.List;

public class g
implements Parcelable.Creator<DataReadRequest> {
    static void a(DataReadRequest dataReadRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, dataReadRequest.getDataTypes(), false);
        b.c(parcel, 1000, dataReadRequest.getVersionCode());
        b.c(parcel, 2, dataReadRequest.getDataSources(), false);
        b.a(parcel, 3, dataReadRequest.iD());
        b.a(parcel, 4, dataReadRequest.iE());
        b.c(parcel, 5, dataReadRequest.getAggregatedDataTypes(), false);
        b.c(parcel, 6, dataReadRequest.getAggregatedDataSources(), false);
        b.c(parcel, 7, dataReadRequest.getBucketType());
        b.a(parcel, 8, dataReadRequest.jn());
        b.a(parcel, 9, dataReadRequest.getActivityDataSource(), n, false);
        b.c(parcel, 10, dataReadRequest.getLimit());
        b.a(parcel, 11, dataReadRequest.jk());
        b.a(parcel, 12, dataReadRequest.jm());
        b.a(parcel, 13, dataReadRequest.jl());
        b.H(parcel, n2);
    }

    public DataReadRequest bD(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<DataType> arrayList = null;
        ArrayList<DataSource> arrayList2 = null;
        long l = 0;
        long l2 = 0;
        ArrayList<DataType> arrayList3 = null;
        ArrayList<DataSource> arrayList4 = null;
        int n3 = 0;
        long l3 = 0;
        DataSource dataSource = null;
        int n4 = 0;
        boolean bl = false;
        boolean bl2 = false;
        boolean bl3 = false;
        block16 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block16;
                }
                case 1: {
                    arrayList = a.c(parcel, n5, DataType.CREATOR);
                    continue block16;
                }
                case 1000: {
                    n2 = a.g(parcel, n5);
                    continue block16;
                }
                case 2: {
                    arrayList2 = a.c(parcel, n5, DataSource.CREATOR);
                    continue block16;
                }
                case 3: {
                    l = a.i(parcel, n5);
                    continue block16;
                }
                case 4: {
                    l2 = a.i(parcel, n5);
                    continue block16;
                }
                case 5: {
                    arrayList3 = a.c(parcel, n5, DataType.CREATOR);
                    continue block16;
                }
                case 6: {
                    arrayList4 = a.c(parcel, n5, DataSource.CREATOR);
                    continue block16;
                }
                case 7: {
                    n3 = a.g(parcel, n5);
                    continue block16;
                }
                case 8: {
                    l3 = a.i(parcel, n5);
                    continue block16;
                }
                case 9: {
                    dataSource = a.a(parcel, n5, DataSource.CREATOR);
                    continue block16;
                }
                case 10: {
                    n4 = a.g(parcel, n5);
                    continue block16;
                }
                case 11: {
                    bl = a.c(parcel, n5);
                    continue block16;
                }
                case 12: {
                    bl2 = a.c(parcel, n5);
                    continue block16;
                }
                case 13: 
            }
            bl3 = a.c(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new DataReadRequest(n2, arrayList, arrayList2, l, l2, arrayList3, arrayList4, n3, l3, dataSource, n4, bl, bl2, bl3);
    }

    public DataReadRequest[] cU(int n) {
        return new DataReadRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bD(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cU(n);
    }
}

