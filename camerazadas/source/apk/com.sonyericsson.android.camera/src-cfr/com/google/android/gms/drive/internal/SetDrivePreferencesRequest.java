/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DrivePreferences;
import com.google.android.gms.drive.internal.az;

public class SetDrivePreferencesRequest
implements SafeParcelable {
    public static final Parcelable.Creator<SetDrivePreferencesRequest> CREATOR = new az();
    final int BR;
    final DrivePreferences Pr;

    SetDrivePreferencesRequest(int n, DrivePreferences drivePreferences) {
        this.BR = n;
        this.Pr = drivePreferences;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        az.a(this, parcel, n);
    }
}

