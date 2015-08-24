/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import java.util.ArrayList;
import java.util.List;

public class h
implements Parcelable.Creator<DataSourcesRequest> {
    static void a(DataSourcesRequest dataSourcesRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, dataSourcesRequest.getDataTypes(), false);
        b.c(parcel, 1000, dataSourcesRequest.getVersionCode());
        b.a(parcel, 2, dataSourcesRequest.jp(), false);
        b.a(parcel, 3, dataSourcesRequest.jo());
        b.H(parcel, n);
    }

    public DataSourcesRequest bE(Parcel parcel) {
        ArrayList<Integer> arrayList = null;
        boolean bl = false;
        int n = a.C(parcel);
        ArrayList<DataType> arrayList2 = null;
        int n2 = 0;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    arrayList2 = a.c(parcel, n3, DataType.CREATOR);
                    continue block6;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    arrayList = a.B(parcel, n3);
                    continue block6;
                }
                case 3: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new DataSourcesRequest(n2, arrayList2, arrayList, bl);
    }

    public DataSourcesRequest[] cV(int n) {
        return new DataSourcesRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bE(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cV(n);
    }
}

