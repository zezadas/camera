/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DrivePreferences;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OnDrivePreferencesResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnDrivePreferencesResponse> CREATOR;
    final int BR;
    DrivePreferences Pr;

    static;

    OnDrivePreferencesResponse(int var1, DrivePreferences var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

