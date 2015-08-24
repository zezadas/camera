/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Device;
import com.google.android.gms.fitness.data.a;

public class g
implements Parcelable.Creator<DataSource> {
    static void a(DataSource dataSource, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, dataSource.getDataType(), n, false);
        b.c(parcel, 1000, dataSource.getVersionCode());
        b.a(parcel, 2, dataSource.getName(), false);
        b.c(parcel, 3, dataSource.getType());
        b.a(parcel, 4, dataSource.getDevice(), n, false);
        b.a(parcel, 5, dataSource.iM(), n, false);
        b.a(parcel, 6, dataSource.getStreamName(), false);
        b.a(parcel, 7, dataSource.iO());
        b.H(parcel, n2);
    }

    public DataSource bn(Parcel parcel) {
        boolean bl = false;
        String string = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        a a = null;
        Device device = null;
        int n2 = 0;
        String string2 = null;
        DataType dataType = null;
        int n3 = 0;
        block10 : while (parcel.dataPosition() < n) {
            int n4 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n4)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n4);
                    continue block10;
                }
                case 1: {
                    dataType = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, DataType.CREATOR);
                    continue block10;
                }
                case 1000: {
                    n3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block10;
                }
                case 2: {
                    string2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block10;
                }
                case 3: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block10;
                }
                case 4: {
                    device = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, Device.CREATOR);
                    continue block10;
                }
                case 5: {
                    a = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, a.CREATOR);
                    continue block10;
                }
                case 6: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block10;
                }
                case 7: 
            }
            bl = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new DataSource(n3, dataType, string2, n2, device, a, string, bl);
    }

    public DataSource[] cD(int n) {
        return new DataSource[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bn(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cD(n);
    }
}

