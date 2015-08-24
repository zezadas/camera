/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.result.DataReadResult;
import java.util.ArrayList;
import java.util.List;

/*
 * Illegal identifiers - consider using --renameillegalidents true
 */
public class b
implements Parcelable.Creator<DataReadResult> {
    static void a(DataReadResult dataReadResult, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, dataReadResult.jJ(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1000, dataReadResult.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, dataReadResult.getStatus(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 3, dataReadResult.jI(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 5, dataReadResult.jH());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 6, dataReadResult.iL(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 7, dataReadResult.jK(), false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    public DataReadResult bW(Parcel parcel) {
        int n = 0;
        ArrayList<DataType> arrayList = null;
        int n2 = a.C(parcel);
        ArrayList<RawDataSet> arrayList2 = new ArrayList<RawDataSet>();
        ArrayList<RawBucket> arrayList3 = new ArrayList<RawBucket>();
        ArrayList<DataSource> arrayList4 = null;
        Status status = null;
        int n3 = 0;
        block9 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block9;
                }
                case 1: {
                    a.a(parcel, n4, arrayList2, this.getClass().getClassLoader());
                    continue block9;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block9;
                }
                case 2: {
                    status = (Status)a.a(parcel, n4, Status.CREATOR);
                    continue block9;
                }
                case 3: {
                    a.a(parcel, n4, arrayList3, this.getClass().getClassLoader());
                    continue block9;
                }
                case 5: {
                    n = a.g(parcel, n4);
                    continue block9;
                }
                case 6: {
                    arrayList4 = a.c(parcel, n4, DataSource.CREATOR);
                    continue block9;
                }
                case 7: 
            }
            arrayList = a.c(parcel, n4, DataType.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new DataReadResult(n3, arrayList2, status, arrayList3, n, arrayList4, arrayList);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bW(parcel);
    }

    public DataReadResult[] do(int n) {
        return new DataReadResult[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.do(n);
    }
}

