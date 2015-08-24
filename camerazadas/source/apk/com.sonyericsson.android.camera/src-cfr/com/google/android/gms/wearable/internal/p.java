/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.q;

public class p
implements SafeParcelable {
    public static final Parcelable.Creator<p> CREATOR = new q();
    public final int avw;
    public final int statusCode;
    public final int versionCode;

    p(int n, int n2, int n3) {
        this.versionCode = n;
        this.statusCode = n2;
        this.avw = n3;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        q.a(this, parcel, n);
    }
}

