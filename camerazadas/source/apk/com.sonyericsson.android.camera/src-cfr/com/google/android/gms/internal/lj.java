/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.internal.li;

public class lj
implements Parcelable.Creator<li> {
    static void a(li li, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, li.getDataSource(), n, false);
        b.c(parcel, 1000, li.getVersionCode());
        b.H(parcel, n2);
    }

    public li bz(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        DataSource dataSource = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    dataSource = a.a(parcel, n3, DataSource.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new li(n2, dataSource);
    }

    public li[] cQ(int n) {
        return new li[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bz(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cQ(n);
    }
}

