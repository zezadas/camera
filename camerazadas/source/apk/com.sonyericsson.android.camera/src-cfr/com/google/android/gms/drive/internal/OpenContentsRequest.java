/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.au;

public class OpenContentsRequest
implements SafeParcelable {
    public static final Parcelable.Creator<OpenContentsRequest> CREATOR = new au();
    final int BR;
    final int MV;
    final DriveId Od;
    final int Px;

    OpenContentsRequest(int n, DriveId driveId, int n2, int n3) {
        this.BR = n;
        this.Od = driveId;
        this.MV = n2;
        this.Px = n3;
    }

    public OpenContentsRequest(DriveId driveId, int n, int n2) {
        this(1, driveId, n, n2);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        au.a(this, parcel, n);
    }
}

