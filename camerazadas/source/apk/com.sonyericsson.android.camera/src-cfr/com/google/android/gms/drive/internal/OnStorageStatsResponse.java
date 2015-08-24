/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.StorageStats;
import com.google.android.gms.drive.internal.as;

public class OnStorageStatsResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnStorageStatsResponse> CREATOR = new as();
    final int BR;
    StorageStats Pw;

    OnStorageStatsResponse(int n, StorageStats storageStats) {
        this.BR = n;
        this.Pw = storageStats;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        as.a(this, parcel, n);
    }
}

