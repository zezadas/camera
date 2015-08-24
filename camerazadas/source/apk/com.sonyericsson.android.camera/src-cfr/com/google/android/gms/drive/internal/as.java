/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.StorageStats;
import com.google.android.gms.drive.internal.OnStorageStatsResponse;

public class as
implements Parcelable.Creator<OnStorageStatsResponse> {
    static void a(OnStorageStatsResponse onStorageStatsResponse, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, onStorageStatsResponse.BR);
        b.a(parcel, 2, onStorageStatsResponse.Pw, n, false);
        b.H(parcel, n2);
    }

    public OnStorageStatsResponse au(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        StorageStats storageStats = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            storageStats = a.a(parcel, n3, StorageStats.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new OnStorageStatsResponse(n2, storageStats);
    }

    public OnStorageStatsResponse[] bG(int n) {
        return new OnStorageStatsResponse[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.au(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bG(n);
    }
}

