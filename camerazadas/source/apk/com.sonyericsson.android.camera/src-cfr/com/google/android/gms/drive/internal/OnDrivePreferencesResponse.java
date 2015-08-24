/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DrivePreferences;
import com.google.android.gms.drive.internal.al;

public class OnDrivePreferencesResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnDrivePreferencesResponse> CREATOR = new al();
    final int BR;
    DrivePreferences Pr;

    OnDrivePreferencesResponse(int n, DrivePreferences drivePreferences) {
        this.BR = n;
        this.Pr = drivePreferences;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        al.a(this, parcel, n);
    }
}

