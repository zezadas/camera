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
import com.google.android.gms.fitness.data.Subscription;

public class s
implements Parcelable.Creator<Subscription> {
    static void a(Subscription subscription, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, subscription.getDataSource(), n, false);
        b.c(parcel, 1000, subscription.getVersionCode());
        b.a(parcel, 2, subscription.getDataType(), n, false);
        b.a(parcel, 3, subscription.iX());
        b.c(parcel, 4, subscription.getAccuracyMode());
        b.H(parcel, n2);
    }

    public Subscription bw(Parcel parcel) {
        DataType dataType = null;
        int n = 0;
        int n2 = a.C(parcel);
        long l = 0;
        DataSource dataSource = null;
        int n3 = 0;
        block7 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block7;
                }
                case 1: {
                    dataSource = a.a(parcel, n4, DataSource.CREATOR);
                    continue block7;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block7;
                }
                case 2: {
                    dataType = a.a(parcel, n4, DataType.CREATOR);
                    continue block7;
                }
                case 3: {
                    l = a.i(parcel, n4);
                    continue block7;
                }
                case 4: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new Subscription(n3, dataSource, dataType, l, n);
    }

    public Subscription[] cN(int n) {
        return new Subscription[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bw(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cN(n);
    }
}

