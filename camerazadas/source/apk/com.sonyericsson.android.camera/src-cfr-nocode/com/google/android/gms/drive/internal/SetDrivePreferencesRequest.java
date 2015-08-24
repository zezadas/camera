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
public class SetDrivePreferencesRequest
implements SafeParcelable {
    public static final Parcelable.Creator<SetDrivePreferencesRequest> CREATOR;
    final int BR;
    final DrivePreferences Pr;

    static;

    SetDrivePreferencesRequest(int var1, DrivePreferences var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

