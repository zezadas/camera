/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.n;

public class DisconnectRequest
implements SafeParcelable {
    public static final Parcelable.Creator<DisconnectRequest> CREATOR = new n();
    final int BR;

    public DisconnectRequest() {
        this(1);
    }

    DisconnectRequest(int n) {
        this.BR = n;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        n.a(this, parcel, n);
    }
}

