/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.ar;
import java.util.List;

public class OnResourceIdSetResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnResourceIdSetResponse> CREATOR = new ar();
    private final int BR;
    private final List<String> Oc;

    OnResourceIdSetResponse(int n, List<String> list) {
        this.BR = n;
        this.Oc = list;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public List<String> hX() {
        return this.Oc;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ar.a(this, parcel, n);
    }
}

