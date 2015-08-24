/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.ag;

public class LoadRealtimeRequest
implements SafeParcelable {
    public static final Parcelable.Creator<LoadRealtimeRequest> CREATOR = new ag();
    final int BR;
    final DriveId MW;
    final boolean Pk;

    LoadRealtimeRequest(int n, DriveId driveId, boolean bl) {
        this.BR = n;
        this.MW = driveId;
        this.Pk = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ag.a(this, parcel, n);
    }
}

