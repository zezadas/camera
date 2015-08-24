/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.at;

public class OnSyncMoreResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnSyncMoreResponse> CREATOR = new at();
    final int BR;
    final boolean Oz;

    OnSyncMoreResponse(int n, boolean bl) {
        this.BR = n;
        this.Oz = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        at.a(this, parcel, n);
    }
}

