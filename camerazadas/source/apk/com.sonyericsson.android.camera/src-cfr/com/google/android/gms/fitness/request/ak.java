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
import com.google.android.gms.fitness.request.aj;

public class ak
implements Parcelable.Creator<aj> {
    static void a(aj aj, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, aj.getDataType(), n, false);
        b.c(parcel, 1000, aj.getVersionCode());
        b.a(parcel, 2, aj.getDataSource(), n, false);
        b.H(parcel, n2);
    }

    public aj bU(Parcel parcel) {
        DataSource dataSource = null;
        int n = a.C(parcel);
        int n2 = 0;
        DataType dataType = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    dataType = a.a(parcel, n3, DataType.CREATOR);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            dataSource = a.a(parcel, n3, DataSource.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new aj(n2, dataType, dataSource);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bU(parcel);
    }

    public aj[] dm(int n) {
        return new aj[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dm(n);
    }
}

