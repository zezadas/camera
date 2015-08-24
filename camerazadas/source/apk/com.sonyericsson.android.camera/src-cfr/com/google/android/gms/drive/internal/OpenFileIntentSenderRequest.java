/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.aw;

public class OpenFileIntentSenderRequest
implements SafeParcelable {
    public static final Parcelable.Creator<OpenFileIntentSenderRequest> CREATOR = new aw();
    final int BR;
    final String Nw;
    final String[] Nx;
    final DriveId Ny;

    OpenFileIntentSenderRequest(int n, String string, String[] arrstring, DriveId driveId) {
        this.BR = n;
        this.Nw = string;
        this.Nx = arrstring;
        this.Ny = driveId;
    }

    public OpenFileIntentSenderRequest(String string, String[] arrstring, DriveId driveId) {
        this(1, string, arrstring, driveId);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        aw.a(this, parcel, n);
    }
}

