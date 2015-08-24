/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.ay;

public class RemoveEventListenerRequest
implements SafeParcelable {
    public static final Parcelable.Creator<RemoveEventListenerRequest> CREATOR = new ay();
    final int BR;
    final DriveId MW;
    final int Oa;

    RemoveEventListenerRequest(int n, DriveId driveId, int n2) {
        this.BR = n;
        this.MW = driveId;
        this.Oa = n2;
    }

    public RemoveEventListenerRequest(DriveId driveId, int n) {
        this(1, driveId, n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ay.a(this, parcel, n);
    }
}

