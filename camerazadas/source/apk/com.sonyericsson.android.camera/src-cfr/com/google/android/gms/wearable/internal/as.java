/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.at;

public class as
implements SafeParcelable {
    public static final Parcelable.Creator<as> CREATOR = new at();
    public final int avO;
    public final int statusCode;
    public final int versionCode;

    as(int n, int n2, int n3) {
        this.versionCode = n;
        this.statusCode = n2;
        this.avO = n3;
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

