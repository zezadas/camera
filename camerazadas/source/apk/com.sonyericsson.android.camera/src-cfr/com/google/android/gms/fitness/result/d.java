/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.result.DataTypeResult;

public class d
implements Parcelable.Creator<DataTypeResult> {
    static void a(DataTypeResult dataTypeResult, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, dataTypeResult.getStatus(), n, false);
        b.c(parcel, 1000, dataTypeResult.getVersionCode());
        b.a(parcel, 3, dataTypeResult.getDataType(), n, false);
        b.H(parcel, n2);
    }

    public DataTypeResult bY(Parcel parcel) {
        DataType dataType = null;
        int n = a.C(parcel);
        int n2 = 0;
        Status status = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    status = (Status)a.a(parcel, n3, Status.CREATOR);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            dataType = a.a(parcel, n3, DataType.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new DataTypeResult(n2, status, dataType);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bY(parcel);
    }

    public DataTypeResult[] dq(int n) {
        return new DataTypeResult[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dq(n);
    }
}

