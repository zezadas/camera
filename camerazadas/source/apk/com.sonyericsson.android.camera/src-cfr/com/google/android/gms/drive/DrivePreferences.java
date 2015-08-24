/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.d;

public class DrivePreferences
implements SafeParcelable {
    public static final Parcelable.Creator<DrivePreferences> CREATOR = new d();
    final int BR;
    final boolean Nm;

    DrivePreferences(int n, boolean bl) {
        this.BR = n;
        this.Nm = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        d.a(this, parcel, n);
    }
}

