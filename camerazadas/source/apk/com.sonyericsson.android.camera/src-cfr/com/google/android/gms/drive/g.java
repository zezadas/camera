/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.StorageStats;

public class g
implements Parcelable.Creator<StorageStats> {
    static void a(StorageStats storageStats, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, storageStats.BR);
        b.a(parcel, 2, storageStats.NB);
        b.a(parcel, 3, storageStats.NC);
        b.a(parcel, 4, storageStats.ND);
        b.a(parcel, 5, storageStats.NE);
        b.c(parcel, 6, storageStats.NF);
        b.H(parcel, n);
    }

    public StorageStats R(Parcel parcel) {
        int n = 0;
        long l = 0;
        int n2 = a.C(parcel);
        long l2 = 0;
        long l3 = 0;
        long l4 = 0;
        int n3 = 0;
        block8 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block8;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block8;
                }
                case 2: {
                    l4 = a.i(parcel, n4);
                    continue block8;
                }
                case 3: {
                    l3 = a.i(parcel, n4);
                    continue block8;
                }
                case 4: {
                    l2 = a.i(parcel, n4);
                    continue block8;
                }
                case 5: {
                    l = a.i(parcel, n4);
                    continue block8;
                }
                case 6: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new StorageStats(n3, l4, l3, l2, l, n);
    }

    public StorageStats[] aY(int n) {
        return new StorageStats[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.R(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aY(n);
    }
}

