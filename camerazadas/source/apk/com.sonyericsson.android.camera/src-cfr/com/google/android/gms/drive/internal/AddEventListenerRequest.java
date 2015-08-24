/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.a;

public class AddEventListenerRequest
implements SafeParcelable {
    public static final Parcelable.Creator<AddEventListenerRequest> CREATOR = new a();
    final int BR;
    final DriveId MW;
    final int Oa;

    AddEventListenerRequest(int n, DriveId driveId, int n2) {
        this.BR = n;
        this.MW = driveId;
        this.Oa = n2;
    }

    public AddEventListenerRequest(DriveId driveId, int n) {
        this(1, driveId, n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }
}

