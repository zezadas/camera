/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.ap;
import com.google.android.gms.wearable.internal.m;

public class ao
implements SafeParcelable {
    public static final Parcelable.Creator<ao> CREATOR = new ap();
    public final m avA;
    public final int statusCode;
    public final int versionCode;

    ao(int n, int n2, m m) {
        this.versionCode = n;
        this.statusCode = n2;
        this.avA = m;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ap.a(this, parcel, n);
    }
}

