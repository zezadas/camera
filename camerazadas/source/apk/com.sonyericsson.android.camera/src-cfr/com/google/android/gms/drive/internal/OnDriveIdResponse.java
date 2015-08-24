/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.ak;

public class OnDriveIdResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnDriveIdResponse> CREATOR = new ak();
    final int BR;
    DriveId Od;

    OnDriveIdResponse(int n, DriveId driveId) {
        this.BR = n;
        this.Od = driveId;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public DriveId getDriveId() {
        return this.Od;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ak.a(this, parcel, n);
    }
}

