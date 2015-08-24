/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.a;

public class BeginCompoundOperationRequest
implements SafeParcelable {
    public static final Parcelable.Creator<BeginCompoundOperationRequest> CREATOR = new a();
    final int BR;
    final boolean Ri;
    final boolean Rj;
    final String mName;

    BeginCompoundOperationRequest(int n, boolean bl, String string, boolean bl2) {
        this.BR = n;
        this.Ri = bl;
        this.mName = string;
        this.Rj = bl2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }
}

