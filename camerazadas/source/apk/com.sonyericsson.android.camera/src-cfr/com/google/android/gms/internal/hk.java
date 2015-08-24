/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;

public class hk
implements SafeParcelable {
    public static final hl CREATOR = new hl();
    final int BR;
    final Bundle Ci;
    public final int id;

    hk(int n, int n2, Bundle bundle) {
        this.BR = n;
        this.id = n2;
        this.Ci = bundle;
    }

    @Override
    public int describeContents() {
        hl hl = CREATOR;
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        hl hl = CREATOR;
        hl.a(this, parcel, n);
    }
}

