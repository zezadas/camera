/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.ba;
import java.util.List;

public class SetResourceParentsRequest
implements SafeParcelable {
    public static final Parcelable.Creator<SetResourceParentsRequest> CREATOR = new ba();
    final int BR;
    final List<DriveId> PA;
    final DriveId Pz;

    SetResourceParentsRequest(int n, DriveId driveId, List<DriveId> list) {
        this.BR = n;
        this.Pz = driveId;
        this.PA = list;
    }

    public SetResourceParentsRequest(DriveId driveId, List<DriveId> list) {
        this(1, driveId, list);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ba.a(this, parcel, n);
    }
}

