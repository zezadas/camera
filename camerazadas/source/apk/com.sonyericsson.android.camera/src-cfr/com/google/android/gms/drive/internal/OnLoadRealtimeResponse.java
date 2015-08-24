/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.aq;

public class OnLoadRealtimeResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnLoadRealtimeResponse> CREATOR = new aq();
    final int BR;
    final boolean vR;

    OnLoadRealtimeResponse(int n, boolean bl) {
        this.BR = n;
        this.vR = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        aq.a(this, parcel, n);
    }
}

