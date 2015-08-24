/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.aa;

public class GetMetadataRequest
implements SafeParcelable {
    public static final Parcelable.Creator<GetMetadataRequest> CREATOR = new aa();
    final int BR;
    final DriveId Od;

    GetMetadataRequest(int n, DriveId driveId) {
        this.BR = n;
        this.Od = driveId;
    }

    public GetMetadataRequest(DriveId driveId) {
        this(1, driveId);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        aa.a(this, parcel, n);
    }
}

