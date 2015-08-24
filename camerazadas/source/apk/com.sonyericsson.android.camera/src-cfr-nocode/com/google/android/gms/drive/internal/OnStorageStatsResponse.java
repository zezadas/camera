/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.StorageStats;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OnStorageStatsResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnStorageStatsResponse> CREATOR;
    final int BR;
    StorageStats Pw;

    static;

    OnStorageStatsResponse(int var1, StorageStats var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

