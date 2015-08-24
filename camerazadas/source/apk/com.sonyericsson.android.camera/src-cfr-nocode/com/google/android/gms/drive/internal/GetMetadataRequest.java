/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GetMetadataRequest
implements SafeParcelable {
    public static final Parcelable.Creator<GetMetadataRequest> CREATOR;
    final int BR;
    final DriveId Od;

    static;

    GetMetadataRequest(int var1, DriveId var2);

    public GetMetadataRequest(DriveId var1);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

